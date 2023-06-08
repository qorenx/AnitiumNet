<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
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
                        <input type="number" step="0.10" name="ep_id_name" id="ep_id_name" class="form-control" required>
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
                    <label for="ep_raw" class="col-sm-4 col-form-label">Ani Raw:</label>
                    <div class="col-sm-8">
                        <select name="ep_raw" id="ep_raw" class="form-control">
                            <option value="">NO</option>
                            <option value="RAW">RAW</option>
                        </select>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_sub" class="col-sm-4 col-form-label">Ani Sub:</label>
                    <div class="col-sm-8">
                        <select name="ep_sub" id="ep_sub" class="form-control">
                            <option value="">NO</option>
                            <option value="SUB">SUB</option>
                        </select>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_dub" class="col-sm-4 col-form-label">Ani Dub:</label>
                    <div class="col-sm-8">
                        <select name="ep_dub" id="ep_dub" class="form-control">
                            <option value="">NO</option>
                            <option value="DUB">DUB</option>
                        </select>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_turk" class="col-sm-4 col-form-label">Ani Turk:</label>
                    <div class="col-sm-8">
                        <select name="ep_turk" id="ep_turk" class="form-control">
                            <option value="">NO</option>
                            <option value="TURK">TURK</option>
                        </select>
                    </div>
                </div><br>
                <div class="card-footer">
                    <input class="btn btn-primary" type="submit" value="Add">
                </div>
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