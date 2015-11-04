(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['basketService', '$scope', '$route', '$routeParams', '$http', '$log',  '$sessionStorage'];

    function StoreCtrl(basketService, $scope, $route, $routeParams, $http, $log,  $sessionStorage) {

        $scope.init = function () {

            $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);

            if ($sessionStorage.shownOnPage == undefined) {
                $sessionStorage.shownOnPage = {};
            }

            if ($sessionStorage.shownOnPage[$scope.goods_type] == undefined) {
                $sessionStorage.shownOnPage[$scope.goods_type] = 36; //can be divided on 2,3,4
            }

            var loadProducts = function(goods_type, onSuccess) {

                var url = 'api/products/?goods_type=' + $scope.goods_type;

                if ($sessionStorage.products == undefined) {
                    $sessionStorage.products = {};
                }

                if ($sessionStorage.products[$scope.goods_type] == undefined) {
                    $http.get(url).success(function (data) {
                        $scope.products = data;
                        $sessionStorage.products[$scope.goods_type] = data;

                        onSuccess();
                    });
                } else {
                    $scope.products = $sessionStorage.products[$scope.goods_type];
                    onSuccess();
                }
            };

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

        $scope.shownOnPage = function () {
            return $sessionStorage.shownOnPage[$scope.goods_type];
        };

        $scope.showMore = function() {
            $sessionStorage.shownOnPage[$scope.goods_type] += 36;
        };

        $scope.hasMore = function() {
            if ($scope.products == undefined || $scope.shownOnPage() == undefined) {
                return false;
            } else {
                return $scope.products.length > $scope.shownOnPage();
            }
        };

        $scope.init();

    }
})();

