(function () {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['$scope', '$route', '$routeParams', '$http'];

    function StoreCtrl($scope, $route, $routeParams, $http) {
        $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);

        $http.get('api/products').success(function (data) {
            $scope.products = data;
        });

    }
})();

