(function () {

    "use strict";

    angular.module('obeliskControllers').controller('OrderSentCtrl', OrderSentCtrl);

    OrderSentCtrl.$inject = ['basketService', '$scope', '$http', '$log', '$modal', '$localStorage'];

    function OrderSentCtrl(basketService, $scope, $http, $log, $modal, $localStorage) {
        
        $scope.init = function() {
            $scope.orderInfo = $localStorage.$default({orderInfo: {}});

            $scope.state = $scope.orderInfo.state;
            $scope.email = $scope.orderInfo.email;
            $scope.name = $scope.orderInfo.name;

        }();

        $scope.isSuccess = function() {
            //return false;
            return 'success' === $scope.state;
        };

        $scope.isInProgress = function() {
            //return false;
            return 'inProgress' === $scope.state;
        };

        $scope.isFailed = function() {
            //return true;
            return 'failed' === $scope.state;
        };

        $scope.$on('orderSentSuccessfully' , function() {
            $scope.orderInfo.state = 'success';
            $scope.state = 'success';
        });

        $scope.$on('orderSendingFailed' , function() {
            $scope.orderInfo.state = 'failed';
            $scope.state = 'failed';
        });

    }

})();