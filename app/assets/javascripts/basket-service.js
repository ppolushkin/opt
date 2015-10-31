(function() {
    "use strict";

    angular.module('obelisk').factory('basketService', BasketService);

    BasketService.$inject = ['$log'];

    function BasketService($log) {

        var items = {};

        return {

            basket: {
                getProductAmount: function(article) {
                    if (items[article]) {
                        return items[article].amount;
                    } else {
                        return null;
                    }
                },

                put: function(product) {
                    //debugger;
                    items[product.article] = product;
                },

                delete: function(product) {
                    delete items[product.article];
                },

                namesAmount : function() {
                    var result = 0;
                    for (var a in items) {
                        result = result + 1;
                    }
                    return result;
                },

                productsAmount: function() {
                    var result = 0;
                    for (var a in items) {
                        result = result + items[a].amount;
                    }
                    return result;
                },

                price: function() {
                    var result = 0;
                    for (var a in items) {
                       result = result + items[a].amount * items[a].price;
                    }
                    return result;
                }

            }
        }
    }

})();


