/* eslint-disable no-sequences */
/* eslint-disable no-undef */
/* eslint-disable no-unused-expressions */

(function () {
  angular.module('ellora')

    .factory('HttpService', function ($http) {
      var obj = {};

      obj.post = function (path, data) {
          return $http.post('/API/' + path, data, {
            withCredentials: true
          });
        },

        obj.get = function (path) {
          return $http.get('/API/' + path);
        };

      return obj;
    })

    .factory('AuthService', ['HttpService', function (http) {
      var isAuthenticated = false;

      return {
        login: function (username, password) {
          return http.post('/login', {
              username: username,
              password: password
            })
            .then(
              function (response) {
                // populate OK message
                console.log(response.data.message);
                isAuthenticated = true;
                return isAuthenticated;
              },
              function (response) {
                console.log(response.data.message);
                isAuthenticated = false;
                return isAuthenticated;
              });
        },
        isAuthenticated: function () {
          // rerurn true or false if previously authenticated
          return isAuthenticated;
        }
      };
    }]);
})();
