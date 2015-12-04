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

            $scope.editMode = false;

            $http.get('api/pages/').success(function (data) {
                $scope.pages = data;
            });
        }();


        $scope.edit = function(page) {
            $scope.editMode = true;
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
        };

        $scope.save = function() {

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
                function () {
                    $log.log('failed');
                    $scope.saveFailed = true;
                }
            );

        };

        $scope.$on('loggedIn', function() {
            redirectIfNotAllowed();
        });

        $scope.saveBtnCaption = function() {
            if ($scope.saveFailed) {
                return 'Ошибка';
            } else {
                return 'Сохранить';
            }
        };

        function redirectIfNotAllowed() {
            if (!$sessionStorage.loggedIn) {
                $location.path('/').hash('top');
            }
        }

    }
})();

