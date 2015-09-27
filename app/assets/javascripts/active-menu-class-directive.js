(function () {
    'use strict';

    angular.module('obelisk').directive('activeMenuClass', ActiveMenuClassDirective);

    ActiveMenuClassDirective.$inject = ['$location', '$log'];

    function ActiveMenuClassDirective($location, $log) {
        return {
            restrict: 'A',
            link: function (scope, element, attrs) {
                var links = element.find('a'),
                    urlMap = {},
                    activeClass = attrs.activeMenuClass || 'active';

                for (var i = links.length - 1; i >= 0; i--) {
                    var link = angular.element(links[i]);
                    var url = link.attr('href');

                    urlMap[url] = link;
                }

                scope.$on('$routeChangeStart', function () {
                    var path = urlMap[$location.path()];

                    links.parent('li').removeClass(activeClass);

                    if (path) {
                        path.parent('li').addClass(activeClass);
                    }
                });
            }
        };
    }

}());