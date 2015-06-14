(function() {
    angular.module('obelisk', ['ngRoute', 'obeliskControllers']);
    angular.module('obeliskControllers', []);
})();

(function() {
    "use strict";
    angular.module('obelisk').config(['$routeProvider', '$locationProvider',
        function($routeProvider, $locationProvider) {

            $locationProvider.html5Mode(true).hashPrefix("");

            $routeProvider.
                when('/about_us', {
                    templateUrl: '/partials/wiki.html',
                    controller: 'PageCtrl',
                    nav_id: "about_us"

                }).
                when('/store/:nav_id', {
                    templateUrl: '/partials/store.html',
                    controller: 'StoreCtrl'
                }).
                when('/page/:nav_id', {
                    templateUrl: 'partials/wiki.html',
                    controller: 'PageCtrl'

                });
            //.otherwise({
            //    redirectTo: '/404.html'
            //});
        }]);

    angular.module('obelisk').run(['$rootScope',
            function($rootScope) {
                $rootScope.UTIL = {

                    getNavId: function(route, routeParams) {
                        if (route.current.$$route.nav_id) {
                            return route.current.$$route.nav_id;
                        } else {
                            return routeParams.nav_id;
                        }
                    }

                    //etc more functions here...

                };
            }]);



})();


