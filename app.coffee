express = require('express')
app = express()
path = require('path')

app.use(express.static(path.join(__dirname, 'public')))
app.get('/', function (req, res) {

  res.sendFile(path.join(__dirname + '/index.html'))
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})