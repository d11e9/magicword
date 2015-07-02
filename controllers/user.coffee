
{ User } = require '../models'

module.exports =

    # API MEthods
    all:
        handler: (req,res) ->
            User.findAll().then (users) ->
                res( users ).code( 200 )
    one:
        handler: (req,res) ->
            User.findOne( where: name: req.params.name )
                .then( (user) -> res( user ).code(200) )
                .catch( (err) -> res( err ).code(500) )
    create:
        handler: (req,res) ->
            User.create( name: req.params.name )
                .then( (user) -> res( user ).code(200) )
                .catch( (err) -> res( err ).code(500) )

    # View Methods
    loginView:
        handler: (req,res) -> res.view( 'login' )

    registerView:
        handler: (req,res) -> res.view( 'register' )

    login:
        handler: (req,res) ->
            throw new Error("Not yet implemented")

    register:
        handler: (req,res) ->
            throw new Error("Not yet implemented")

    logout:
        handler: (req,res) -> res.redirect('/')


    
