(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['basketService', '$scope', '$route', '$routeParams', '$http', '$log',  '$sessionStorage', '$modal', '$location'];

    function StoreCtrl(basketService, $scope, $route, $routeParams, $http, $log,  $sessionStorage, $modal, $location) {

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

        $scope.getButtonLabelText = function(product) {
            if ($scope.isInBasket(product)) {
                return 'В корзине: ' + product.amount;
            } else {
                return 'В корзину';
            }
        };

        $scope.openToBasketDialog = function(product) {
            var modalInstance = $modal.open({
                templateUrl: '/partials/to-basket.html',
                animation: true,
                size: 'sm',
                controller: 'ToBasketCtrl',
                resolve: {
                    amount: function () {
                        return product.amount;
                    }
                }
            });

            modalInstance.result.then(function (obj) {
                product.amount = obj.amount;
                basketService.basket.put(product);

                if (obj.navigate) {
                    $log.log('navigate');
                    $location.path("/order").hash("top");
                }

            });

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

        $scope.$on('basketReset', function() {
            $scope.init();
        });

        $scope.init();

    }

    /**
     *  ToBasketCtrl
     */
    angular.module('obeliskControllers').controller('ToBasketCtrl', ToBasketCtrl);

    ToBasketCtrl.$inject = ['$scope', '$modalInstance', '$log', 'amount'];

    function ToBasketCtrl($scope, $modalInstance, $log, amount) {

        $scope.amount = amount;

        $scope.ok = function () {
            $modalInstance.close({amount: $scope.amount, navigate: false});
        };

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };

        $scope.navigateToOrder = function () {
            $modalInstance.close({amount: $scope.amount, navigate: true});
        };

    }


})();

