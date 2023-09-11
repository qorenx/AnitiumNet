<?= $this->include('anime/getanime/header') ?>
<?= $this->include('anime/extend/templates/head') ?>

<body data-page="movie_info">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_info">
            <?= $this->include('anime/getanime/include/details') ?>
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="main-content">
                    <?php if ($AnimeData['sid'] != 0 && !empty($AnimeData['sid'])) {
                        echo $this->include('anime/getanime/include/season');
                    } ?>
                    <?= $this->include('anime/getanime/include/recommended') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('anime/getanime/sidenav') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('anime/extend/templates/footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>