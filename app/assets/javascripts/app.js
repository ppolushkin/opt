(function() {
    angular.module('obelisk', ['ngRoute', 'obeliskControllers']);
    angular.module('obeliskControllers', ['ngSanitize', 'angularLazyImg']);
})();

(function() {
    "use strict";
    angular.module('obelisk').config(['$routeProvider', '$locationProvider',
        function($routeProvider, $locationProvider) {

            $locationProvider.html5Mode(true).hashPrefix("");

            $routeProvider.
                when('/', {
                    templateUrl: '/partials/wiki.html',
                    controller: 'PageCtrl',
                    nav_id: "about_us"

                }).
                when('/about_us', {
                    templateUrl: '/partials/wiki.html',
                    controller: 'PageCtrl',
                    nav_id: "about_us"

                }).
                when('/links', {
                    templateUrl: '/partials/wiki.html',
                    controller: 'PageCtrl',
                    nav_id: "links"

                }).
                when('/contacts', {
                    templateUrl: '/partials/wiki.html',
                    controller: 'PageCtrl',
                    nav_id: "contacts"

                }).

                when('/ritual_venki', {
                    templateUrl: '/partials/store.html',
                    controller: 'StoreCtrl',
                    nav_id: "ritual_venki"
                }).
                when('/ritual_korsinu', {
                    templateUrl: '/partials/store.html',
                    controller: 'StoreCtrl',
                    nav_id: "ritual_korsinu"
                }).
                when('/goods', {
                    templateUrl: '/partials/store.html',
                    controller: 'StoreCtrl',
                    nav_id: "goods"

                }).
                when('/may_9', {
                    templateUrl: '/partials/store.html',
                    controller: 'StoreCtrl',
                    nav_id: "may_9"
                }).
                when('/novinki', {
                    templateUrl: '/partials/store.html',
                    controller: 'StoreCtrl',
                    nav_id: "novinki"
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


