const db = require("./api/databsase");

async function setupDatabase(req, res, next) {
  // To delete all the collections
  const collections = ["users", "appointments"];
  collections.forEach(async (collection) => await deleteCollection(collection));

  // Add documents to the todos collection
  addDocuments("appointments", [
    { title: "Chest-Xray", completed: true },
    { title: "Pediatric ", completed: true },
    { title: "Obgyn appointent", completed: false },
    { title: "Determalogist appointent", completed: false },
    { title: "Follow up appointment", completed: true },
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