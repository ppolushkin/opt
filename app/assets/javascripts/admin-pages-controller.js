(function() {

    "use strict";

    angular.module('obeliskControllers').controller('AdminPagesCtrl', AdminPagesCtrl);

    AdminPagesCtrl.$inject = [
        '$scope',
        '$http',
        '$log',
        '$sessionStorage',
        '$location'
    ];

    function AdminPagesCtrl(
        $scope,
        $http,
        $log,
        $sessionStorage,
        $location
    ) {

        $scope.init = function () {

            redirectIfNotAllowed();
            loadPages();
            $scope.editMode = false;

        }();

        $scope.delete = function (page) {

            $http.delete(
                'api/pages/' + page.reference
            ).success(function () {
                $log.log('page deleted');
                loadPages();
            });
        };

        $scope.addNewPage = function () {
            $scope.editMode = true;
            $scope.addMode = true;
            $scope.saveFailed = false;
            $scope.editingPage = {};
        };

        $scope.edit = function(page) {
            $scope.editMode = true;
            $scope.addMode = false;
            $scope.saveFailed = false;

            $http.get('api/pages/' + page.reference).success(function (data) {
                $scope.editingPage = {};

                $scope.editingPage.reference = data.reference;
                $scope.editingPage.title = data.title;
                $scope.editingPage.content = data.content;

            });
        };

        $scope.switchOffEditMode = function() {
            $scope.editMode = false;
            loadPages();
        };

        $scope.save = function() {

            if ($scope.addMode) {
                $http.post(
                    'api/pages',
                    {
                        reference: $scope.editingPage.reference,
                        title: $scope.editingPage.title,
                        content: $scope.editingPage.content
                    }
                ).then(
                    function () {
                        $log.log('success');
                        $scope.saveFailed = false;
                        $scope.switchOffEditMode();
                    },
                    function (response) {
                        $scope.errorCode = response.status;
                        $scope.errorMessage = response.data.message;
                        $scope.saveFailed = true;
                    }
                );

            } else {
                $http.put(
                    'api/pages/' + $scope.editingPage.reference,
                    {
                        title: $scope.editingPage.title,
                        content: $scope.editingPage.content
                    }
                ).then(
                    function () {
                        $log.log('success');
                        $scope.saveFailed = false;
                        $scope.switchOffEditMode();
                    },
                    function (response) {
                        $scope.errorCode = response.status;
                        $scope.errorMessage = response.data.message;
                        $scope.saveFailed = true;
                    }
                );
            }
        };

        $scope.$on('loggedIn', function() {
            redirectIfNotAllowed();
        });

        $scope.saveBtnCaption = function() {
            if ($scope.addMode) {
                return 'Создать';
            } else {
                return 'Сохранить';
            }
        };

        function redirectIfNotAllowed() {
            if (!$sessionStorage.loggedIn) {
                $location.path('/').hash('top');
            }
        }

        function loadPages() {
            $http.get('api/pages/').success(function (data) {
                $scope.pages = data;
            });
        }

    }
})();

