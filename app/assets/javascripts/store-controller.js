(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['basketService', '$scope', '$route', '$routeParams', '$http', '$log'];

    function StoreCtrl(basketService, $scope, $route, $routeParams, $http, $log) {

        $scope.init = function () {
            $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);

            var url = 'api/products/?goods_type=' + $scope.goods_type;

            $http.get(url).success(function (data) {
                $scope.products = data;

                var l = $scope.products.length;
                for (var i = 0; i < l; i++) {
                    var product = $scope.products[i];
                    product.amount = basketService.basket.getProductAmount(product.article);
                }

            });
        };

        $scope.putToBasket = function (product) {
            if (product.amount == null) {
                product.amount = 1;
            } else {
                product.amount += 1;
            }
            basketService.basket.put(product);
        };

        $scope.updateAmount = function (product) {
            if (product.amount == null || product.amount == 0) {
                basketService.basket.delete(product);
            } else {
                basketService.basket.put(product);
            }
        };

        $scope.removeFromBasket = function (product) {
            product.amount = null;
            basketService.basket.delete(product);
        };

        $scope.isInBasket = function (product) {
            if (product.amount == null) {
                return false;
            } else {
                return product.amount > 0;
            }
        };

        $scope.init();

    }
})();

