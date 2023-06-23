<?= $this->include('anime/templates/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/templates/head') ?>
        <div class="clearfix"></div>
        <div class="deslide-wrap">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="slider" class="swiper-container-initialized swiper-container-horizontal">
                    <?= $this->include('anime/homepage/slidebar') ?>
                    <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
                    <div class="swiper-navigation">
                        <div class="swiper-button swiper-button-next" tabindex="0" role="button" aria-label="Next slide"><i class="fas fa-angle-right"></i></div>
                        <div class="swiper-button swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide"><i class="fas fa-angle-left"></i></div>
                    </div>
                    <div class="clearfix"></div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                </div>
            </div>
        </div>
        <?= $this->include('anime/homepage/trending') ?>
        <div id="anime-featured">
        </div>
        <div id="main-wrapper">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="main-content">
                    <?= $this->include('anime/homepage/lastest-episode') ?>
                    <?php if (auth()->user()->schedule_status ?? 1 == 1) : ?>
                        <?= $this->include('anime/homepage/schedule') ?>
                    <?php endif; ?>
                    <?= $this->include('anime/homepage/topupcoming') ?>
                    <div class="clearfix"></div>
                    <?= $this->include('anime/homepage/randomanime') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('anime/homepage/sidenavhome') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('anime/templates/footer') ?>
        <div id="mask-overlay"></div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
        </script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
        <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
</body>

</html>