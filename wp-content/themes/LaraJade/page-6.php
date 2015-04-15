<!-- PORTFOLIO -->
<?php 
    get_header();
    global $stylesheet_dir;
?>
				<div class="container" style="background-image: url('<?php echoPicture($stylesheet_dir,'./images/bg3.png');?> ');background-size: 100%;background-repeat: no-repeat;background-color: #040205; " role="main">

					<ul class="list">
                        <?php query_posts('cat=2'); ?>
                        
                        <?php if ( have_posts() ) : 
                            while ( have_posts() ) : the_post(); ?>
                                <li class="list__item">
                                    <figure class="list__item__inner">
                                        <figcaption>
                                            <?php
                                            echo '<a href="?page_id=82&ID=';
                                            echo get_the_ID();
                                            echo '">';
                                            the_title();?></a>
                                            <br>
                                            <?php the_content(); ?>
                                        </figcaption>
                                    </figure>'
                            <?php endwhile; 
                        endif; ?>
                        
                        <!--
												<li class="list__item">
							<figure class="list__item__inner"><img src="<?php echoPicture($stylesheet_dir,'images/portfolio/p1.jpg');?>" alt="">
								<figcaption>
									<strong>Freelance WebSite</strong>
									<br>
									 2015
								</figcaption>
							</figure>
						</li> -->
					</ul>

				</div>

<?php 
    get_footer();
?>