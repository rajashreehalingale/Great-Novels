const novelsGenres = (connection, Sequelize, Novels, Genres) => {
  return connection.define('novelsgenres', {
    genreId: { type: Sequelize.INTEGER, reference: { model: Genres, key: 'id' } },
    NovelId: { type: Sequelize.INTEGER, reference: { model: Novels, key: 'id' } }
  }, { paranoid: true })
}

module.exports = novelsGenres
