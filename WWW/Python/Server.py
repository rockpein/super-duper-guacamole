from bottle import Bottle, route, run, template, get, post, debug, static_file, request, redirect, response

@route('/assets/:path#.+#', name='assets')
def static(path):
    return static_file(path, root='./assets')

@route('/')
def index():
    return template('base')

@route('/SignUp')
def singup():
    return template('pages-signup')

@route('/SignIn')
def singin():
    return template('pages-signin')

@route('/myMovies')
def mymovies():
    return template('My_movies')

@route('/Timeline')
def timeline():
    return template('pages-timeline')

@route('/Certificate')
def certificate():
    return template('pages-invoice')

@route('/list_of_movies')
def listofmovies():
    return template('list_of_movies')

@route('/Top1000')
def top1000():
    return template('top1000')

@route('/Top100_by_genre')
def top100g():
    return template('top100genre')

@route('/Top100_by_year')
def top100y():
    return template('top100year')

@route('/User_Profile')
def user():
    return template('pages-user-profile')

@route('/Lock')
def lock():
    return template('pages-lock-screen')

@route('/Recovery')
def recovery():
    return template('pages-recover-password')

run(host='localhost', port=8585, debug=True, reloader=True)
