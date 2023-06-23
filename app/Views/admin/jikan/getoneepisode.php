<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">

        <form action="<?php echo base_url('admin/episode/getepisode'); ?>" method="post">
            <input type="hidden" name="uid" id="uid" value="<?= $_GET['uid']; ?>" class="form-control" required>
            <div class="card-body" style="margin: 0% 20%;">
                    <div class="form-group row">
                        <label for="ep_id_name" class="col-sm-4 col-form-label">Anime EpisodeID:</label>
                        <div class="col-sm-8">
                            <input type="number" name="ep_id_name[]" id="ep_id_name" value="<?= $data['mal_id']; ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="ep_name" class="col-sm-4 col-form-label">Episode Name:</label>
                        <div class="col-sm-8">
                            <input type="text" name="ep_name[]" id="ep_name" value="<?= $data['title']; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="ep_jname" class="col-sm-4 col-form-label">Episode JName:</label>
                        <div class="col-sm-8">
                            <input type="text" name="ep_jname[]" id="ep_jname" value="<?= $data['title_japanese']; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="ep_romaji" class="col-sm-4 col-form-label">Episode Romaji:</label>
                        <div class="col-sm-8">
                            <input type="text" name="ep_romaji[]" id="ep_romaji" value="<?= $data['title_romanji']; ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="ep_aired" class="col-sm-4 col-form-label">Episode Aired:</label>
                        <div class="col-sm-8">
                            <input type="text" name="ep_aired[]" id="ep_aired" value="<?= substr($data['aired'], 0, 10); ?>" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="ep_pv" class="col-sm-4 col-form-label">Episode PV:</label>
                        <div class="col-sm-8">
                            <input type="text" name="ep_pv[]" id="ep_pv" class="form-control">
                        </div>
                    </div></br></br></br>
                <footer style="position:fixed;right:auto;bottom:0;left:0;z-index:1030;" class="fixed-bottom">
                    <div class="card-footer">
                        <input class="btn btn-primary" type="submit" value="getEpisode Add">
                    </div>
                </footer>
            </div>
        </form>
    </div>
    <div id="mask-overlay"></div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
    </script>
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