
Path = require 'path'

module.exports =
    index:
        handler: (req,res) -> res.view( 'index' )

    public:
         handler: (req,res) ->
            res.file( Path.join( './public/', req.params.path ) )

