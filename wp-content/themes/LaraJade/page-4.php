<?php 
    global $stylesheet_dir, $stylesheet_url;
    get_header();
?>              
				<div class="container" style="background-image: url('<?php echoPicture($stylesheet_dir,'./images/bg2.png');?> ');background-size: 100%;background-repeat: no-repeat;background-color: #040205; " role="main">
				
                <ul class="list">
                    	
                

                <?php
                    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                    query_posts('cat=Blog&posts_per_page='.get_option('posts_per_page').'&paged=' . $paged);
                    
                    while ( have_posts() ):      
                        the_post(); 
                        echo '<li class="blog_list__item">
						    <figure class="blog_list__item__inner">
						    <figcaption>';
                        
                        
                        echo '<img src="';
                        echo wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'single-post-thumbnail' )['0'];
                        echo '" alt="">';
                        
                        
                        echo '<strong>';
                        the_title();
                        echo '</strong>';
                        the_content('',false);
                        echo '</figcaption>
						    </figure>
						    </li>';
                    endwhile;
                    ?>
                </ul>
                
                    
                <br><br>
                
                
                <div id="nav-posts">
			        <div id="nav-posts-newer"><?php previous_posts_link('Newer Posts'); ?></div>
                    <div id="nav-posts-older"><?php next_posts_link('Older Posts'); ?></div>
		        </div>
		            

		          

		            <?php wp_reset_postdata(); ?>
                    
                    

                    
				
                      <!-- 
                      
                        <li class="blog_list__item">
							<figure class="blog_list__item__inner">
								<figcaption>
									<img src="<?php echoPicture($stylesheet_dir,'./images/blog/b1.jpg');?>" alt="">
									<strong>Let’s build some apps with Polymer!</strong>.
									Over the previous year, the Polymer team has spent a lot of time teaching developers how to create their own elements. This has lead to a rapidly growing ecosystem, buoyed in large part by Polymer’s Core and Paper elements, and the Brick elements created by the team at Mozilla.
					

								</figcaption>
							</figure>
						</li> 
						<li class="blog_list__item">
							<figure class="blog_list__item__inner">
								<figcaption>
									<img src="<?php echoPicture($stylesheet_dir,'./images/blog/b2.png');?>" alt="">
									<strong>Web Animations Playback Control in Chrome 39</strong>.
									

									Earlier this year, Chrome 36 landed the element.animate method as a part of the broader Web Animations spec. This allows for efficient, native animations written imperatively - giving developers the choice to build their animations and transitions with the most suitable.
								</figcaption>
							</figure>
						</li>
						<li class="blog_list__item">
							<figure class="blog_list__item__inner">
								<figcaption><img src="<?php echoPicture($stylesheet_dir,'./images/blog/b3.jpg');?>" alt="">
									<strong>Fundamentals of Mobile Web Development</strong>.
									

									At Chrome Dev Summit 2014 there was a whole host of topics and brand spanking new API’s covered, but its not all about the new and shiny. If you are a new Web Developer or even an experienced developer about to embark on exploring new APIs, chances are you’ll follow these three steps: learn, build and iterate. 
								</figcaption>
							</figure>
						</li>
						<li class="blog_list__item">
							<figure class="blog_list__item__inner">
								<figcaption>
									<img src="<?php echoPicture($stylesheet_dir,'./images/blog/b4.png');?>" alt="">
									<strong>image-rendering: pixelated</strong>.
									

									As web developers we play with images all the time and in most cases browsers are great at scaling images to fit the boundaries of our site designs whilst keeping the images pretty. But what happens when you want to control how the browser scales the images on your page?
								</figcaption>
							</figure>
						</li>-->
					
                    
                  
                    
                    
				</div>
<?php 
    get_footer();
?>