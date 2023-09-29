<?= $this->include('Frontend/İnclude/Header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div class="deslide-wrap">
            <div id="slider" class="swiper-container-initialized swiper-container-horizontal">
                <?= $this->include('Frontend/Home/Slider') ?>
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
                <?= $this->include('Frontend/Home/Trending') ?>
            </div>
        </div>
        <div id="discussion">
            <div class="container">
            <?= $this->include('Frontend/Home/Comment') ?>
            </div>
        </div>
        <div id="main-wrapper">
            <div class="container">
                <div id="main-content">
                    <div id="widget-continue-watching"></div>
                    <?= $this->include('Frontend/Home/LastEpisode') ?>
                    <?php if (auth()->user()->schedule_status ?? 1 == 1) : ?>
                        <div id="schedule-block">
                        <?= $this->include('Frontend/Home/Schedule') ?>
                        </div>
                    <?php endif; ?>
                    <?= $this->include('Frontend/Home/UpComing') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('Frontend/Home/SideBar') ?>
                <div class="clearfix"></div>
            </div>
        </div>

        <?= $this->include('Frontend/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/İnclude/LoadScript') ?>
    </div>
</body>

</html>