/**
 * Created by pavel on 24.05.15.
 */

(function() {
    "use strict";
    angular.module('obeliskControllers').controller('PageCtrl', PageCtrl);

    PageCtrl.$inject = ['$scope', '$routeParams', '$route'];

    function PageCtrl($scope, $routeParams, $route) {

        $scope.page_id = $scope.UTIL.getNavId($route, $routeParams);

        $scope.content = "I'm page " + $scope.page_id;
    }
})();

