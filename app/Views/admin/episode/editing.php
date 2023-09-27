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
                        <div class="card-header">Episode Editing</div>
                        <form action="<?php echo base_url('admin/episode/editing'); ?>" method="post">
                            <div class="card-body">
                                <input type="hidden" name="uid" id="uid" value="<?= $epeedit['uid'] ?>" readonly>
                                <input type="hidden" name="ep_id_name" id="ep_id_name" value="<?= $epeedit['ep_id_name'] ?>" readonly>
                                <div class="form-group row">
                                    <label for="ep_name" class="col-sm-4 col-form-label">Episode Name:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="ep_name" id="ep_name" value="<?php echo $epeedit['ep_name']; ?>" class="form-control">
                                    </div>
                                </div></br>
                                <div class="form-group row">
                                    <label for="ep_jname" class="col-sm-4 col-form-label">Episode Japanese Name:</label>
                                    <div class="col-sm-8">
                                        <input type="text" name="ep_jname" id="ep_jname" value="<?php echo $epeedit['ep_jname']; ?>" class="form-control">
                                    </div>
                                </div></br>
                                <div class="card-footer">
                                    <input class="btn btn-primary" type="submit" value="Update">
                                    <a class="btn btn-danger" href="<?php echo base_url('admin/episode/delete?uid=' . $epeedit['uid'] . '&eps=' . $epeedit['id']); ?>" onclick="return confirm('Are you sure you want to delete?')">DELETE</a>
                                </div>
                            </div><br>
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