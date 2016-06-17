<?php /* ?>
<style>
.mfp-bg {
    position: fixed !important;
    margin:auto !important;
    top: 0 !important;
    left: 0 !important;
    right: 0 !important;
    bottom: 0 !important;
    width: 90% !important;
    height: 100% !important;
    z-index: 1042 !important;
    overflow: hidden !important;
    background: rgba(0,0,0,0.85) !important;
    opacity: 1 !important;
    padding:0em !important;
    filter: alpha(opacity=100) !important;
}  

button.mfp-close, button.mfp-arrow{
    position:absolute !important;
    right:3em !important;
} 

.flexslider .slider-wrap{
    width: 80% !important;
    height:auto !important;
    margin:auto !important;
    padding:0em !important; 
}
<?php */ ?>

<style>
.mfp-bg {
    position: fixed !important;
    margin:auto !important;
    top: 0 !important;
    left: 0 !important;
    right: 0 !important;
    bottom: 0 !important;
    width: 90% !important;
    height: 100% !important;
    z-index: 1042 !important;
    overflow: hidden !important;
    background: rgba(0,0,0,0.85) !important;
    opacity: 1 !important;
    padding:0em !important;
    filter: alpha(opacity=100) !important;
} 

button.mfp-close, button.mfp-arrow{
    position:absolute !important;
    right:3em !important;
} 

.mfp-content{
width: 66% !important;
position: relative;
z-index: 1000000;
}

@media only screen and (max-width: 749px) {
    
    .flexslider .slider-wrap img{
        clear:both !important;
        width: 100% !important;
    }

    .slider-wrap{
        padding: none !important;
    }

        .antes{
            top:0 !important;
            bottom:inherit !important;
            width: 100% !important;
        }

        .despues{
            width: 100% !important;
            left:0;
            right:inherit !important;
        }

}


</style>


<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">


        <!-- Page Title
        ============================================= -->
        <section id="page-title">

            <div class="container clearfix">
                <h1>Galeria</h1>
<!--                <span>Showcase of Our Awesome Works in 3 Columns</span>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Portfolio</li>
                </ol>-->
            </div>

        </section><!-- #page-title end -->

<!-- Content
        ============================================= -->
        <section id="content">

            <div class="content-wrap">

                <div class="container clearfix">

                    <!-- Portfolio Filter
                    ============================================= -->
                    

                    <div class="clear"></div>

                    <!-- Portfolio Items
                    ============================================= -->
                    <div id="portfolio" class="portfolio-4 portfolio-nomargin clearfix">

                        <?php foreach($galeria as $g){ ?>
                        <article class="portfolio-item pf-icons pf-illustrations">
                            <div class="portfolio-image">
                                <a href="portfolio-single.html">
                                    <img src="<?=$this->config->base_url();?>fronted_inicio/procedimientos/<?=$g->img_principal_procedimiento?>" alt="Open Imagination">
                                </a>
                                <div class="portfolio-overlay" data-lightbox="gallery">
                                    <div class="portfolio-desc">
                                        <h3><?=$g->titulo;?></h3>
                                        <span><?=$g->sub_titulo;?></span>
                                    </div>
                                    <a href="<?=$this->config->base_url();?>index.php/web/fotos/<?=$ln?>/<?=$g->id_procedimiento?>" class="left-icon" data-lightbox="ajax"><i class="icon-line-stack-2"></i></a>
                                    
                                </div>
                            </div>
                        </article>
                        <?php } ?>

                    </div><!-- #portfolio end -->

                </div>

            </div>

        </section><!-- #content end -->
        
        <!-- Footer
        ============================================= -->
        
        <!-- #footer end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="<?=$this->config->base_url();?>fronted_inicio/js/functions.js"></script>

</body>
</html>

