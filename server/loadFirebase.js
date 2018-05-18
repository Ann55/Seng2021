const firebase = require('./firebase')
const db = firebase.firestore()

const addData = async() => {
    const societies = await db.collection('society').where('name', '==', 'UNSW dogsoc').get()
    let societyId
    societies.forEach(society => {
        societyId = society.id
    })
    await db.collection('society').doc(societyId).collection('events').add({
        name: 'dogging',
        location:'UNSW',
        dateStart: new Date(2018, 5, 13, 13, 13),
        dateEnd: new Date(2018, 5, 14, 6, 6),
        going: 500,
        interested: 600,
        about:':DDDDDDDDDDDDDDDDD'
    })
    // const events = await db.collection('society').doc(societyId).collection('events').get()
    // events.forEach(event => {
    //     console.log(event.data())
    // })
}
addData()
    .then(() => process.exit())
    .catch((error) => console.log(error))
