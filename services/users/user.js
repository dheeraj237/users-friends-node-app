/********
* user.js file (services/users)
********/


const express = require('express');
const db = require('../../configs/db');

const getUsers = async (req, res, next) => {
    try {
        let limit = 10;   // number of records per page
        let offset = 0;
        let page = req.query.page;
        console.log('page ', page);
        offset = limit * (page - 1);
        if (page) {
            db.query("Select count(*) as count from users", (err, data) => {
                let pages = Math.ceil(data[0].count / limit);
                console.log(data[0].count)
                if (data[0].count > 0) {
                    db.query(`Select * from users order by id asc limit ${limit} offset ${offset}`, (err, data) => {
                        if (data) {
                            return res.status(200).json({
                                'message': 'users fetched successfully',
                                'data': data
                            });
                        }
                        if (err) {
                            console.log(err)
                        }
                        return res.status(404).json({
                            'code': 'BAD_REQUEST_ERROR',
                            'description': 'No users found in the system'
                        });
                    });
                }
                if (err) {
                    console.log(err)
                }
            });

        }

    } catch (error) {
        console.log(error)
        return res.status(500).json({
            'code': 'SERVER_ERROR',
            'description': error
        });
    }
}

const getUserById = async (req, res, next) => {
    try {
        db.query("Select * from users where id= ?", [req.params.id], (err, user) => {
            // let user = await User.findById(req.params.id);
            if (user) {
                return res.status(200).json({
                    'message': `user with id ${req.params.id} fetched successfully`,
                    'data': user
                });
            }
            if (err) {
                throw err
            }

            return res.status(404).json({
                'code': 'BAD_REQUEST_ERROR',
                'description': 'No users found in the system'
            });
        });

    } catch (error) {

        return res.status(500).json({
            'code': 'SERVER_ERROR',
            'description': 'something went wrong, Please try again'
        });
    }
}

const getFriendsByUserId = async (req, res, next) => {
    try {
        db.query("select u.id,u.firstName,u.lastName,u.avatar from friends f inner join users u on u.id = f.friend_id and f.user_id = ?", [req.params.id], (err, user) => {
            // let user = await User.findById(req.params.id);
            if (user) {
                return res.status(200).json({
                    'message': `user with id ${req.params.id} friends fetched successfully`,
                    'data': user
                });
            }
            if (err) {
                throw err
            }

            return res.status(404).json({
                'code': 'BAD_REQUEST_ERROR',
                'description': 'No users found in the system'
            });
        });

    } catch (error) {

        return res.status(500).json({
            'code': 'SERVER_ERROR',
            'description': 'something went wrong, Please try again'
        });
    }
}

module.exports = {
    getUsers: getUsers,
    getUserById: getUserById,
    getFriendsByUserId: getFriendsByUserId
}