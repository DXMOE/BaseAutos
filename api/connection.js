
var promise = require('bluebird');

var pgp = require('pg-promise')(
        {
            promiseLib: promise
        }
);

var cn = {
    host: 'localhost',
    port: 5432,
    database: 'autolist',
    user: 'isma4',
    password: 'isma4'
};

module.exports = {
    db: pgp(cn)
};
