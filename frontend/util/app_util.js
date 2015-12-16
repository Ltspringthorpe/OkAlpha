var ApiActions = require('../actions/api_actions');

var ApiUtil = {
  fetchUsers: function(){
    $.ajax({
      url: "api/users",
      success: function (users) {
        ApiActions.receiveUsers(users);
      },
      error: function(message) {
        console.log(message);
      }
    })
  },

  updateInterests: function(data) {
    $.ajax({
      type: "POST",
      url: "api/interests",
      data: interests,
      success: function(interests){
        ApiActions.updateInterests(interests);
      },
      error: function(message){
        console.log(message);
      }
    });
  },

  fetchUser: function (user, callback) {
    $.ajax({
      url: "api/users/:id",
      data: user,
      success: function (user) {
        ApiActions.updateUser(user);
        callback && callback(user.id);
      },
      error: function (message) {
        console.log(message);
      }
    });
  }
};

module.exports = ApiUtil;
