(function () {
    "use strict";
    angular.module('obeliskControllers').controller('OrderCtrl', OrderCtrl);

    OrderCtrl.$inject = ['basketService', '$scope', '$http', '$log', '$modal'];

    function OrderCtrl(basketService, $scope, $http, $log, $modal) {

        $scope.init = function() {
            $scope.basket = basketService.basket;
        }();

        $scope.reset = function() {
            $scope.basket.reset();
        };

        $scope.isBasketEmpty = function() {
            return $scope.basket.isEmpty();
        };

        $scope.openDetailedView = function(product) {
            //var modalInstance =
            $modal.open({
                templateUrl: '/partials/detailed-view.html',
                animation: true,
                size: 'sm',
                controller: 'DetailedViewCtrl',
                resolve: {
                    product: function () {
                        return product;
                    }
                }
            });

            //modalInstance.result.then(function (loggedIn) {
            //    $scope.loggedIn = loggedIn;
            //});

        };
    }

    angular.module('obeliskControllers').controller('DetailedViewCtrl', DetailedViewCtrl);

    DetailedViewCtrl.$inject = ['$scope', '$modalInstance', '$http', '$log', 'product'];

    function DetailedViewCtrl($scope, $modalInstance, $http, $log, product) {

        $scope.product = product;


    }

})();

