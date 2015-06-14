

var obelisk = angular.module('obelisk', ['ngRoute', 'obeliskControllers']);

obelisk.config(['$routeProvider', '$locationProvider',
      function($routeProvider, $locationProvider) {

        $locationProvider.html5Mode(true).hashPrefix("");

        $routeProvider.
            when('/about_us', {
                templateUrl: '/partials/wiki.html',
                controller: 'PageCtrl',
                page_id: "about_us"

            }).
            when('/store/:goods_type', {
                templateUrl: '/partials/store.html',
                controller: 'StoreCtrl'
            }).
            when('/page/:page_id', {
                templateUrl: 'partials/wiki.html',
                controller: 'PageCtrl'

            });
            //.otherwise({
            //    redirectTo: '/404.html'
            //});
  }]);
