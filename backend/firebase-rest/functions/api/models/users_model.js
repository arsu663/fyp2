// Author: Jumail
// Email: jumail@utm.my
// Github:  github.com/jumail-utm
// Update: 5 Jun 2021

'use strict'

const Model = require('./model')

// Here, we are implementing the class with Singleton design pattern

class UserModel extends Model {
    constructor() {
        super('users')
        if (this.instance) return this.instance
        UserModel.instance = this
    }
}

module.exports = new UserModel()


// const database = require("../database");

// class UserModel{
//     constructor() {
//         if (this.instance) return this.instance;
//         UserModel.instance = this;
//       }
//       get() {
//         return database.getList("users");
//       }
    
//       getById(id) {
//         return database.get("users", id);
//       }
    
//       create(user) {
//         return database.create("users", user);
//       }
    
//       delete(id) {
//         return database.delete("users", id);
//       }
    
//       update(id, user) {
//         return database.set("users", id, user);
//       }
// }

// module.exports = new UserModel();
