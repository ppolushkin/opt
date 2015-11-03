(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['basketService', '$scope', '$route', '$routeParams', '$http', '$log',  '$sessionStorage'];

    function StoreCtrl(basketService, $scope, $route, $routeParams, $http, $log,  $sessionStorage) {

        $scope.init = function () {

            var loadProducts = function(goods_type, onSuccess) {
                var url = 'api/products/?goods_type=' + $scope.goods_type;
                debugger;
                if ($sessionStorage.products == undefined ||
                    $sessionStorage.products[goods_type] == undefined
                ) {
                    $http.get(url).success(function (data) {
                        $scope.products = data;
                        $sessionStorage.products[goods_type] = data;

                        onSuccess();
                    });
                } else {
                    $scope.products = $sessionStorage.products[goods_type];
                    onSuccess();
                }
            };

            $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);

            loadProducts($scope.goods_type, function() {
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

