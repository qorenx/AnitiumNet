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
                        <div class="card-header">Download Editing</div>
                        <table style="color:white" class="table">
                            <thead>
                                <tr>
                                    <th>Download Name</th>
                                    <th>Download Link</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($downloadeditresult as $downloadedit) { ?>
                                    <tr>
                                        <td><?php echo $downloadedit['dw_name']; ?></td>
                                        <td><a href="<?php echo $downloadedit['dw_link']; ?>" target="_blank"><?php echo $downloadedit['dw_link']; ?></a></td>
                                        <td>
                                            <form action="<?php echo base_url('admin/episode/download-delete'); ?>" method="post" onsubmit="return confirm('Are you sure you want to delete?')">
                                                <input type="hidden" name="dwid" value="<?php echo $downloadedit['id']; ?>">
                                                <button type="submit" class="btn btn-danger">Delete</button>
                                            </form>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
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