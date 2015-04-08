<!-- single blog post page-->

<?php 
    global $stylesheet_dir, $stylesheet_url;
    get_header();
?>              
<div class="container" style="background-image: url('<?php echoPicture($stylesheet_dir,'./images/bg2.png');?> ');background-size: 100%;background-repeat: no-repeat;background-color: #040205; " role="main">

<?php
    $ID_blog_post = $_GET["ID"];
?>
    <ul class="list">
        <li class="blog_list__item">
            <figure class="blog_list__item__inner">
                <figcaption>
                    <?php
                            $a = array('p'=>$ID_blog_post);
                            query_posts($a);
                            the_post();
                            $more=1;
                            echo '<img src="';
                            echo wp_get_attachment_image_src( get_post_thumbnail_id( $ID_blog_post ), 'single-post-thumbnail' )['0'];
                            echo '" alt="">';
                            echo '<strong>';
                            echo get_the_title($ID_blog_post);
                            echo '</strong>';
                            echo '<br><br>';
                            the_content();

                    ?>
                </figcaption>
            </figure>
        </li>
    </ul>
</div>


<?php 
    get_footer();
?>
