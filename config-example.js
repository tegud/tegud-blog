var path = require('path'),
    config;

config = {
    // ### Production
    // When running Ghost in the wild, use the production environment.
    // Configure your URL and mail settings here
    production: {
        url: 'http://ghost.example.com',
        mail: {},
        database: {
            client: 'mysql',
            connection: {
                host     : 'mysql',
                user     : 'GHOST_USER',
                password : 'GHOST_PASSWORD',
                database : 'GHOST_DB',
                charset  : 'utf8'
            }
        },
        server: {
            host: '0.0.0.0',
            port: '2368'
        },
	paths: {
	    contentPath: path.join(__dirname, '/content/')
	}
    }
};

module.exports = config;
