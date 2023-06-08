<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <form action="<?php echo base_url('admin/episode/episode-edit'); ?>" method="post">
            <div class="card-body" style="margin: 0% 10%;">
                <input type="hidden" name="uid" id="uid" value="<?= $epeedit['uid'] ?>" readonly>
                <input type="hidden" name="ep_id_name" id="ep_id_name" value="<?= $epeedit['ep_id_name'] ?>" readonly>
                <div class="form-group row">
                    <label for="ep_name" class="col-sm-4 col-form-label">Episode Name:</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_name" id="ep_name" value="<?php echo $epeedit['ep_name']; ?>" class="form-control">
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="ep_pv" class="col-sm-4 col-form-label">Episode PV:</label>
                    <div class="col-sm-8">
                        <input type="text" name="ep_pv" id="ep_pv" value="<?php echo $epeedit['ep_pv']; ?>" class="form-control">
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="ep_raw" class="col-sm-4 col-form-label">Ani Raw:</label>
                    <div class="col-sm-8">
                        <select name="ep_raw" id="ep_raw" class="form-control">
                            <option value="">NO</option>
                            <option value="RAW" <?php if ($epeedit['ep_raw'] === 'RAW') echo 'selected'; ?>>RAW</option>
                        </select>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_sub" class="col-sm-4 col-form-label">Ani Sub:</label>
                    <div class="col-sm-8">
                        <select name="ep_sub" id="ep_sub" class="form-control">
                            <option value="">NO</option>
                            <option value="SUB" <?php if ($epeedit['ep_sub'] === 'SUB') echo 'selected'; ?>>SUB</option>
                        </select>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_dub" class="col-sm-4 col-form-label">Ani Dub:</label>
                    <div class="col-sm-8">
                        <select name="ep_dub" id="ep_dub" class="form-control">
                            <option value="">NO</option>
                            <option value="DUB" <?php if ($epeedit['ep_dub'] === 'DUB') echo 'selected'; ?>>DUB</option>
                        </select>
                    </div>
                </div><br>
                <div class="form-group row">
                    <label for="ep_turk" class="col-sm-4 col-form-label">Ani Turk:</label>
                    <div class="col-sm-8">
                        <select name="ep_turk" id="ep_turk" class="form-control">
                            <option value="">NO</option>
                            <option value="TURK" <?php if ($epeedit['ep_turk'] === 'TURK') echo 'selected'; ?>>TURK</option>
                        </select>
                    </div>
                    <footer class="fixed-bottom">
                        <div class="card-footer">
                            <input class="btn btn-primary" type="submit" value="UPDATE">
                            <a class="btn btn-danger" href="<?php echo base_url('admin/episode/episode-delete/' . $epeedit['uid'] . '/' . $epeedit['id']); ?>" onclick="return confirm('Are you sure you want to delete?')">DELETE</a>
                        </div>
                    </footer>
                </div><br>

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