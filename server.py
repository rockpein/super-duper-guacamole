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

# Connecting to database
connection = sqlite3.connect("data/main_database.db")
c = connection.cursor()

@app.route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root='./assets')

@app.route('/')
def index():
    return template('templates/index')

@app.route('/my-movies')
def mymovies():
    addWishlist = request.query.add_wishlist
    removeWishlist = request.query.remove_wishlist
    username_cookie = request.get_cookie("account", secret="guacamole")

    if username_cookie == "":
        redirect('/sign-in')

    if addWishlist != "":
        c.execute("SELECT id FROM movie_database_c WHERE title = (?)", (addWishlist,))
        movie_ID = c.fetchone()

        c.execute("SELECT user_id FROM users WHERE username = (?)", (username_cookie,))
        user_ID = c.fetchone()

        c.execute("SELECT Wishlist_ID FROM Wishlist WHERE Movie_ID = (?) AND User_ID = (?)", (movie_ID[0],user_ID[0]))
        Wishlist_ID = c.fetchone()
        if Wishlist_ID == None:
            c.execute("INSERT INTO Wishlist VALUES (?,?,?)", (None,int(movie_ID[0]),int(user_ID[0])))
            connection.commit()

    if removeWishlist != "":
        c.execute("SELECT id FROM movie_database_c WHERE title = (?)", (removeWishlist,))
        movie_ID = c.fetchone()
        if movie_ID != None:
            c.execute("DELETE FROM Wishlist WHERE Movie_ID = (?)", (movie_ID[0],))
            connection.commit()

    c.execute("SELECT DISTINCT m.title, m.genres, m.vote_average, m.vote_count, m.release_date, m.adult FROM movie_database_c AS m, Wishlist AS w, users AS u JOIN Wishlist movie_database_c ON w.Movie_ID = m.id JOIN Wishlist users ON w.USER_ID = u.user_id WHERE u.username = (?)", (username_cookie,))
    result = c.fetchall()
    output = template('templates/my_movies', rows=result)
    return output

@app.route('/list-of-movies')
def listofmovies():
    c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c LIMIT 5000")
    result = c.fetchall()
    output = template('templates/movie_table', rows=result, title= "All Movies")
    return output

@app.route('/top-1000')
def top1000():
    c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE vote_count >500 ORDER BY vote_average DESC LIMIT 1000")
    result = c.fetchall()
    output = template('templates/movie_table', rows=result, title= "Top 1000 Movies")
    return output

@app.route('/top-100-by-year')
def top100y():
    release_year = request.query.year
    if release_year == "":
        result = [30,40,50,60,70,80,90,"00",10]
        output = template('templates/years_main_page', rows=result)
        return output
    else:
        if release_year == "00" or release_year =="10":
            release_year = "20"+release_year
        else:
            release_year = "19"+release_year
        c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE CAST(SUBSTR(release_date,1,4) as int) >= (?) and CAST(SUBSTR(release_date,1,4) as int) < (?)  and vote_count > 100 ORDER BY vote_average DESC LIMIT 100", (int(release_year), (int(release_year)+ 10)))
        result = c.fetchall()
        output = template('templates/movie_table', rows=result, title= "Top 100 Movies from " + release_year + " to " + str(int(release_year)+ 9))
        return output

@app.route('/top-100-by-genre')
def top100g():
    genre = request.query.genre
    if genre == "":
        c.execute("SELECT DISTINCT genres FROM movie_database_c")
        query = c.fetchall()
        result = []
        for tup in query:
            result.append(tup[0])
        result.sort()
        output = template('templates/genres_main_page', rows=result)
        return output
    else:
        c.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE genres = (?) and vote_count>1000 ORDER BY vote_average DESC LIMIT 100", (genre,))
        result = c.fetchall()
        output = template('templates/movie_table', rows=result, title= "Top 100 Movies by Genre")
        return output

@app.route('/movie')
def single_movie():
    movieTitle = request.query.movie_title
    if movieTitle == "":
        redirect('/')
    else:
        #To-do: size of letters
        c.execute("SELECT poster_path, tagline, title, overview, revenue, budget, vote_average, vote_count, release_date, genres, runtime, [status] FROM movie_database_c WHERE title = (?) LIMIT 1", (movieTitle, ))
        result = c.fetchone()
        output = template('templates/single_movie', data = result)
        return output

@app.route('/user-profile')
def user():
    return template('templates/pages-user-profile')

@app.route('/sign-up')
def signup():
    return template('templates/pages-signup')

@app.route('/sign-in')
def signin():
    wrongPassword = request.query.unsuccessful
    logout = request.query.logout
    if logout != "":
        response.delete_cookie("account")
        redirect('/')
    
    if wrongPassword != "":
        return template('templates/unsuccessful_singin')
    else:
        return template('templates/pages-signin')

################SIGNING IN################
@app.route('/sign-in', method='POST')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('pwd')
    check = check_login(username,password)
    if check == 'ok':
        redirect('/')
    else:
        redirect('/sign-in?unsuccessful=True')   

@app.route('/unsuccessful', method='POST')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('pwd')
    check = check_login(username,password)
    if check == 'ok':
        redirect('/')
    else:
        redirect('/unsuccessful')   

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

################SIGNING UP################
@app.route('/sign-up', method='POST')
def registerUser():
    # To-do: catch exceptions (user registered etc.)
    username = request.forms.get('name')
    email = request.forms.get('email')
    password = request.forms.get('pwd')
    
    passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 
    c.execute("INSERT INTO users VALUES (?,?,?,?,?)", (None,username,passwordHash,email,None))
    connection.commit()

app.run(host='localhost', port=8585, debug=True, reloader=True)