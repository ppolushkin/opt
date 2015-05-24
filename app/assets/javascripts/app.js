

var obelisk = angular.module('obelisk', ['ngRoute', 'obeliskControllers']);

obelisk.config(['$routeProvider',
      function($routeProvider) {
        $routeProvider.
            when('/store/:goods_type', {
                templateUrl: '/partials/store.html',
                controller: 'StoreCtrl'
            }).
            when('/page/:page_id', {
                templateUrl: 'partials/wiki.html',
                controller: 'PageCtrl'
            }).
            otherwise({
                redirectTo: '/404.html'
            });
  }]);
