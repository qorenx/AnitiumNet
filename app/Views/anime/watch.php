<?= $this->include('anime/getepisode/header') ?>
<?= $this->include('anime/extend/templates/head') ?>


<body data-page="movie_watch">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="movie_watch">
        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_watch" data-id="">
            <div id="ani_detail">
                <div class="ani_detail-stage">
                    <div class="container" style="max-width:100%!important;width:100%!important;">
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
                                    <?php if (isset(auth()->user()->groups[0]) && in_array(auth()->user()->groups[0], ['superadmin', 'admin'])) : ?>
                                        <?= $this->include('anime/getepisode/admin/controll') ?>
                                    <?php endif; ?>
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
                                        <li class="nav-item">
                                            <a class="nav-link active" onclick="changeTab(event, 'tab1'); return false;" href="#"><?php echo $settings['Advanced'][0]['value']; ?></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" onclick="changeTab(event, 'tab2'); return false;" href="#">Disqus</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content chat" id="tab1">
                                        <?= $this->include('anime/getepisode/comment/comment') ?>
                                    </div>
                                    <div class="tab-content chat" id="tab2" style="display:none;">
                                        <?= $this->include('anime/getepisode/comment/disqus') ?>
                                    </div>
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
                            <?= $this->include('anime/getepisode/include/recommended') ?>
                            <div class="clearfix"></div>
                        </div>
                        <?= $this->include('anime/getepisode/sidenav') ?>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <?= $this->include('anime/getepisode/footer') ?>
                <div id="mask-overlay"></div>
                <?= $this->include('anime/loadscript') ?>
                <?= $this->include('anime/getepisode/load') ?>
                <script type="text/javascript">
                    $(".btn-server").click(function() {
                        $(".btn-server").removeClass("active");
                        $(this).closest(".btn-server").addClass("active");
                    });
                </script>
            </div>
</body>

</html>