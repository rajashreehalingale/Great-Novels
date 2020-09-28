const express = require('express')
const { getAllAuthor, getAuthorsById } = require('./controllers/authorsContoller')
const { getAllGenres, getGenresById } = require('./controllers/genresController')
const { getAllNovels, getNovelsById } = require('./controllers/novelsController')

const app = express()

app.get('/', getAllAuthor)
app.get('/author', getAllAuthor)
app.get('/author/:id', getAuthorsById)

app.get('/genres', getAllGenres)
app.get('/genres/:id', getGenresById)

app.get('/novels', getAllNovels)
app.get('/novels/:id', getNovelsById)

app.listen(1337, () => {
  console.log('Listening on port 1337....') // eslint-disable-line no-console
})
