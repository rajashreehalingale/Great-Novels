const models = require('../models')

const getAllNovels = async (request, response) => {
  const novels = await models.Novels.findAll()

  if (novels) {
    return response.send(novels)
  }

  return response.sendStatus(404)
}

const getNovelsById = async (request, response) => {
  const id = parseInt(request.params.id)

  const novels = await models.Novels.findAll({
    where: { id: id },
    include: [{
      model: models.Authors
    },
    { model: models.Genres }]
  })

  if (novels) {
    return response.send(novels)
  }

  return response.sendStatus(404)
}

module.exports = {
  getAllNovels,
  getNovelsById
}
