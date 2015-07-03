
Users = require '../controllers/user'
App = require '../controllers/app'

module.exports = [

    { method: 'GET',    path: '/api/users',         config: Users.all }
    { method: 'GET',    path: '/api/user/{name}',   config: Users.one }
    { method: 'POST',   path: '/api/user/{name}',   config: Users.create }

    #{ method: 'GET',    path: '/user/{name}',       config: Users.profile }
    
    { method: 'GET',    path: '/',                  config: App.index }
    { method: 'GET',    path: '/public/{path*}',    config: App.public }
    { method: 'GET',    path: '/favicon.ico',       config: App.favicon }

    { method: 'GET',    path: '/login',             config: Users.loginView }
    { method: 'POST',   path: '/login',             config: Users.login }
    { method: 'GET',    path: '/logout',            config: Users.logout }
    { method: 'GET',    path: '/register',          config: Users.registerView }
    { method: 'POST',   path: '/register',          config: Users.register }

    { method: '*',    path: '/{p*}',                  config: App.notFound }

]
