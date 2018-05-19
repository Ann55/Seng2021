const firebase = require('firebase')

// Initalize and export Firebase.
const config = {
  apiKey: 'AIzaSyAJ1nHNXNhWp8TqTPfEioDzgOLeCskGwx8',
  authDomain: 'event-search-55.firebaseapp.com',
  databaseURL: 'https://event-search-55.firebaseio.com',
  projectId: 'event-search-55',
  storageBucket: 'gs://event-search-55.appspot.com',
}
const myFirebase = firebase.initializeApp(config)

const firestore = myFirebase.firestore()
const firestoreSettings = {
    timestampsInSnapshots: true
}
firestore.settings(firestoreSettings)

module.exports = myFirebase