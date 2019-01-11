#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from bottle import Bottle, route, run, template, get, post, debug, static_file, request, redirect, response
import time
import random
import string
import logging
import logging.handlers
import sqlite3
import hashlib

app = Bottle()

# Connecting to databases
connection = sqlite3.connect("main_database.db")
c = connection.cursor()

@app.route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root='./assets')

@app.route('/')
def index():
    return template('index')

@app.route('/SignUp')
def signup():
    return template('pages-signup')

@app.route('/SignIn')
def signin():
    logout = request.query.logout
    if logout != "":
        response.delete_cookie("account")
        redirect('/')
    return template('pages-signin')

@app.route('/myMovies')
def mymovies():
    wishlist = request.query.add_wishlist
    username_cookie = request.get_cookie("account", secret="guacamole")

    if username_cookie == "":
        redirect('/SignIn')

    if wishlist != "":
        c.execute("SELECT id FROM movie_database_c WHERE title = (?)", (wishlist,))
        movie_ID = c.fetchone()

        c.execute("SELECT user_id FROM users WHERE username = (?)", (username_cookie,))
        user_ID = c.fetchone()

        c.execute("SELECT Wishlist_ID FROM Wishlist WHERE Movie_ID = (?) AND User_ID = (?)", (movie_ID[0],user_ID[0]))
        Wishlist_ID = c.fetchone()
        if Wishlist_ID == None:
            c.execute("INSERT INTO Wishlist VALUES (?,?,?)", (None,int(movie_ID[0]),int(user_ID[0])))
            connection.commit()
         
    c.execute("SELECT DISTINCT m.title, m.genres, m.vote_average, m.vote_count, m.release_date, m.adult FROM movie_database_c AS m, Wishlist AS w, users AS u JOIN Wishlist movie_database_c ON w.Movie_ID = m.id JOIN Wishlist users ON w.USER_ID = u.user_id WHERE u.username = (?)", (username_cookie,))
    result = c.fetchall()
    output = template('My_movies', rows=result)
    return output

@app.route('/list_of_movies')
def listofmovies():
    c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c LIMIT 5000")
    result = c.fetchall()
    output = template('list_of_movies', rows=result)
    return output

@app.route('/Top1000')
def top1000():
    c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE vote_count >500 ORDER BY vote_average DESC LIMIT 1000")
    result = c.fetchall()
    output2 = template('top1000', rows=result)
    return output2

@app.route('/Top100_by_year')
def top100y():
    
    release_year = request.query.year
    if release_year == "":

        result = [30,40,50,60,70,80,90,"00",10]
        output = template('years_main_page', rows=result)
        return output
    else:
        if release_year == "00" or release_year =="10":
            release_year = "20"+release_year
        else:
            release_year = "19"+release_year


        c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE CAST(SUBSTR(release_date,1,4) as int) >= (?) and CAST(SUBSTR(release_date,1,4) as int) < (?)  and vote_count > 100 ORDER BY vote_average DESC LIMIT 100", (int(release_year), (int(release_year)+ 10)))
        result = c.fetchall()
        output = template('top100year', rows=result,date=release_year + " - " + str(int(release_year)+ 9))
        return output

@app.route('/Top100_by_genre')
def top100g():

    genre = request.query.genre
    if genre == "":

        c.execute("SELECT DISTINCT genres FROM movie_database_c")
        query = c.fetchall()
        result = []
        for tup in query:
            result.append(tup[0])
        result.sort()
        output = template('genres_main_page', rows=result)
        return output
    else:
        c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE genres = (?) and vote_count>1000 ORDER BY vote_average DESC LIMIT 100", (genre,))
        result = c.fetchall()
        output = template('top100genre', rows=result)
        return output

@app.route('/User_Profile')
def user():
    return template('pages-user-profile')

@app.route('/Unsuccessful')
def incorrect():
    return template('unsuccessful_singin')

@app.route('/Movie')
def single_movie():
    movieTitle = request.query.movie_title
    if movieTitle == "":
        redirect('/')
    else:
        #To-do: size of letters
        c.execute("SELECT poster_path, tagline, title, overview, revenue, budget, vote_average, vote_count, release_date, genres, runtime, [status] FROM movie_database_c WHERE title = (?) LIMIT 1", (movieTitle, ))
        result = c.fetchone()
        output = template('single_movie', data = result)
        return output

#######SINGING IN##############################
#Signing In 
@app.route('/SignIn', method='POST')
def do_login():

    username = request.forms.get('username')
    password = request.forms.get('pwd')
    check = check_login(username,password)
    if check == 'ok':
        redirect('/')
    else:
        redirect('/Unsuccessful')   

@app.route('/Unsuccessful', method='POST')
def do_login():

    username = request.forms.get('username')
    password = request.forms.get('pwd')
    check = check_login(username,password)
    if check == 'ok':
        redirect('/')
    else:
        redirect('/Unsuccessful')   

def check_login(username,password):
    # Login is "admin", password is "password"
    # To-do: catch exceptions (wrong password, wrong username etc.)
    # lowercase all usernames
    
    c.execute("SELECT password_hash FROM users WHERE username =?", (username,))
    
    query = c.fetchone()
    
    if query==None:
        return 'not valid'
    else:
        query = query[0]
        passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 

    if passwordHash == query:
        response.set_cookie("account", username, secret="guacamole")
        return 'ok'
    else:
        return 'not valid'

###########SIGNING UP#########################
@app.route('/SignUp', method='POST')
def registerUser():
    # To-do: catch exceptions (user registered etc.)
    username = request.forms.get('name')
    email = request.forms.get('email')
    password = request.forms.get('pwd')
    passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 

    c.execute("INSERT INTO users VALUES (?,?,?,?,?)", (None,username,passwordHash,email,None))
    connection.commit()

app.run(host='localhost', port=8585, debug=True, reloader=True)