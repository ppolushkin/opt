/**
 * Created by pavel on 24.05.15.
 */

(function() {
    "use strict";

    angular.module('obeliskControllers').controller('LoginCtrl', LoginCtrl);

    LoginCtrl.$inject = ['$scope', '$modal', '$http', '$log'];

    function LoginCtrl($scope, $modal, $http, $log) {

        $scope.open = function() {
            $modal.open({
                templateUrl: '/partials/login.html',
                animation: true,
                size: 'sm',
                controller: 'LoginFormCtrl'
            });
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
        }

    }


    angular.module('obeliskControllers').controller('LoginFormCtrl', LoginFormCtrl);

    LoginFormCtrl.$inject = ['$scope', '$modalInstance', '$http', '$log'];

    function LoginFormCtrl($scope, $modalInstance, $http, $log) {

        //$scope.login = 'cheburaska@mail.ru';

        $scope.ok = function () {
            $log.log('check username/password');
            $log.log($scope.login);
            $log.log($scope.password);

            var obj = {'name':$scope.login, 'password' : $scope.password};
            $http.post('api/login', obj).then(
                function() {
                    $log.log('login success')
                },
                function() {
                    $log.log('login failed')
                }
            );



            $modalInstance.close();
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

