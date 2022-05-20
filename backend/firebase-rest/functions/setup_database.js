// const db = require("../functions/api/database");
const db = require("./api/database")

async function setupDatabase(req, res, next) {
    // To delete all the collections
    const collections = ["users", "appointments"];
    collections.forEach(async (collection) => await deleteCollection(collection));

    addDocuments("users", [
        {
            name: "Arsalan",
            password: "test123",
            email: "arsu@gmail.com",
            phoneNumber: "123456",
            imageUrl: "",
            hasAppointment: false,
            dateTime: "Tue",
        },
        {
            name: "Adnan",
            password: "test123",
            email: "adnan@gmail.com",
            phoneNumber: "123456",
            imageUrl: "",
            hasAppointment: false,
            dateTime: "Tue",
        },
        {
            name: "Nasir",
            password: "test123",
            email: "nasir@gmail.com",
            phoneNumber: "123456",
            imageUrl: "",
            hasAppointment: false,
            dateTime: "Tue",
        },
        {
            name: "Israr",
            password: "test123",
            email: "israr@gmail.com",
            phoneNumber: "123456",
            imageUrl: "",
            hasAppointment: false,
            dateTime: "Tue",
        },

    ]);

    res.send("Setting Up Database.... Done ");
}

async function deleteCollection(collection) {
    const cref = db.firestore.collection(collection);
    const docs = await cref.listDocuments();
    docs.forEach((doc) => doc.delete());
}

function addDocuments(collection, docs) {
    docs.forEach((doc) => db.create(collection, doc));
}

module.exports = setupDatabase;