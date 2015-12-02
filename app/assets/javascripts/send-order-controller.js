(function () {

    "use strict";

    angular.module('obeliskControllers').controller('SendOrderCtrl', SendOrderCtrl);

    SendOrderCtrl.$inject = ['basketService', '$scope', '$http', '$log', '$modal', '$localStorage'];

    function SendOrderCtrl(basketService, $scope, $http, $log, $modal, $localStorage) {

        $scope.orderInfo = $localStorage.$default({orderInfo : {}});

        $scope.phone = $scope.orderInfo.phone;
        $scope.name = $scope.orderInfo.name;
        $scope.companyName = $scope.orderInfo.companyName;
        $scope.orderComment = $scope.orderInfo.orderComment;

        $scope.sendOrder = function () {

            var isValid = true;
            if (!$scope.phone) {
                $scope.showPhoneIsEmpty = true;
                isValid = false;
            } else {
                $scope.showPhoneIsEmpty = false;
            }

            if (!$scope.name) {
                $scope.showNameIsEmpty = true;
                isValid = false;
            } else {
                $scope.showNameIsEmpty = false;
            }

            if (!isValid) {
                return;
            }

            $scope.orderInfo.phone = $scope.phone;
            $scope.orderInfo.name = $scope.name;
            $scope.orderInfo.companyName = $scope.companyName;
            $scope.orderInfo.orderComment = $scope.orderComment;



        }
    }

})();