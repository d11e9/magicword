'use strict'

module.exports = (sequelize, DataTypes) ->
  Project = sequelize.define('Project', {
    name: DataTypes.STRING
    url: DataTypes.STRING
    description: DataTypes.TEXT
  }, classMethods: associate: (models) ->
    # associations can be defined here
    Project.hasMany( models.MagicWord )
    return
  )
  Project
