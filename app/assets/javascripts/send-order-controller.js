(function () {

    "use strict";

    angular.module('obeliskControllers').controller('SendOrderCtrl', SendOrderCtrl);

    SendOrderCtrl.$inject = [
        'basketService',
        '$scope',
        '$log',
        '$sessionStorage',
        '$localStorage',
        '$location'
    ];

    function SendOrderCtrl(basketService,
                           $scope,
                           $log,
                           $sessionStorage,
                           $localStorage,
                           $location) {

        $scope.init = function () {
            $scope.submitted = false;
            $scope.orderInfo = $localStorage.$default({orderInfo: {}});
            $scope.phone = $scope.orderInfo.phone;
            $scope.name = $scope.orderInfo.name;
            $scope.email = $scope.orderInfo.email;
            $scope.companyName = $scope.orderInfo.companyName;
            $scope.orderComment = $scope.orderInfo.orderComment;
            $sessionStorage.postBody = {};
        }();

        $scope.sendOrder = function (valid) {

            $scope.submitted = true;
            if (!valid) {
                $log.log('form invalid');
                return;
            }

            saveToLocalStorage();

            $sessionStorage.postBody = generatePostBody();
            $location.path('/order-sent').hash("top");
        };

        function saveToLocalStorage() {
            $scope.orderInfo.phone = $scope.phone;
            $scope.orderInfo.name = $scope.name;
            $scope.orderInfo.email = $scope.email;
            $scope.orderInfo.companyName = $scope.companyName;
            $scope.orderInfo.orderComment = $scope.orderComment;
        }

        function generatePostBody() {

            var result = {
                orderInfo: {
                    phone: $scope.phone,
                    name: $scope.name,
                    email: $scope.email,
                    companyName: $scope.companyName,
                    orderComment: $scope.orderComment
                },
                items: []
            };

            var basketItems = basketService.basket.getItems();

            for (var a in basketItems) {
                if (basketItems.hasOwnProperty(a)) {
                    var item = basketItems[a];

                    result.items.push(
                        {
                            id: item.id,
                            amount: item.amount,
                            comment: item.comment
                        }
                    );

                }
            }

            return result;
        }

    }

})();