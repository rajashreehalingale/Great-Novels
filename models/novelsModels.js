const Novels = (connection, Sequelize, Authors) => {
  return connection.define('novels', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    Name: { type: Sequelize.STRING },
    authorId: { type: Sequelize.INTEGER, references: { model: Authors, key: 'id' } },
  }, { paranoid: true })
}

module.exports = Novels
