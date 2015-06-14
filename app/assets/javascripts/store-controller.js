(function() {
    "use strict";
    angular.module('obeliskControllers').controller('StoreCtrl', StoreCtrl);

    StoreCtrl.$inject = ['$scope', '$route', '$routeParams'];

    function StoreCtrl($scope, $route, $routeParams) {


        $scope.goods_type = $scope.UTIL.getNavId($route, $routeParams);
    }
})();

