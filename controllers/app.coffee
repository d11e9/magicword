
Path = require 'path'

module.exports =
    index:
        handler: (req,res) -> res.view( 'index' )

    public:
         handler: (req,res) ->
            res.file( Path.join( './public/', req.params.path ) )

    favicon:
        handler: (req,res) ->
            res.file( './public/images/favicon.ico' )

    notFound:
        handler: (req,res) -> res.view( '404' ).code(404)

