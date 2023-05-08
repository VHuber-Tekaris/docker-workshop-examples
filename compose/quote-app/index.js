const express = require('express')
const app = express()
const port = 5000
const os = require('os');
const quote = require('prog-quote')()
app.set('views', './views')
app.set('view engine', 'pug')

app.get('/', (req, res) => {
  var newQuote = quote.next().value
  res.render('index', { author: newQuote.author, message: newQuote.quote, container: os.hostname() })
})

app.listen(port, () => {
  console.log(`Quote app listening on port ${port}`)
})
