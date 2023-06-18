<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <form action="<?php echo base_url('admin/episode/episode-download-add'); ?>" method="post">
            <div class="card-body" style="margin: 0% 10%;">
                <div class="form-group row">
                    <label for="dw_id" class="col-sm-4 col-form-label">AnimeUID</label>
                    <div class="col-sm-8">
                        <input type="text" name="dw_id" id="dw_id" class="form-control" required>
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="dw_ep" class="col-sm-4 col-form-label">Episode:</label>
                    <div class="col-sm-8">
                        <input type="text" name="dw_ep" id="dw_ep" class="form-control" required>
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="dw_name" class="col-sm-4 col-form-label">Download Name:</label>
                    <div class="col-sm-8">
                        <input type="text" name="dw_name" id="dw_name" class="form-control">
                    </div>
                </div></br>
                <div class="form-group row">
                    <label for="dw_link" class="col-sm-4 col-form-label">Download Link:</label>
                    <div class="col-sm-8">
                        <input type="text" name="dw_link" id="dw_link" class="form-control">
                    </div>
                </div></br>
                <footer style="position:fixed;right:auto;bottom:0;left:0;z-index:1030;" class="fixed-bottom">
                <div class="card-footer">
                    <input class="btn btn-primary" type="submit" value="Add">
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