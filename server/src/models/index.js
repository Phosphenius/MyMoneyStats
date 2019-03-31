const fs = require('fs')
const path = require('path')
const Sequelize = require('sequelize')
const settings = require('../config/settings')
const db = {}

const sequelize = new Sequelize(
    settings.db.database,
    settings.db.user,
    settings.db.password,
    settings.db.options
)

fs
  .readdirSync(__dirname)
  .filter((file) =>
    file !== 'index.js'
  )
  .forEach((file) => {
    const model = sequelize.import(path.join(__dirname, file))
    db[model.name] = model
  })

Object.keys(db).forEach(function (modelName) {
  if ('associate' in db[modelName]) {
    db[modelName].associate(db)
  }
})

db.sequelize = sequelize
db.Sequelize = Sequelize

module.exports = db