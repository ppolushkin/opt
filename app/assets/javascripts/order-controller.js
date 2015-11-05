(function () {
    "use strict";
    angular.module('obeliskControllers').controller('OrderCtrl', OrderCtrl);

    OrderCtrl.$inject = ['basketService', '$scope', '$http', '$log'];

    function OrderCtrl(basketService, $scope, $http, $log) {

        $scope.init = function() {
            $scope.basket = basketService.basket;
        }();

        $scope.reset = function() {
            $scope.basket.reset();
        };

        $scope.isBasketEmpty = function() {
            $log.log('names = ' + $scope.basket.namesAmount());
            return $scope.basket.namesAmount() == 0;
        };

    }
})();

