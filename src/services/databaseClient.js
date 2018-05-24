import path from 'path'
import Sql from 'better-sqlite3'
import moment from 'moment'

const databaseClient = () => {
  const dbPath = path.join(__dirname, `../data/UNSWSocietyFBEvents.db`)

  const listUNSWSocietyFBEvents = () => {
    const db = new Sql(dbPath)
    const query = 'SELECT * FROM vwUNSWSocietyEventsAbout order by cast(data__interested as int) desc'
    const entries = db.prepare(query).all()
    db.close()

    return entries
  }

  return {
    listUNSWSocietyFBEvents
  }
}

export default databaseClient
