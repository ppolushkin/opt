(function () {

    "use strict";

    angular.module('obeliskControllers').controller('OrderSentCtrl', OrderSentCtrl);

    OrderSentCtrl.$inject = [
        '$scope',
        '$http',
        '$log',
        '$localStorage',
        '$sessionStorage',
        '$location'
    ];

    function OrderSentCtrl(
        $scope,
        $http,
        $log,
        $localStorage,
        $sessionStorage,
        $location
    ) {

        $scope.send = function() {
            $scope.state = 'inProgress';
            $http.post('api/orders', $sessionStorage.postBody).then(
                function () {
                    $log.log('success');
                    $scope.state = 'success';
                    delete $sessionStorage.postBody;
                },
                function () {
                    $log.log('failed');
                    $scope.state = 'failed';
                }
            );
        };

        $scope.init = function() {
            $log.log('order-sent init');

            var postBody = $sessionStorage.postBody;
            if (postBody == undefined || postBody.orderInfo == undefined) {
                $log.log('postBody is empty -> redirect to root');
                $location.path('/');
                return;
            }

            $scope.orderInfo = $localStorage.$default({orderInfo: {}});

            $scope.email = $scope.orderInfo.email;
            $scope.name = $scope.orderInfo.name;

            $scope.send();
        }();

        $scope.isSuccess = function() {
            //return false;
            return 'success' == $scope.state;
        };

        $scope.isInProgress = function() {
            //return false;
            return 'inProgress' == $scope.state;
        };

        $scope.isFailed = function() {
            //return true;
            return 'failed' == $scope.state;
        };


    }

})();