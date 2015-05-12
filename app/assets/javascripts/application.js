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
//= require jquery-2.1.4
//= require bootstrap
//= require session
// require_tree


$( document ).ready(function() {

    var path = window.location.pathname;
    var selector = "li a[href*='" + path + "']";

    $(selector).parent().addClass('active');

});





//$( document ).ready(function() {
//    console.log( "ready!" );
//    $("a[data-method|=delete]").on( "click", function( event ) {
//        var path = this.href;
//        var token = $( 'meta[name="csrf-token"]' ).attr( 'content' );
//        $.ajax({
//            url: path,
//            type: 'DELETE',
//            beforeSend: function ( xhr ) {
//                xhr.setRequestHeader( 'X-CSRF-Token', token );
//            },
//            success: function (d,s) {
//                window.location.href = d.state;
//                //$('#login_area').load(d.state);
//            }
//        });
//        event.preventDefault();
//    });
//
//});

