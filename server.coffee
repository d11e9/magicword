
Hapi = require 'hapi'
Good = require 'good'
Handlebars = require 'handlebars'
Path = require 'path'

require 'coffee-script/register'
models = require './models'

server = new Hapi.Server()
server.connection
    host: '0.0.0.0'
    port: 8080

server.views
    engines:
        html: Handlebars
    relativeTo: __dirname
    path: 'views'
    layoutPath: 'views/layout'
    layout: 'default'
    

server.route( require './routes' )


goodPlugin =
    register: Good
    options:
        reporters: [
            reporter: require('good-console')
            events:
                reponse: '*'
                log: '*'
        ]

models.sequelize.sync().then ->
    server.register goodPlugin, (err) ->
        throw err if err
        server.start ->
            server.log( 'info', "Server running at: #{ server.info.uri } dir: #{ __dirname }" )
