import firebase from 'firebase'
import 'firebase/firestore'
import 'firebase/auth'

// Initalize and export Firebase.
const config = {
  apiKey: 'AIzaSyAJ1nHNXNhWp8TqTPfEioDzgOLeCskGwx8',
  authDomain: 'event-search-55.firebaseapp.com',
  databaseURL: 'https://event-search-55.firebaseio.com',
  projectId: 'event-search-55',
  storageBucket: 'gs://event-search-55.appspot.com',
}

export default firebase.initializeApp(config)

const firestore = firebase.firestore()
firestore.settings({ timestampsInSnapshots: true })
