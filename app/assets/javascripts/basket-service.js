(function () {
    "use strict";

    angular.module('obelisk').factory('basketService', BasketService);

    BasketService.$inject = ['$log', '$localStorage'];

    function BasketService($log, $localStorage) {

        var basket = $localStorage.$default({items: {}});
        var onPutListeners = [];

        return {

            basket: {

                addOnPutListener: function(listenerFn) {
                    onPutListeners.push(listenerFn)
                },

                removeOnPutListener: function(listenerFn) {
                    for(var i in onPutListeners){
                        if(onPutListeners[i]==listenerFn){
                            onPutListeners.splice(i, 1);
                            break;
                        }
                    }
                },

                isEmpty: function() {
                    for (var a in basket.items) {
                        if (basket.items.hasOwnProperty(a)) {
                            return false;
                        }
                    }
                    return true;
                },

                reset: function() {
                    $localStorage.items = {};
                },

                getItems: function() {
                    return basket.items;
                },


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
                    for (var i = 0; i < onPutListeners.length; i++) {
                        onPutListeners[i]();
                    }
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


