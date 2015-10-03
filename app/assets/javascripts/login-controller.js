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
                backdropClass: 'zhopa'
            });
            $log.log('open');
        }


    }
})();

