<?= $this->include('anime/templates/header') ?>
<?= $this->include('anime/templates/head') ?>

<body data-page="movie_watch">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="movie_watch">
        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_watch" data-id="">
            <div id="ani_detail">
                <div class="ani_detail-stage">
                    <div class="container" style="max-width:100%!important;width:100%!important;">
                        <div class="anis-cover-wrap">
                            <div class="anis-cover" style="background-image: url('<?= $animeData['ani_wallpaper'] ?>')">
                            </div>
                        </div>
                        <div class="anis-watch-wrap">
                            <div class="prebreadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item">
                                            <a itemprop="item" href="/"><span itemprop="name">Home</span></a>
                                            <meta itemprop="position" content="1">
                                        </li>
                                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item">
                                            <a itemprop="item" href="<?= base_url('anime/' . $episodesData[0]['uid'] . "/" . str_replace(" ", "-", $animeData['ani_name'])) ?>"><span itemprop="name">Anime</span></a>
                                            <meta itemprop="position" content="2">
                                        </li>
                                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item" aria-current="page">
                                            <a itemprop="item"><span itemprop="name">Episode-<?= $episodesData[0]['ep_id_name'] ?></span></a>
                                            <meta itemprop="position" content="3">
                                        </li>
                                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item" aria-current="page">
                                            <a itemprop="item" href="<?= current_url() ?>"><span itemprop="name"><?= !empty($episodesData[0]['ep_name']) ?  $episodesData[0]['ep_name'] : "Unknown" ?> </span></a>
                                            <meta itemprop="position" content="4">
                                        </li>
                                    </ol>
                                </nav>
                            </div>
                            <div class="anis-watch anis-watch-tv">
                                <div class="watch-player">
                                    <div class="player-frame">
                                        <script>
                                            function playVideo(videoUrl) {
                                                const apiUrl = "";
                                                const embeddedUrl = apiUrl.concat(videoUrl);
                                                document.getElementById("iframe-embed").setAttribute("src", embeddedUrl);
                                            }
                                        </script>

                                        <?php if (!empty($currentData->ep_pv)) : ?>
                                            <iframe id="iframe-embed" src="<?= $webdata['webconvert'] . $currentData->ep_pv ?>" referrerpolicy="strict-origin" allow="autoplay; fullscreen; geolocation; display-capture; picture-in-picture" webkitallowfullscreen="" mozallowfullscreen="" __idm_id__="70918145" frameborder="0"></iframe>
                                        <?php endif; ?>

                                        <?php if (!empty($currentData->ep_pv)) : ?>
                                        <?php else : ?>
                                            <iframe id="iframe-embed" src="<?= $webdata['webconvert'] . $animeData['ani_pv'] ?>" referrerpolicy="strict-origin" allow="autoplay; fullscreen; geolocation; display-capture; picture-in-picture" webkitallowfullscreen="" mozallowfullscreen="" __idm_id__="70918145" frameborder="0"></iframe>
                                        <?php endif; ?>
                                    </div>
                                    <div class="player-controls">
                                        <div class="pc-item pc-resize">
                                            <a href="javascript:;" id="media-resize" class="btn btn-sm"><i class="fas fa-expand mr-1"></i>Expand</a>
                                        </div>
                                        <div class="pc-item pc-toggle pc-light">
                                            <div id="turn-off-light" class="toggle-basic">
                                                <span class="tb-name"><i class="fas fa-lightbulb mr-2"></i>Light</span>
                                                <span class="tb-result"></span>
                                            </div>
                                        </div>
                                        <div class="pc-right">
                                            <?php if (!empty($episodedownload)) : ?>
                                                <?= $this->include('anime/animeepisode/server/epdownload') ?>
                                            <?php endif; ?>
                                            <div class="pc-item pc-control block-report">
                                                <a href="<?= base_url('report') ?>" onclick="return confirm('I think there is a problem with the partition. I want to report!')" class="btn btn-primary"><i class="fa-solid fa-bug"></i></a>
                                            </div>
                                            <div class="pc-item pc-control block-prev">
                                                <?php if (!empty($previousData)) : ?>
                                                    <a class="btn btn-sm btn-prev" href="<?= base_url('watch') ?>?anime=<?= urlencode($animeData['ani_name']) ?>&uid=<?= $episodesData[0]['uid'] ?>&eps=<?= $previousData->ep_id_name ?>" onclick="prevEpisode()"><i class="fas fa-backward mr-2"></i>Prev</a>
                                                <?php endif; ?>
                                            </div>
                                            <div class="pc-item pc-control block-next">
                                                <?php if (!empty($nextData)) : ?>
                                                    <a class="btn btn-sm btn-next" href="<?= base_url('watch') ?>?anime=<?= urlencode($animeData['ani_name']) ?>&uid=<?= $episodesData[0]['uid'] ?>&eps=<?= $nextData->ep_id_name ?>" onclick="nextEpisode()">Next<i class="fas fa-forward ml-2"></i></a>
                                                <?php endif; ?>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="player-servers">
                                    <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                        <?= $this->include('anime/animeepisode/episodeadmincontrol') ?>
                                    <?php endif; ?>
                                    <?= $this->include('anime/animeepisode/watchserver') ?>
                                </div>
                                <?php if (empty($nextData->ep_id_name)) : ?>
                                    <?php if (!empty($schedulenext[0]['sc_days'])) : ?>
                                        <div class="schedule-alert">
                                            <div class="alert small">
                                                <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">×</span></button>
                                                <span class="icon-16 mr-1">🚀</span> Estimated the next episode <?= $schedulenext[0]['sc_ep']; ?> will come at
                                                <span><?= $schedulenext[0]['sc_days']; ?>-<?php echo date('m-Y'); ?> </span>
                                            </div>
                                        </div>
                                    <?php endif; ?>
                                <?php endif; ?>
                                <?= $this->include('anime/animeepisode/watchepisodes') ?>
                            </div>
                            <div class="anis-watch-detail">
                                <div class="anis-content">
                                    <?= $this->include('anime/animeepisode/watchdetails') ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container" style="max-width:100%!important;width:100%!important;">
                        <div id="main-content">
                            <section class="block_area block_area-comment">
                                <div class="block_area-header block_area-header-tabs">
                                    <div class="float-left bah-heading mr-4">
                                        <h2 class="cat-heading">Comments</h2>
                                    </div>
                                    <div class="float-left bah-setting">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="tab-container">
                                    <ul class="nav nav-tabs">
                                        <?php if (auth()->loggedIn()) : ?>
                                            <li class="nav-item">
                                                <a class="nav-link active" onclick="changeTab(event, 'tab1'); return false;" href="#"><?= $webdata['webname'] ?></a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" onclick="changeTab(event, 'tab2'); return false;" href="#">Disqus</a>
                                            </li>
                                        <?php else : ?>
                                            <li class="nav-item">
                                                <a class="nav-link active" onclick="changeTab(event, 'tab1'); return false;" href="#">Disqus</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" onclick="changeTab(event, 'tab2'); return false;" href="#"><?= $webdata['webname'] ?></a>
                                            </li>
                                        <?php endif; ?>
                                    </ul>
                                    <?php if (auth()->loggedIn()) : ?>
                                        <div class="tab-content chat" id="tab1">
                                            <?= $this->include('anime/animeepisode/commentsystem/comment') ?>
                                        </div>
                                        <div class="tab-content chat" id="tab2" style="display:none;">
                                            <?= $this->include('anime/animeepisode/commentsystem/disqus') ?>
                                        </div>
                                    <?php else : ?>
                                        <div class="tab-content chat" id="tab1">
                                            <?= $this->include('anime/animeepisode/commentsystem/disqus') ?>
                                        </div>
                                        <div class="tab-content chat" id="tab2" style="display:none;">
                                            <?= $this->include('anime/animeepisode/commentsystem/comment') ?>
                                        </div>
                                    <?php endif; ?>
                                </div>
                                <script>
                                    function changeTab(evt, tabId) {
                                        var tabContent = document.querySelectorAll('.tab-content.chat');
                                        for (var i = 0; i < tabContent.length; i++) {
                                            tabContent[i].style.display = "none";
                                        }
                                        var tabLinks = document.querySelector('.nav-tabs').getElementsByTagName("li");
                                        for (var i = 0; i < tabLinks.length; i++) {
                                            tabLinks[i].classList.remove('active');
                                        }
                                        evt.currentTarget.parentElement.classList.add("active");
                                        document.getElementById(tabId).style.display = "block";
                                    }
                                </script>
                            </section>
                            <?= $this->include('anime/extendpage/recommended') ?>
                            <div class="clearfix"></div>
                        </div>
                        <?= $this->include('anime/extendpage/sidenav') ?>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <?= $this->include('anime/templates/footer') ?>
                <div id="mask-overlay"></div>
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
                <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
                <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
                <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
                <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
                <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
                <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                <script type="text/javascript">
                    $(".btn-server").click(function() {
                        $(".btn-server").removeClass("active");
                        $(this).closest(".btn-server").addClass("active");
                    });
                </script>
            </div>
</body>

</html>