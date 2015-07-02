'use strict'
module.exports =
  up: (queryInterface, Sequelize) ->
    queryInterface.createTable 'MagicWords',
      id:
        allowNull: false
        autoIncrement: true
        primaryKey: true
        type: Sequelize.INTEGER
      name: type: Sequelize.STRING
      body: type: Sequelize.TEXT
      title: type: Sequelize.STRING
      start_time: type: Sequelize.DATE
      end_time: type: Sequelize.DATE
      url: type: Sequelize.STRING
      createdAt:
        allowNull: false
        type: Sequelize.DATE
      updatedAt:
        allowNull: false
        type: Sequelize.DATE
  down: (queryInterface, Sequelize) ->
    queryInterface.dropTable 'MagicWords'
