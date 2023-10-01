<?= $this->include('Frontend/İnclude/Header') ?>


<body data-page="movie_info">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/İnclude/Head') ?>

        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_info">
            <?= $this->include('Frontend/Anime/Details') ?>
            <div class="container">
                <div id="main-content">
                    <?php
                    if ($AnimeData['mal_season'] == 1) {
                        echo $this->include('Frontend/Anime/Season');
                    }
                    ?>
                    <?= $this->include('Frontend/Anime/NyaTorrent') ?>
                    <?= $this->include('Frontend/Anime/Recommended') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('Frontend/İnclude/SideBar') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('Frontend/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/İnclude/LoadScript') ?>
    </div>
</body>

</html>