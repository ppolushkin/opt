(function () {
    "use strict";
    angular.module('obeliskControllers').controller('BasketCtrl', BasketCtrl);

    BasketCtrl.$inject = ['basketService', '$scope', '$location', '$log'];

    function BasketCtrl(basketService, $scope, $location, $log) {

        $scope.basket = basketService.basket;

        $scope.isOnBasketPage = function() {
            var r = '/order#top' === $location.url();
            //$log.log('isOnBasketPage = ' + r );
            return r;
        };

        $scope.reset = function() {
            $scope.basket.reset();
        };

        $scope.isBasketEmpty = function() {
            return $scope.basket.isEmpty();
        };


    }
})();

