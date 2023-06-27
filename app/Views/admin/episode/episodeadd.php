<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">

        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#getallepisode-modal">
            Get All Episode Modal
        </button>
        <div class="modal fade" id="getallepisode-modal" tabindex="-1" role="dialog" aria-labelledby="getallepisode-modalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <form action="<?= base_url('/admin/episode/getepisode/'); ?>" method="get">
                        <div class="modal-header">
                        <h5 class="modal-title" id="getallepisode-modalLabel" style="color:black">Get All Episode</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <h5 class="modal-title" id="getallepisode-modalLabel" style="color:black">MyAnimeList Anime  ID</h5>
                                <input type="text" name="uid" class="form-control" required>
                                <h5 class="modal-title" id="getallepisode-modalLabel" style="color:black">Enter Page ID(1-100=1, 101-200=2, etc)</h5>
                                <input type="text" name="page" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Get All Episode</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#getepisode-modal">
            Get Episode Modal
        </button>
        <div class="modal fade" id="getepisode-modal" tabindex="-1" role="dialog" aria-labelledby="getepisode-modalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <form action="<?= base_url('/admin/episode/getoneepisode/'); ?>" method="get">
                        <div class="modal-header">
                            <h5 class="modal-title" id="getepisode-modalLabel">Enter Anime ID</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="text" name="uid" class="form-control" required>
                                <input type="text" name="eps" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Get All Episode</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <form action="<?php echo base_url('admin/episode/episode-add'); ?>" method="post">
            <div class="card-body" style="margin: 0% 10%;">
                <div class="form-group row">
                    <label for="uid" class="col-sm-4 col-form-label">Anime UID</label>
                    <div class="col-sm-8">
                        <input type="text" name="uid" id="uid" class="form-control" required>
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="ep_id_name" class="col-sm-4 col-form-label">Anime EpisodeID(1, 1.5, etc):</label>
                    <div class="col-sm-8">
                        <input type="number" name="ep_id_name" id="ep_id_name" class="form-control" required>
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="ep_name" class="col-sm-4 col-form-label">Episode Name(War Being or blank):</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_name" id="ep_name" class="form-control">
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="ep_pv" class="col-sm-4 col-form-label">Episode PV:</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_pv" id="ep_pv" class="form-control">
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="ep_jname" class="col-sm-4 col-form-label">Episode JName:</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_jname" id="ep_jname" value="" class="form-control">
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_romaji" class="col-sm-4 col-form-label">Episode Romaji:</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_romaji" id="ep_romaji" class="form-control">
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_aired" class="col-sm-4 col-form-label">Episode Aired:</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_aired" id="ep_aired" class="form-control">
                    </div>
                </div><br>
                <footer style="position:fixed;right:auto;bottom:0;left:0;z-index:1030;" class="fixed-bottom">
                    <div class="card-footer">
                        <input class="btn btn-primary" type="submit" value="Episode Add">
                    </div>
                </footer>
            </div>
        </form>


    </div>
    <div style="height:100px;"></div>
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