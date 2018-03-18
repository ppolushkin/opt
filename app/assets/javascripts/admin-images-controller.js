(function() {

    "use strict";

    angular.module('obeliskControllers').controller('AdminImagesCtrl', AdminImagesCtrl);

    AdminImagesCtrl.$inject = [
        '$scope',
        '$http',
        '$log',
        '$sessionStorage',
        '$location',
        '$sanitize'
    ];

    function AdminImagesCtrl(
        $scope,
        $http,
        $log,
        $sessionStorage,
        $location,
        $sanitize
    ) {

        $scope.init = function () {

            redirectIfNotAllowed();
            loadImages();
        }();


        $scope.uploadImage = function () {

            var formData = new FormData();
            formData.append('myFile', $scope.myImage);
            $http.post('api/images/', formData, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).then(function () {
                $log.log('upload success');
                loadImages();
            });
        };


        $scope.deleteImage = function (name) {

            $http.delete('api/images/'+$sanitize(name)).success(function () {
                loadImages();
            });
        };


        $scope.$on('loggedIn', function() {
            redirectIfNotAllowed();
        });


        function redirectIfNotAllowed() {

            if (!$sessionStorage.loggedIn) {
                $location.path('/').hash('top');
            }
        }


        function loadImages() {

            $http.get('api/images/').success(function (data) {
                $scope.images = data;
            });
        }

    }
})();

