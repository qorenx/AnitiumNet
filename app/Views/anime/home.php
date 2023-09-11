<?= $this->include('anime/gethome/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/extend/templates/head') ?>
        <div class="clearfix"></div>
        <div class="deslide-wrap">
            <div id="slider" class="swiper-container-initialized swiper-container-horizontal">
                <?= $this->include('anime/gethome/include/slider') ?>
                <div class="swiper-pagination swiper-pagination-clickable swiper-pagination-bullets"></div>
                <div class="swiper-navigation">
                    <div class="swiper-button swiper-button-next" tabindex="0" role="button" aria-label="Next slide"><i class="fas fa-angle-right"></i></div>
                    <div class="swiper-button swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide"><i class="fas fa-angle-left"></i></div>
                </div>
                <div class="clearfix"></div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
        </div>
        <div id="anime-trending">
            <div class="container">
                <?= $this->include('anime/gethome/include/trending') ?>
            </div>
        </div>
        <div id="discussion">
            <div class="container">
                <?= $this->include('anime/gethome/include/comment') ?>
            </div>
        </div>
        <div id="main-wrapper">
            <div class="container">
                <div id="main-content">
                    <div id="widget-continue-watching"></div>
                    <?= $this->include('anime/gethome/include/episode') ?>
                    <?php if (auth()->user()->schedule_status ?? 1 == 1) : ?>
                        <div id="schedule-block">
                            <?= $this->include('anime/gethome/include/schedule') ?>
                        </div>
                    <?php endif; ?>
                    <?= $this->include('anime/gethome/include/upcoming') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('anime/gethome/sidenav') ?>
                <div class="clearfix"></div>
            </div>
        </div>

        <?= $this->include('anime/extend/templates/footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>