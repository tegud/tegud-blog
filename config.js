var path = require('path'),
    config;

config = {
    // ### Production
    // When running Ghost in the wild, use the production environment.
    // Configure your URL and mail settings here
    production: {
        url: process.env.GHOST_URL,
        mail: {
            transport: 'SMTP',
            options: {
                service: 'Mailgun',
                auth: {
                    user: process.env.EmailUserName, // mailgun username
                    pass: process.env.EmailPassword  // mailgun password
                }
            }
        },
        database: {
            client: 'sqlite3',
            connection: {
                filename: path.join(__dirname, '/content/data/ghost-dev.db')
            },
            debug: false
        },
        storage: {
          active: 'ghost-s3',
          'ghost-s3': {
            accessKeyId: process.env.AWS_KEY,
            secretAccessKey: process.env.AWS_SECRET,
            bucket: process.env.AWS_BUCKET,
            region: process.env.AWS_REGION
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
