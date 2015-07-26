/**
 * Created by pavel on 24.05.15.
 */

(function() {
    "use strict";

    angular.module('obeliskControllers').controller('PageCtrl', PageCtrl);

    PageCtrl.$inject = ['$scope', '$routeParams', '$route', '$http', '$log'];

    function PageCtrl($scope, $routeParams, $route, $http, $log) {

        $scope.page_id = $scope.UTIL.getNavId($route, $routeParams);

        //$scope.content = "I'm page " + $scope.page_id;

        $http.get('api/revisions/last/'+ $scope.page_id).success(function (data) {
            $scope.content = data.content;
            $log.log('success');
            //jQuery(".thumb img").lazyload();
        });


    }
})();

