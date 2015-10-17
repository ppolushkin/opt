/**
 * Created by pavel on 24.05.15.
 */

(function() {
    "use strict";

    angular.module('obeliskControllers').controller('LoginCtrl', LoginCtrl);

    LoginCtrl.$inject = ['$scope', '$modal', '$http', '$log'];

    function LoginCtrl($scope, $modal, $http, $log) {

        $scope.init = function() {
            $http.get('api/login').then(
                function() {
                    $scope.loggedIn = true;
                },
                function() {
                    $scope.loggedIn = false;
                }
            );
        };

        $scope.open = function() {
            var modalInstance = $modal.open({
                templateUrl: '/partials/login.html',
                animation: true,
                size: 'sm',
                controller: 'LoginFormCtrl'
            });

            modalInstance.result.then(function (loggedIn) {
                $scope.loggedIn = loggedIn;
            });

        };

        $scope.logout = function() {
            $http.post('api/logout', {}).then(
                function() {
                    $log.log('logout success');
                    $scope.loggedIn = false;
                },
                function() {
                    $log.log('logout failed')
                }
            );
        };

        $scope.checkSecretPage = function() {
            $http.get('api/secret').then(
                function() {
                    $log.log('success')
                },
                function() {
                    $log.log('failed')
                }
            );
        };

        $scope.init();
    }


    angular.module('obeliskControllers').controller('LoginFormCtrl', LoginFormCtrl);

    LoginFormCtrl.$inject = ['$scope', '$modalInstance', '$http', '$log'];

    function LoginFormCtrl($scope, $modalInstance, $http, $log) {

        //$scope.login = 'cheburaska@mail.ru';

        $scope.ok = function () {
            $log.log('check username/password');

            var obj = {'name':$scope.login, 'password' : $scope.password};
            $http.post('api/login', obj).then(
                function() {
                    $log.log('login success');
                    $modalInstance.close(true);
                },
                function() {
                    $log.log('login failed');
                    $modalInstance.close(false);
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

