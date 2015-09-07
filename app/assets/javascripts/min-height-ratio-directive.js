(function(){
    'use strict';

    angular.module('obelisk').directive('minHeightRatio', MinHeightRatioDirective);

    MinHeightRatioDirective.$inject = ['$window', '$log'];

    function MinHeightRatioDirective($window, $log) {
        return {
            restrict: 'A',
            scope: {
            },
            link: function(scope, element, attr) {

                var fixHeight = function () {
                    if (element.height() === 0) {
                        var ratio = attr['minHeightRatio'];
                        element.css("min-height", element.width() * ratio);
                    } else {
                        element.css("min-height", 0);
                    }
                };

                angular.element($window).on('resize', fixHeight);

                scope.$on('$destroy', function () {
                    angular.element($window).off('resize', fixHeight);
                });

                fixHeight();
            }
        }
    }

}());