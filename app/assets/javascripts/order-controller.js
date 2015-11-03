(function () {
    "use strict";
    angular.module('obeliskControllers').controller('OrderCtrl', OrderCtrl);

    OrderCtrl.$inject = ['basketService', '$scope', '$http', '$log'];

    function OrderCtrl(basketService, $scope, $http, $log) {
        $scope.basket = basketService.basket;
    }
})();

