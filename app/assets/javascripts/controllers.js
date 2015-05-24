/**
 * Created by pavel on 24.05.15.
 */

var obeliskControllers = angular.module('obeliskControllers', []);

obeliskControllers.controller('StoreCtrl', StoreCtrl);

StoreCtrl.$inject = ['$scope', '$routeParams'];

function StoreCtrl($scope, $routeParams) {

    $scope.goods_type = $routeParams.goods_type;

    $scope.phones = [
        {'name': 'Nexus S',
            'snippet': 'Fast just got faster with Nexus S.'},
        {'name': 'Motorola XOOM™ with Wi-Fi',
            'snippet': 'The Next, Next Generation tablet.'},
        {'name': 'MOTOROLA XOOM™',
            'snippet': 'The Next, Next Generation tablet.'}
    ];
}

obeliskControllers.controller('PageCtrl', PageCtrl);

PageCtrl.$inject = ['$scope', '$routeParams'];

function PageCtrl($scope, $routeParams) {
    $scope.page_id = $routeParams.page_id;
    $scope.content = "I'm page " + $scope.page_id;
}
