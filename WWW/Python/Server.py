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
    return template('list_of_movies')

@app.route('/Top1000')
def top1000():
    return template('top1000')

@app.route('/Top100_by_genre')
def top100g():
    return template('top100genre')

@app.route('/Top100_by_year')
def top100y():
    return template('top100year')

@app.route('/User_Profile')
def user():
    return template('pages-user-profile')

@app.route('/Lock')
def lock():
    return template('pages-lock-screen')

@app.route('/Recovery')
def recovery():
    return template('pages-recover-password')

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