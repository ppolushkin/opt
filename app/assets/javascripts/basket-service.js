(function () {
    "use strict";

    angular.module('obelisk').factory('basketService', BasketService);

    BasketService.$inject = ['$log', '$localStorage'];

    function BasketService($log, $localStorage) {

        var basket = $localStorage.$default({items: {}});

        return {

            basket: {
                getProductAmount: function (article) {
                    if (basket.items[article]) {
                        return basket.items[article].amount;
                    } else {
                        return null;
                    }
                },

                put: function (product) {
                    //debugger;
                    basket.items[product.article] = product;
                },

                delete: function (product) {
                    delete basket.items[product.article];
                },

                namesAmount: function () {
                    var result = 0;
                    for (var a in basket.items) {
                        if (basket.items.hasOwnProperty(a)) {
                            result = result + 1;
                        }
                    }
                    return result;
                },

                productsAmount: function () {
                    var result = 0;
                    for (var a in basket.items) {
                        if (basket.items.hasOwnProperty(a)) {
                            result = result + basket.items[a].amount;
                        }
                    }
                    return result;
                },

                price: function () {
                    var result = 0;
                    for (var a in basket.items) {
                        if (basket.items.hasOwnProperty(a)) {
                            result = result + basket.items[a].amount * basket.items[a].price;
                        }
                    }
                    return result;
                }

            }
        }
    }

})();


