(function () {

    "use strict";

    angular.module('obeliskControllers').controller('SendOrderCtrl', SendOrderCtrl);

    SendOrderCtrl.$inject = ['basketService', '$scope', '$http', '$log', '$modal', '$localStorage'];

    function SendOrderCtrl(basketService, $scope, $http, $log, $modal, $localStorage) {

        $scope.init = function() {
            $scope.orderInfo = $localStorage.$default({orderInfo: {}});
            $scope.phone = $scope.orderInfo.phone;
            $scope.name = $scope.orderInfo.name;
            $scope.companyName = $scope.orderInfo.companyName;
            $scope.orderComment = $scope.orderInfo.orderComment;
        }();

        $scope.sendOrder = function () {
            var isValid = validate();
            if (!isValid) {
                return;
            }

            saveToLocalStorage();

            var postBody = generatePostBody();
            //$log.log(postBody);

            $http.post('api/orders', postBody).then(
                function() {
                    $log.log('success')
                },
                function() {
                    $log.log('failed')
                }
            );
        };


        function validate() {
            var isValid = true;
            if (!$scope.phone) {
                $scope.showPhoneIsEmpty = true;
                isValid = false;
            } else {
                $scope.showPhoneIsEmpty = false;
            }

            if (!$scope.name) {
                $scope.showNameIsEmpty = true;
                isValid = false;
            } else {
                $scope.showNameIsEmpty = false;
            }
            return isValid;
        }

        function saveToLocalStorage() {
            $scope.orderInfo.phone = $scope.phone;
            $scope.orderInfo.name = $scope.name;
            $scope.orderInfo.companyName = $scope.companyName;
            $scope.orderInfo.orderComment = $scope.orderComment;
        }

        function generatePostBody() {

            var result = {
                orderInfo: {
                    phone: $scope.phone,
                    name: $scope.name,
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
                            id : item.id,
                            amount : item.amount,
                            comment: item.comment
                        }
                    );

                }
            }

            return result;
        }



    }

})();