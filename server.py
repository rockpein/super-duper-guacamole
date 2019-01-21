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

# Loading static files
@app.route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root='./assets')

@app.route('/')
def index():
    # Select all genres
    c.execute("SELECT DISTINCT genres FROM movie_database_c")
    genres = c.fetchall()
    adults = ['True', 'False']
    
    output = template('templates/index', genres=genres, adults=adults, title= "Main Page")
    return output

@app.route('/my-movies')
def mymovies():

    # Check if user wants to add or delete from watchlist
    addWishlist = request.query.add_wishlist
    removeWishlist = request.query.remove_wishlist

    # Check if user is logged in
    username_cookie = request.get_cookie("account", secret="guacamole")

    # If user is not logged in redirect to sign in
    if username_cookie == None:
        redirect('/sign-in')

    if addWishlist != "":
        # Select the movie ID 
        c.execute("SELECT id FROM movie_database_c WHERE title = (?)", (addWishlist,))
        movie_ID = c.fetchone()

        # Select the user ID
        c.execute("SELECT user_id FROM users WHERE username = (?)", (username_cookie,))
        user_ID = c.fetchone()

        # Check if movie is already added 
        c.execute("SELECT Wishlist_ID FROM Wishlist WHERE Movie_ID = (?) AND User_ID = (?)", (movie_ID[0],user_ID[0]))
        Wishlist_ID = c.fetchone()
        if Wishlist_ID == None:
            c.execute("INSERT INTO Wishlist VALUES (?,?,?)", (None,int(movie_ID[0]),int(user_ID[0])))
            connection.commit()

    if removeWishlist != "":
        # Select the movie ID 
        c.execute("SELECT id FROM movie_database_c WHERE title = (?)", (removeWishlist,))
        movie_ID = c.fetchone()
        if movie_ID != None:
            c.execute("DELETE FROM Wishlist WHERE Movie_ID = (?)", (movie_ID[0],))
            connection.commit()

    # Select data for the table
    c.execute('''
        SELECT DISTINCT 
                m.title,
                m.genres,
                m.vote_average,
                m.vote_count,
                m.release_date,
                m.adult
        FROM 
            movie_database_c AS m,
            Wishlist AS w,
            users AS u
        JOIN 
            Wishlist movie_database_c 
            ON w.Movie_ID = m.id
        JOIN 
            Wishlist users 
            ON w.USER_ID = u.user_id
        WHERE u.username = (?)''', (username_cookie,))

    result = c.fetchall()
    output = template('templates/my_watchlist', rows=result)
    return output

@app.route('/list-of-movies')
def listofmovies():
    # Select 5000 movie from database
    # We have more, but the page would load very slowly
    # Other queries have acess to the whole database
    c.execute('''
        SELECT 
            title, 
            genres, 
            vote_average, 
            vote_count, 
            release_date, 
            adult 
        FROM 
            movie_database_c 
        LIMIT 5000''')
    result = c.fetchall()
    output = template('templates/movie_table', rows=result, title= "All Movies")
    return output

@app.route('/top-1000')
def top1000():
    # Select top 1000 movies by rating, discard thoes with vote count < 500
    c.execute('''
        SELECT 
            title,
            genres,
            vote_average,
            vote_count,
            release_date,
            adult
        FROM 
            movie_database_c
        WHERE 
            vote_count >500
        ORDER BY 
            vote_average DESC
        LIMIT 1000''')
    result = c.fetchall()
    output = template('templates/movie_table', rows=result, title= "Top 1000 Movies")
    return output

@app.route('/top-100-by-year')
def top100y():
    # Check the get parameter, if null show a list of all possible year periods
    release_year = request.query.year
    if release_year == "":
        result = ["30","40","50","60","70","80","90","00","10"]
        output = template('templates/years_main_page', rows=result)
        return output

    # If the year is returned (eg. as "80"), return a table of movies
    else:

        # Special case for 2000 and 2010
        if release_year == "00" or release_year =="10":
            release_year = "20"+release_year
        else:
            release_year = "19"+release_year

        # Select movies between release_date, and release_date + 10
        c.execute('''
            SELECT 
                title,
                genres,
                vote_average,
                vote_count,
                release_date,
                adult
            FROM 
                movie_database_c
            WHERE 
                CAST(SUBSTR(release_date, 1, 4) AS int) >= (?)
                AND 
                CAST(SUBSTR(release_date, 1, 4) AS int) < (?)
                AND vote_count > 100
            ORDER BY 
                vote_average DESC
            LIMIT 100''', (int(release_year), (int(release_year)+ 10)))

        result = c.fetchall()
        output = template('templates/movie_table', rows=result, title= "Top 100 Movies from " + release_year + " to " + str(int(release_year)+ 9))
        return output

@app.route('/top-100-by-genre')
def top100g():

    # If there in no genre parameter, return all genres
    genre = request.query.genre
    if genre == "":
        c.execute("SELECT DISTINCT genres FROM movie_database_c")
        query = c.fetchall()

        # Convert from a list of touples to a list of strings, and sort
        result = []
        for tup in query:
            result.append(tup[0])
        result.sort()
        output = template('templates/genres_main_page', rows=result)
        return output
    else:
        # If the genre is provided, return a table
        c.execute('''
            SELECT 
                title, 
                genres, 
                vote_average, 
                vote_count, 
                release_date, 
                adult 
            FROM 
                movie_database_c 
            WHERE 
                genres = (?) 
                AND 
                vote_count > 1000 
            ORDER BY
                vote_average DESC 
            LIMIT 100''', (genre,))

        result = c.fetchall()
        output = template('templates/movie_table', rows=result, title= "Top 100 Movies by Genre")
        return output

@app.route('/search')
def search():

    # Check all possible url parameters
    title = request.query.title
    genre = request.query.genre 
    adult = request.query.adult
    rating = request.query.rating
    date = request.query.date

    # Set whole ranges when date and/or rating parameter is not provided
    # When they are provided, set the end values
    if date=="":
        date = 1900
        date_end = 2020
    else:
        date_end = int(date)+20

    if rating=="":
        rating = 0
        rating_end = 10
    else:
        rating_end = int(rating)+2

    # Select movies based on the criteria
    c.execute('''
        SELECT 
            title, 
            genres, 
            vote_average, 
            vote_count, 
            release_date, 
            adult 
        FROM 
            movie_database_c 
        WHERE 
            title LIKE '%' || (?) || '%'
        AND 
            genres LIKE '%' || (?) || '%'
        AND 
            adult LIKE '%' || (?) || '%'
        AND 
            CAST(SUBSTR(release_date,1,4) as int) 
            BETWEEN 
            (?) AND (?)
        AND 
            CAST(SUBSTR(vote_average,1) as int) 
            BETWEEN 
            (?) AND (?)
        LIMIT 1000''',(title,genre,adult,int(date),int(date_end),int(rating),int(rating_end)))

    result = c.fetchall()
    output = template('templates/movie_table', rows=result, title= "Search")
    return output

@app.route('/movie')
def single_movie():
    # Check if the movie parameter was provided. If not, redirect to homepage
    movieTitle = request.query.movie_title
    if movieTitle  == "":
        redirect('/')

    #To-do: size of letters
    c.execute('''
        SELECT 
            poster_path, 
            tagline, 
            title, 
            overview, 
            revenue, 
            budget, 
            vote_average, 
            vote_count, 
            release_date, 
            genres, 
            runtime, 
            [status] 
        FROM 
            movie_database_c 
        WHERE 
            title = (?)
        LIMIT 1''', (movieTitle, ))

    result = c.fetchone()
    output = template('templates/single_movie', data = result)
    return output

@app.route('/user-profile')
def user():
    return template('templates/pages-user-profile')

@app.route('/sign-up')
def signup():
    return template('templates/sign_up', warning='')

@app.route('/sign-in')
def signin():
    # If user requested a logout, delete the cookie, and redirect to homepage
    if request.query.logout == "true":
        response.delete_cookie("account")
        redirect('/')

    return template('templates/sign_in', warning='')

################SIGNING IN################
@app.route('/sign-in', method='POST')
def do_login():
    # Get values from all the fields, strip leading and trailing spaces 
    username = request.forms.get('username').strip()
    password = request.forms.get('pwd')

    # Check login
    check = check_login(username,password)

    # If login sucessful, return to home
    if check == 'ok':
        redirect('/')

    # If check is unsucessful, reload and display a message
    else:
        return template('templates/sign_in', warning=check)

def check_login(username,password):
    # Login is "admin", password is "password"
    if username == "" or password == "":
        return 'Please fill all fields to log in!'

    # Select password_hash for this user (case-insensitive)
    c.execute("SELECT password_hash FROM users WHERE username =?", (username.lower(),))
    query = c.fetchone()

    # If user does not exist
    if query==None:
        return 'User does not exist!'

    # Hash the provided password
    passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 
    
    # If the hashes do not match, return a warning
    if passwordHash != query[0]:
        return 'Wrong password!'

    # If the hashes match, set cookie and return ok
    response.set_cookie("account", username, secret="guacamole")
    return 'ok'

################SIGNING UP################
@app.route('/sign-up', method='POST')
def registerUser():
    # Get values from all the fields, strip leading and trailing spaces 
    username = request.forms.get('name').strip()
    email = request.forms.get('email').strip()
    password = request.forms.get('pwd')
    password_confirm = request.forms.get('pwd_confirm')
    
    # Return a warning if all fields are not filled
    if username == "" or email == "" or password == "":
        return template('templates/sign_up', warning='Please fill all the fields to register!')

    # Check if passwords match. 
    # Should be done with javascript on client side, but this is a python project. 
    # Also the hashing should be client side
    if password_confirm != password:
        return template('templates/sign_up', warning='Passwords do not match!')
    
    # Check if user exists (case-insensitive)
    c.execute("SELECT user_id FROM users WHERE username = (?)", (username.lower(),))
    user_ID = c.fetchone()

    # If user exists, return a warning
    if user_ID != None:
        return template('templates/sign_up', warning='User already exists!')

    # Hash the password (md5)
    passwordHash = hashlib.md5(password.encode("utf8")).hexdigest() 

    # Insert in the database
    c.execute("INSERT INTO users VALUES (?,?,?,?,?)", (None,username,passwordHash,email,None))
    
    # Commit the changes
    connection.commit()

    # Log the user in and redirect to homepage
    response.set_cookie("account", username, secret="guacamole")
    redirect('/')

app.run(host='localhost', port=8585, debug=True, reloader=True)