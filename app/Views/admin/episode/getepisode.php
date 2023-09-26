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
                        <div class="card-header">Get All Episode</div>
                        <form action="<?php echo base_url('admin/episode/getepisode'); ?>" method="post">
                            <input type="hidden" name="uid" id="uid" value="<?= $_GET['uid']; ?>" class="form-control" required>
                            <div class="card-body">
                                <?php foreach ($data as $item) { ?>
                                    <div class="form-group row">
                                        <label for="ep_id_name" class="col-sm-4 col-form-label">Anime EpisodeID:</label>
                                        <div class="col-sm-8">
                                            <input type="number" name="ep_id_name[]" id="ep_id_name" value="<?= $item['mal_id']; ?>" class="form-control" required>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="ep_name" class="col-sm-4 col-form-label">Episode Name:</label>
                                        <div class="col-sm-8">
                                            <input type="text" name="ep_name[]" id="ep_name" value="<?= $item['title']; ?>" class="form-control">
                                        </div>
                                    </div>
                                </br></br>
                                <?php } ?>
                                <div class="card-footer">
                                    <input class="btn btn-primary" type="submit" value="Episode Adding">
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