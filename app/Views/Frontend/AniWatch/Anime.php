<?= $this->include('Frontend/AniWatch/İnclude/Header') ?>


<body data-page="movie_info">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper">
        <?= $this->include('Frontend/AniWatch/İnclude/Head') ?>

        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_info">
            <?= $this->include('Frontend/AniWatch/Anime/Details') ?>
            <div class="container">
                <div id="main-content">
                    <?php
                    if ($AnimeData['mal_season'] == 1) {
                        echo $this->include('Frontend/AniWatch/Anime/Season');
                    }
                    ?>
                    <?= $this->include('Frontend/AniWatch/Anime/Recommended') ?>
                    <div class="clearfix"></div>
                </div>
                <?= $this->include('Frontend/AniWatch/İnclude/SideBar') ?>
                <div class="clearfix"></div>
            </div>
        </div>
        <?= $this->include('Frontend/AniWatch/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/AniWatch/İnclude/LoadScript') ?>
    </div>
</body>

</html>