// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require angular/angular.min
// require session
// require_tree


//$( document ).ready(function() {
//
//    var path = window.location.pathname;
//    var selector = "li a[href*='" + path + "']";
//
//    $(selector).parent().addClass('active');
//
//});


var app = angular.module('obelisk', []);

app.controller('mainCtrl', function ($scope) {
    $scope.name = "AngularJS"
});



