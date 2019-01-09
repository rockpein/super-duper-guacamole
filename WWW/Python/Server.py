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
connectionUsers = sqlite3.connect("usersDatabase.db")
cUsers = connectionUsers.cursor()
connectionMovies = sqlite3.connect("main_database.db")
cMovies = connectionMovies.cursor()

@app.route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root='./assets')

@app.route('/')
def index():
    return template('base')

@app.route('/SignUp')
def signup():
    return template('pages-signup')

@app.route('/SignIn')
def signin():
    return template('pages-signin')

@app.route('/myMovies')
def mymovies():
    return template('My_movies')

@app.route('/Timeline')
def timeline():
    return template('pages-timeline')

@app.route('/Certificate')
def certificate():
    return template('pages-invoice')

@app.route('/list_of_movies')
def listofmovies():
    cMovies.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c LIMIT 5000")
    result = cMovies.fetchall()
    output = template('list_of_movies', rows=result)
    return output

@app.route('/Top1000')
def top1000():
    cMovies.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE vote_count >500 ORDER BY vote_average DESC LIMIT 1000")
    result = cMovies.fetchall()
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


        cMovies.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE CAST(SUBSTR(release_date,1,4) as int) >= (?) and CAST(SUBSTR(release_date,1,4) as int) < (?)  and vote_count > 100 ORDER BY vote_average DESC LIMIT 100", (int(release_year), (int(release_year)+ 10)))
        result = cMovies.fetchall()
        output = template('top100year', rows=result,date=release_year + " - " + str(int(release_year)+ 9))
        return output

@app.route('/Top100_by_genre')
def top100g():

    genre = request.query.genre
    if genre == "":

        cMovies.execute("SELECT DISTINCT genres FROM movie_database_c")
        query = cMovies.fetchall()
        result = []
        for tup in query:
            result.append(tup[0])
        result.sort()
        output = template('genres_main_page', rows=result)
        return output
    else:
        cMovies.execute("SELECT title, genres, vote_average, vote_count, release_date, adult FROM movie_database_c WHERE genres = (?) and vote_count>1000 ORDER BY vote_average DESC LIMIT 100", (genre,))
        result = cMovies.fetchall()
        output = template('top100genre', rows=result)
        return output

@app.route('/User_Profile')
def user():
    return template('pages-user-profile')

@app.route('/Lock')
def lock():
    return template('pages-lock-screen')

@app.route('/Recovery')
def recovery():
    return template('pages-recover-password')

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
        redirect('/SignIn')
        

def check_login(username,password):
    # Login is "admin", password is "password"
    # To-do: catch exceptions (wrong password, wrong username etc.)
    # lowercase all usernames
    
    cUsers.execute("SELECT password_hash FROM users WHERE username =?", (username,))
    query = cUsers.fetchone()[0]
    passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 

    if passwordHash == query:
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

    cUsers.execute("INSERT INTO users VALUES (?,?,?,?,?)", (None,username,passwordHash,email,None))
    connectionUsers.commit()

app.run(host='localhost', port=8585, debug=True, reloader=True)