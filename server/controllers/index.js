var models = require('../models');

// var defaultCorsHeaders = {
//   'access-control-allow-origin': '*',
//   'access-control-allow-methods': 'GET, POST, PUT, DELETE, OPTIONS',
//   'access-control-allow-headers': 'content-type, accept',
//   'access-control-max-age': 10 // Seconds.
// };

module.exports = {
  messages: {
    get: function (req, res) {
      models.messages.get();
      console.log('controllers, messages, get');
      res.end();
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      console.log('controllers, messages, post');
      models.messages.post(req.body);
      res.status(200).end();
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      console.log('controllers, users, get');
    },
    post: function (req, res) {
      console.log('controllers, users, post');
      models.users.post(req.body);
      res.status(200).end('****done');
    }
  }
};

