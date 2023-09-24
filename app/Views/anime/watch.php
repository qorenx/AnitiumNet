<?= $this->include('anime/getepisode/header') ?>

<body>
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper">
        <?= $this->include('anime/extend/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-page-detail layout-page-watchtv">
            <div id="ani_detail">
                <div class="ani_detail-stage">
                    <div class="container">
                        <div class="anis-cover-wrap">
                            <div class="anis-cover" style="background-image: url(<?= $animeData['ani_poster'] ?>)">
                            </div>
                        </div>
                        <div class="anis-watch-wrap">
                            <div class="prebreadcrumb">
                                <?= $this->include('anime/getepisode/include/breadcrumb') ?>
                            </div>
                            <div class="anis-watch anis-watch-tv">
                                <div class="watch-player">
                                    <?= $this->include('anime/getepisode/include/playeriframe') ?>
                                    <?= $this->include('anime/getepisode/include/playercontrols') ?>
                                </div>
                                <div class="player-servers">
                                    <?= $this->include('anime/getepisode/watch/server') ?>
                                </div>
                                <?= $this->include('anime/getepisode/include/schedule') ?>
                                <?= $this->include('anime/getepisode/include/episodelist') ?>
                            </div>
                            <div class="anis-watch-detail">
                                <div class="anis-content">
                                    <?= $this->include('anime/getepisode/include/animedetails') ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div id="main-content">
                    <?= $this->include('anime/getepisode/comment/loadtabs') ?>
                    <?= $this->include('anime/getepisode/include/recommended') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('anime/getepisode/sidenav') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('anime/loadscript') ?>
        <?= $this->include('anime/getepisode/load') ?>
        <?= $this->include('anime/extend/templates/footer') ?>
    </div>
    <div id="mask-overlay"></div>
</body>