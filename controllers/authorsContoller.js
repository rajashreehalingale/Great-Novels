const models = require('../models')

const getAllAuthor = async (request, response) => {
  const authors = await models.Authors.findAll({
    attributes: ['Id', 'nameFirst', 'nameLast', 'createdAt', 'updatedAt']
  })

  if (authors) {
    return response.send(authors)
  }

  return response.sendStatus(404)
}

const getAuthorsById = async (request, response) => {
  const id = parseInt(request.params.id)

  const authors = await models.Authors.findAll({
    attributes: ['Id', 'nameFirst', 'nameLast', 'createdAt', 'updatedAt'],
    where: { id: id },
    include: [{
      model: models.Novels,
      include: [{ model: models.Genres }]
    }]
  })

  if (authors) {
    return response.send(authors)
  }

  return response.sendStatus(404)
}

module.exports = {
  getAllAuthor,
  getAuthorsById
}
