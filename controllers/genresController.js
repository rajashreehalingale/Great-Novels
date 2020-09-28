const models = require('../models')

const getAllGenres = async (request, response) => {
  const genres = await models.Genres.findAll()

  if (genres) {
    return response.send(genres)
  }

  return response.sendStatus(404)
}

const getGenresById = async (request, response) => {
  const id = parseInt(request.params.id)

  const genres = await models.Genres.findAll({
    where: { id: id },
    include: [{
      model: models.Novels,
      include: [{ model: models.Authors }]
    }]
  })

  if (genres) {
    return response.send(genres)
  }

  return response.sendStatus(404)
}

module.exports = {
  getAllGenres,
  getGenresById
}
