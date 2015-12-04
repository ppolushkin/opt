/**
 * Created by pavel on 24.05.15.
 */

(function() {
    "use strict";

    angular.module('obeliskControllers').controller('PageCtrl', PageCtrl);

    PageCtrl.$inject = ['$scope', '$routeParams', '$route', '$http', '$log', '$sessionStorage'];

    function PageCtrl($scope, $routeParams, $route, $http, $log, $sessionStorage) {

        $scope.init = function () {

            $scope.page_id = $scope.UTIL.getNavId($route, $routeParams);

            if ($sessionStorage.pages == undefined) {
                $sessionStorage.pages = {};
            }

            if ($sessionStorage.pages[$scope.page_id] == undefined) {
                $http.get('api/pages/'+ $scope.page_id).success(function (data) {
                    $scope.content = data.content;
                    $sessionStorage.pages[$scope.page_id] = data.content;
                });
            } else {
                $scope.content = $sessionStorage.pages[$scope.page_id];
            }
        };

        $scope.init();
    }
})();

