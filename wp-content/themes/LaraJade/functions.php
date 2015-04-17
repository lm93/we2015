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
        'name' => 'post_to_portfolio_entry',
        'from' => 'post',
        'to' => 'portfolio_entry',    
        'cardinality' => 'many-to-many',
        'reciprocal' => true
    ) );
}

add_action( 'p2p_init', 'my_connection_types' );
?>
<!--add_action( 'p2p_init', 'my_connection_types' );-->




<?php
function my_custom_post_product() {
  $labels = array(
    'name'               => _x( 'Portfolio Entries', 'post type general name' ),
    'singular_name'      => _x( 'Portfolio Entry', 'post type singular name' ),
    'add_new'            => _x( 'Add New', 'entry' ),
    'add_new_item'       => __( 'Add New Entry' ),
    'edit_item'          => __( 'Edit Entry' ),
    'new_item'           => __( 'New Entry' ),
    'all_items'          => __( 'All Entries' ),
    'view_item'          => __( 'View Entries' ),
    'search_items'       => __( 'Search Entries' ),
    'not_found'          => __( 'No entries found' ),
    'not_found_in_trash' => __( 'No entries found in the Trash' ), 
    'parent_item_colon'  => '',
    'menu_name'          => 'Portfolio'
  );
  $args = array(
    'labels'        => $labels,
    'description'   => 'Holds our products and product specific data',
    'public'        => true,
    'menu_position' => 5,
    'supports'      => array( 'title', 'editor', 'thumbnail'),//'excerpt', 'comments' ),
    'has_archive'   => true,
  );
  register_post_type( 'portfolio_entry', $args ); 
}
add_action( 'init', 'my_custom_post_product' );
?>

<?php
function add_pfolio_post_type_metabox() {
    add_meta_box( 'pfolio_metabox', 'Portfolio entry', 'pfolio_metabox', 'portfolio_entry', 'normal' );
}

function pfolio_metabox() {
    global $post;
    $custom = get_post_custom [ $post -> ID];
    $year = $custom ['pfolio_year'][0];
    $url = $custom ['pfolio_url'][0];
    ?><div class = "pfolio">
        <p> 
            <label>Year <br><input type="text" name="year" size="50" 
            value = "<?php echo $year;?>"> <\label>
        </p>
        <p> 
            <label>URL <br><input type="text" name="url" size="50" 
            value = "<?php echo $url;?>"> </label>
        </p>
    </div>
            
<?php }

function pfolio_save_meta( $post_id, $post ) {
    // is the user allowed to edit the post or page?
    if( ! current_user_can( 'edit_post', $post->ID )){
        return $post->ID;
    }
    $pfolio_entry_meta['pfolio_entry_year'] = $_POST['year'];
    $pfolio_entry_meta['pfolio_entry_url'] = $_POST['url'];
    // add values as custom fields
    foreach( $pfolio_entry_meta as $key => $value ) {
        if( get_post_meta( $post->ID, $key, FALSE ) ) {
            // if the custom field already has a value
            update_post_meta($post->ID, $key, $value);
        } else {
            // if the custom field doesn't have a value
            add_post_meta( $post->ID, $key, $value );
        }
        if( !$value ) {
            // delete if blank
            delete_post_meta( $post->ID, $key );
        }
    }
}
add_action( 'save_pfolio', 'pfolio_save_meta', 1, 2 );
// save the custom fields
?>
