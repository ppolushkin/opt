(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['$scope', '$route', '$routeParams', '$http', '$log'];

    function StoreCtrl($scope, $route, $routeParams, $http, $log) {

        $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);

        var url = 'api/products/?goods_type='+$scope.goods_type;

        $http.get(url).success(function (data) {
            $scope.products = data;
        });

        $scope.putToBasket = function(product) {
            if (product.amount == null) {
                product.amount = 1;
            } else {
                product.amount += 1;
            }
        };

        $scope.isInBasket = function(product) {
            if (product.amount == null) {
                return false;
            } else {
                return product.amount >0;
            }
        }

    }
})();

