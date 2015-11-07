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

