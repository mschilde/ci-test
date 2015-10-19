express = require 'express'

app = express()

app.get '/', (req, res) ->
  res.send '\nHello World!\n\n'

exports.app = app
