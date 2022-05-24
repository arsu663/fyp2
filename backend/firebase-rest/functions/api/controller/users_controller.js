// Author: Jumail 
// Email: jumail@utm.my
// Github:  github.com/jumail-utm
// Update: 5 Jun 2021

'use strict'

const Controller = require('./controller')
const userModel = require('../models/users_model')

const usersController = new Controller(userModel)
module.exports = usersController.router


// const UserModel = require("../models/users_model");
// const express = require("express");
// const router = express.Router();

// // Get all users
// router.get("/", async (req, res, next) => {
//   try {
//     const result = await UserModel.get();
//     return res.json(result);
//   } catch (e) {
//     return next(e);
//   }
// });

// // Get one user
// router.get("/:id", async (req, res, next) => {
//   try {
//     const result = await UserModel.getById(req.params.id);
//     if (!result) return res.sendStatus(404);
//     return res.json(result);
//   } catch (e) {
//     return next(e);
//   }
// });

// // Create a new user
// router.post("/", async (req, res, next) => {
//   try {
//     const result = await UserModel.create(req.body);
//     if (!result) return res.sendStatus(409);
//     return res.status(201).json(result);
//   } catch (e) {
//     return next(e);
//   }
// });

// // Delete an user
// router.delete("/:id", async (req, res, next) => {
//   try {
//     const result = await UserModel.delete(req.params.id);
//     if (!result) return res.sendStatus(404);
//     return res.sendStatus(200);
//   } catch (e) {
//     return next(e);
//   }
// });

// // Update an user
// router.patch("/:id", async (req, res, next) => {
//   try {
//     const id = req.params.id;
//     const data = req.body;

//     const doc = await UserModel.getById(id);
//     if (!doc) return res.sendStatus(404);

//     // Merge existing fields with the ones to be updated
//     Object.keys(data).forEach((key) => (doc[key] = data[key]));

//     const updateResult = await UserModel.update(id, doc);
//     if (!updateResult) return res.sendStatus(404);

//     return res.json(doc);
//   } catch (e) {
//     return next(e);
//   }
// });

// // Replace an user
// router.put("/:id", async (req, res, next) => {
//   try {
//     const updateResult = await UserModel.update(req.params.id, req.body);
//     if (!updateResult) return res.sendStatus(404);

//     const result = await UserModel.getById(req.params.id);
//     return res.json(result);
//   } catch (e) {
//     return next(e);
//   }
// });

// module.exports = router;