const Sequelize = require('sequelize')
const authorsModels = require('./authorsModels')
const genresModels = require('./genresModels')
const novelsModels = require('./novelsModels')
const novelsgenresModels = require('./novelsgenresModels')

const connection = new Sequelize('novel', 'novelAdmin', 'novel925', {
  host: 'localhost', dialect: 'mysql'

})

const Authors = authorsModels(connection, Sequelize)
const Genres = genresModels(connection, Sequelize)
const Novels = novelsModels(connection, Sequelize, Authors)
const Novelsgenres = novelsgenresModels(connection, Sequelize, Genres, Novels)

Authors.hasMany(Novels)
Novels.belongsTo(Authors)
Novels.belongsToMany(Genres, { through: Novelsgenres })
Genres.belongsToMany(Novels, { through: Novelsgenres })


module.exports = {
  Authors,
  Novels,
  Genres,
  Novelsgenres
}
