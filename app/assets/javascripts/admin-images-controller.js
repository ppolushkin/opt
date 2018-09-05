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
            doInitialization();
        }();

        $scope.uploadEnabled = function () {
             return (typeof $scope.myImage !== 'undefined') && !$scope.uploadInProgress;
        };

        $scope.uploadImage = function () {

            $scope.uploadInProgress = true;
            $scope.uploadBtnCaption = 'Загрузка...';
            var formData = new FormData();
            formData.append('id','венок');
            formData.append('myFile', $scope.myImage);
            $http.post('api/images/', formData, {
                transformRequest: angular.identity,
                headers: {'Content-Type': undefined}
            }).then(function () {
                doInitialization();
            }, function () {
                doInitialization();
            });
        };

        $scope.deleteImage = function (image) {

            var nm = image.name;
            image.url = 'Удаление';

            $http.delete('api/images/'+$sanitize(nm)).success(function () {
                doInitialization();
            }, function () {
                doInitialization();
            });
        };


        $scope.$on('loggedIn', function() {
            redirectIfNotAllowed();
        });

        function doInitialization() {

            $scope.uploadInProgress = false;
            $scope.uploadBtnCaption = 'Загрузить';
            redirectIfNotAllowed();
            loadImages();
        }


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

