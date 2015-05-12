$( document ).ready(function() {

    $(".logout-link").on( "click", function( event ) {
        var path = this.href;
        var token = $( 'meta[name="csrf-token"]' ).attr( 'content' );
        $.ajax({
            url: path,
            type: 'DELETE',
            beforeSend: function ( xhr ) {
                xhr.setRequestHeader( 'X-CSRF-Token', token );
            },
            success: function (d,s) {
                $('#login_area').load(d.state);
            }
        });
        event.preventDefault();
    });

});
