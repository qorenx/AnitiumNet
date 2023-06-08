<?= $this->include('anime/templates/header') ?>
<?= $this->include('anime/templates/head') ?>

<body data-page="movie_info">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <div id="main-wrapper" date-page="movie_info" data-id="">
            <?= $this->include('anime/animedetail') ?>
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div id="main-content">
                    <section class="block_area block_area-seasons" <?php if (empty($animetvseason)) echo 'style="display:none"'; ?>>
                        <div class="block_area-header">
                            <div class="bah-heading">
                                <h2 class="cat-heading">More Seasons</h2>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="os-list">
                            <?php foreach ($animetvseason as $season) : ?>
                                <a href="<?= base_url('anime/'.$season['suid'].'/'.$season['sname']) ?>" class="os-item ">
                                    <div class="title"><?= $season['sname'] ?></div>
                                    <div class="season-poster" style="background-color:cadetblue"></div>
                                </a>
                            <?php endforeach; ?>
                        </div>
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
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
</body>

</html>