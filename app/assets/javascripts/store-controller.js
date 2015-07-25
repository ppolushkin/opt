(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['$scope', '$route', '$routeParams', '$http', '$log'];

    function StoreCtrl($scope, $route, $routeParams, $http, $log) {
        $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);

        $http.get('api/products').success(function (data) {
            $scope.products = data;
            //$log.log('1');
            //jQuery(".thumb img").lazyload();
        });

    }
})();

