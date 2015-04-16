<?php 

    add_theme_support('post-thumbnails');

 $stylesheet_url = get_bloginfo('stylesheet_url');
 $stylesheet_dir = get_bloginfo('stylesheet_directory');
 $images_url = get_bloginfo('stylesheet_url').'/images/';
 
 function echoPicture($ssurl, $locurl) {
     echo $ssurl.'/'.$locurl;
 }

?>

<!-- posts 2 posts -->
<?php
function my_connection_types() {
    p2p_register_connection_type( array(
        'name' => 'blog_to_portfolio',
        'from' => 'post',
        'to' => 'post'
    ) );
}
add_action( 'p2p_init', 'my_connection_types' );
?>