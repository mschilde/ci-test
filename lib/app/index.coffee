express = require 'express'

app = express()

#a = ()->

app.get '/', (req, res) ->
  console.log new Date() + ': Request!'
  res.send '\nHello World!\n\n'

exports.app = app
