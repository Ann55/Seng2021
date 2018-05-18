const fs = require('fs')
const SQL = require('sql.js')
const filebuffer = fs.readFileSync('./database/UNSWSocietyFBEvents.db')

// Load the db
console.log('Heyo world')
const db = new SQL.Database(filebuffer)
const res = db.exec('SELECT * FROM AuthorizedUsers')
console.log(res)
