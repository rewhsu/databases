var db = require('../db').connection;

module.exports = {
  messages: {
    get: function () {
      console.log('models, messages, get');

    }, // a function which produces all the messages
    post: function (body) {

      console.log('models, messages, post');

      var queryString = 'INSERT INTO messages(text) VALUES("hello")';
      db.query(queryString, function(err, rows, fields) {
        if (err) {
          throw err;
        } else {
          return rows;
        }
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function (body) {

      console.log('models, users, post');

      var queryString = 'INSERT INTO user(name) VALUES("Valjean")';
      db.query(queryString, function(err, rows, fields) {
        if (err) {
          throw err;
        } else {
          return rows;
        }
      });
    }
  }
};

