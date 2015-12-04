
(function () {

    "use strict";

    angular.module('obeliskControllers').controller('BasketCtrl', BasketCtrl);

    BasketCtrl.$inject = ['basketService', '$scope', '$location', '$timeout'];

    function BasketCtrl(basketService, $scope, $location, $timeout) {

        var timer;

        $scope.init = function() {
            $scope.basket = basketService.basket;
            $scope.isShaking = false;
        }();

        $scope.$on('putToBasket', function() {
            $scope.isShaking = true;

            timer = $timeout(
                function() {
                    $scope.isShaking = false;
                },
                1000
            )
        });

        $scope.$on("$destroy", function() {
            if (timer) {
                $timeout.cancel(timer);
            }
        });

        $scope.isOnOrderPage = function() {
            var r = '/order#top' === $location.url()
                || '/order' === $location.url()
                || '/order-sent' === $location.url()
                || '/order-sent#top' === $location.url()
                || '/admin/pages' === $location.url()
                || '/send-order' === $location.url();
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

