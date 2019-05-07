const userController = require('../../controllers/apis/users');

const express = require('express');
let router = express.Router();
router.use('/users', userController);
module.exports = router;