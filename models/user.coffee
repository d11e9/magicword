'use strict'

module.exports = (sequelize, DataTypes) ->
  User = sequelize.define('User', {
    name:
        type: DataTypes.STRING
        unique: true
    url:
        type: DataTypes.STRING
        allowNull: true
        validate:
            isUrl: true
    bio:
        type: DataTypes.TEXT
    twitter:
        type: DataTypes.STRING
    email:
        type: DataTypes.STRING
        allowNull: true
        validate:
            isEmail: true

  }, classMethods: associate: (models) ->
    # associations can be defined here
    User.hasMany( models.Project )
    return
  )
  User
