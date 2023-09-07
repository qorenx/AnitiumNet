<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title><?php echo $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
    <?= $this->include('admin/assets/css') ?>
</head>

<body class="bg-theme bg-theme1">
    <div id="wrapper">
        <?= $this->include('admin/extra/sidebar') ?>
        <?= $this->include('admin/extra/header') ?>
        <div class="clearfix"></div>
        <div class="content-wrapper">
            <div class="container-fluid">
                <!--Start Dashboard Content-->
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card-header">Download Adding</div>
                        <form action="<?php echo base_url('admin/episode/download'); ?>" method="post">
                            <div class="card-body">
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
                                <div class="card-footer">
                                    <input class="btn btn-primary" type="submit" value="Download Adding">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!--End Dashboard Content-->
                <div class="overlay toggle-menu"></div>
            </div>
        </div>
        <?= $this->include('admin/extra/footer') ?>
    </div>
    <?= $this->include('admin/assets/script') ?>
</body>

</html>