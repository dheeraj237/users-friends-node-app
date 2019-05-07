const apiRoute = require('./apis');
const path = require('path');

const init = (server) => {
    server.get('*', function (req, res, next) {
        console.log('Request was made to: ' + req.originalUrl);
        return next();
    });

    server.get('/', function (req, res) {
        res.sendFile('/public/index.html');
    });

    server.get('/users', (req, res) => {
        res.sendFile(path.join(__dirname, '../public/users.html'));
    })
    server.get('/friends', (req, res) => {
        res.sendFile(path.join(__dirname, '../public/friends.html'));
    })

    //registering routes
    server.use('/api', apiRoute);

    //error pages (should be after real routes)
    server.use((req, res, next) => {
        // console.log(path.join(__dirname, '../public/404.html'));
        res.status(404).sendFile(path.join(__dirname, '../public/404.html'));
    });
    server.use((err, req, res, next) => {
        console.error(err.stack);
        res.sendFile(path.join(__dirname, '../public/500.html'));
    })

}
module.exports = {
    init: init
};