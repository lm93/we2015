<!-- single PORTFOLIO ENTRY page-->

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
                        $a = array('p'=>$ID_blog_post); //TODO portfolio entries
                        query_posts($a);                //todo
                        the_post();
                        $more=1;
                        echo '<img src="';              //todo
                        echo wp_get_attachment_image_src( get_post_thumbnail_id( $ID_blog_post ), 'single-post-thumbnail' )['0'];
                        echo '" alt="">';
                        echo '<strong>';
                        echo get_the_title($ID_blog_post); //todo
                        echo '</strong>';
                        echo '<br><br>';
                        the_content();
                        echo '<br><br>';
                        echo '<h5>Description: </h5>';
                        echo get_post_meta($_GET["ID"], 'description', true);

                        echo '<br><br>';
                        echo '<a href="';
                        echo get_post_meta($_GET["ID"], 'website', true);
                        
                        echo '">to the website</a><br/>';
                        echo '<a href="?page_id=6';
                        echo '">back to the projects</a>';
                            

                    ?>
                </figcaption>
            </figure>
        </li>
    </ul>
</div>


<?php 
    get_footer();
?>