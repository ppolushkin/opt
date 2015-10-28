(function () {
    "use strict";
    angular.module('obeliskControllers').controller('BasketCtrl', BasketCtrl);

    BasketCtrl.$inject = ['basketService', '$scope', '$http', '$log'];

    function BasketCtrl(basketService, $scope, $http, $log) {
        $scope.basket = basketService.basket;
    }
})();

