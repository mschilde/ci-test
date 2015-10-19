app = require('./lib/app').app

server = app.listen 3000, ->
  host = server.address().address
  port = server.address().port

  console.log 'Started test server at http://%s:%s', host, port