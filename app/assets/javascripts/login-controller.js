/**
 * Created by pavel on 24.05.15.
 */

(function() {
    "use strict";

    angular.module('obeliskControllers').controller('LoginCtrl', LoginCtrl);

    LoginCtrl.$inject = [
        '$scope',
        '$modal',
        '$http',
        '$log',
        '$sessionStorage',
        '$rootScope'
    ];

    function LoginCtrl(
        $scope,
        $modal,
        $http,
        $log,
        $sessionStorage,
        $rootScope
    ) {
        $scope.init = function() {
            if ($sessionStorage.loggedIn == undefined) {
                $http.get('api/login').then(
                    function() {
                        setLoggedIn(true);
                    },
                    function() {
                        setLoggedIn(false);
                    }
                );
            }
        };

        $scope.open = function() {
            var modalInstance = $modal.open({
                templateUrl: '/partials/login.html',
                animation: true,
                size: 'sm',
                controller: 'LoginFormCtrl'
            });

            modalInstance.result.then(function (loggedIn) {
                setLoggedIn(loggedIn);
            });

        };

        $scope.logout = function() {
            $http.post('api/logout', {}).then(
                function() {
                    $log.log('logout success');
                    setLoggedIn(false);
                },
                function() {
                    $log.log('logout failed')
                }
            );
        };

        $scope.isLoggedIn = function() {
            return $sessionStorage.loggedIn
        };

        $scope.init();

        function setLoggedIn(bValue) {
            $sessionStorage.loggedIn = bValue;
            $rootScope.$broadcast('loggedIn');
        }
    }


    angular.module('obeliskControllers').controller('LoginFormCtrl', LoginFormCtrl);

    LoginFormCtrl.$inject = ['$scope', '$modalInstance', '$http', '$log'];

    function LoginFormCtrl($scope, $modalInstance, $http, $log) {

        $scope.loginFailed = false;

        $scope.ok = function () {
            $log.log('check username/password');

            var obj = {'name':$scope.login, 'password' : $scope.password};
            $http.post('api/login', obj).then(
                function() {
                    $log.log('login success');
                    $scope.loginFailed = false;
                    $modalInstance.close(true);
                },
                function() {
                    $log.log('login failed');
                    $scope.loginFailed = true;
                }
            );

        };

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };

        $scope.register = function() {
            $log.log('register');
        };

        $scope.forgotPassword = function() {
            $log.log('forgotPassword');
        }

    }

})();

