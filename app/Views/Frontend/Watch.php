<?= $this->include('Frontend/İnclude/Header') ?>

<body data-page="watch_page">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper">
        <?= $this->include('Frontend/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-page-detail layout-page-watchtv">
            <div id="ani_detail">
                <div class="ani_detail-stage">
                    <div class="container">
                        <div class="anis-cover-wrap">
                            <div class="anis-cover" style="background-image: url(<?= $AnimeData['ani_poster'] ?>)">
                            </div>
                        </div>
                        <div class="anis-watch-wrap">
                            <div class="prebreadcrumb">
                                <?= $this->include('Frontend/Watch/BreadCrumb') ?>
                            </div>
                            <div class="anis-watch anis-watch-tv">
                                <?= $this->include('Frontend/Watch/Player') ?>
                                <div id="player-servers" class="player-servers"></div>
                                <?= $this->include('Frontend/Watch/EpisodeSchedule') ?>
                                <div id="episodes-content">
                                    <div class="loading">
                                        <div class="span1"></div>
                                        <div class="span2"></div>
                                        <div class="span3"></div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="anis-watch-detail">
                                <div class="anis-content">
                                    <?= $this->include('Frontend/Watch/AnimeDetails') ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div id="main-content">
                    <div id="anitium-comment-system"></div>
                    <?= $this->include('Frontend/Watch/Recommended') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('Frontend/İnclude/SideBar') ?>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <?= $this->include('Frontend/İnclude/Footer') ?>
    <div id="mask-overlay"></div>
    <?= $this->include('Frontend/İnclude/WatchLoads') ?>
    <?= $this->include('Frontend/İnclude/LoadScript') ?>
</body>