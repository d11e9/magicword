'use strict'

module.exports = (sequelize, DataTypes) ->
  MagicWord = sequelize.define('MagicWord', {
    name: DataTypes.STRING
    body: DataTypes.TEXT
    title: DataTypes.STRING
    start_time: DataTypes.DATE
    end_time: DataTypes.DATE
    url: DataTypes.STRING
  }, classMethods: associate: (models) ->
    # associations can be defined here
    return
  )
  MagicWord
