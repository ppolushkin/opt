/**
 * Created by pavel on 24.05.15.
 */

var obeliskControllers = angular.module('obeliskControllers', []);

obeliskControllers.controller('StoreCtrl', StoreCtrl);

StoreCtrl.$inject = ['$scope', '$routeParams'];

function StoreCtrl($scope, $routeParams) {
    $scope.goods_type = $routeParams.goods_type;
}

obeliskControllers.controller('PageCtrl', PageCtrl);

PageCtrl.$inject = ['$scope', '$routeParams', '$route'];

function PageCtrl($scope, $routeParams, $route) {
    if ($route.current.$$route.page_id) {
        $scope.page_id = $route.current.$$route.page_id;
    } else {
        $scope.page_id = $routeParams.page_id;
    }

    $scope.content = "I'm page " + $scope.page_id;
}
