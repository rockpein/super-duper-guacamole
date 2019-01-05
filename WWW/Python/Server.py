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

# Connect to databases
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

#--------- NIE MAM POJECIA JAK TO DZIALA -------------------------
# log = logging.getLogger('bottle')
# log.setLevel('INFO')
# h = logging.handlers.TimedRotatingFileHandler(
#     'logs/nlog', when='midnight', backupCount=9999)
# f = logging.Formatter('%(asctime)s %(levelname)-8s %(message)s')
# h.setFormatter(f)
# log.addHandler(h)

# secretKey = "SDMDSIUDSFYODS&TTFS987f9ds7f8sd6DFOUFYWE&FY"

# def checkAuth():
#     loginName = request.get_cookie("user", secret=secretKey)
#     randStr = request.get_cookie("randStr", secret=secretKey)
#     log.info(str(loginName) + ' ' + request.method + ' ' +
#              request.url + ' ' + request.environ.get('REMOTE_ADDR'))
#     users={"admin":{"name":"python", "password":"datascience", "email":"pythonsql@gmail.com", "loggedIn":False,  "randStr":"", "lastSeen":0}} 
#     if (loginName in users) and (users[loginName].get("randStr", "") == randStr) and (users[loginName]["loggedIn"] == True) and (time.time() - users[loginName]["lastSeen"] < 3600):
#         users[loginName]["lastSeen"] = time.time()
#         return loginName
#     return redirect('/')

# @app.route('/SignIn')
# @app.route('/SignIn/')
# @app.route('/SignIn', method='POST')
# def login():
#     loginName = request.forms.get('username', default=False)
#     password = request.forms.get('pwd', default=False)
#     randStr = ''.join(random.choice(
#         string.ascii_uppercase + string.digits) for _ in range(18))
#     log.info(str(loginName) + ' ' + request.method + ' ' +
#              request.url + ' ' + request.environ.get('REMOTE_ADDR'))
#     users={"admin":{"name":"python", "password":"datascience", "email":"pythonsql@gmail.com", "loggedIn":False,  "randStr":"", "lastSeen":0}} 
#     if (loginName in users) and users[loginName]["pwd"] == password:
#         response.set_cookie("user", loginName, secret=secretKey)
#         response.set_cookie("randStr", randStr, secret=secretKey)
#         users[loginName]["loggedIn"] = True
#         users[loginName]["randStr"] = randStr
#         users[loginName]["lastSeen"] = time.time()
        
#         return True 
#     else:
#         return template('pages-signin')
#     return template('/')    

# @app.route('/')
# @app.route('')
# def check(message=''):
#     loginName = checkAuth()
#     messDict = {'error': "Something went wrong",
#                 'ok': "Everything is ok."}
#     return template('/', message=messDict.get(message, ""), loginName=loginName)
# ------------------------------------------------------------------------------------

#Signing In Simple way
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
    
    cUsers.execute("SELECT password_hash from users WHERE username =?", (username,))
    query = cUsers.fetchone()[0]
    print(query)
    
    passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 
    print(passwordHash)

    if passwordHash == query:
        return 'ok'
    else:
        return 'not valid'


app.run(host='localhost', port=8585, debug=True, reloader=True)