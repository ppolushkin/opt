function hover_button(link_with_image_selector, image1, image2) {
    jQuery(document).ready(function() {
        jQuery(link_with_image_selector).hover(function() {
            jQuery(this).find("img").attr("src", image2);
        }, function() {
            jQuery(this).find("img").attr("src", image1);
        });
    });
}


