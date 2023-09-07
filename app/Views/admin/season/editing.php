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
                        <div class="card-header">Anime Season Editing</div>
                        <table class="table table-striped" style="color:white">
                            <thead>
                                <tr>
                                    <th>DB İD</th>
                                    <th>Main Anime</th>
                                    <th>Season İD</th>
                                    <th>Season Name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($seasonedit as $season) : ?>
                                    <tr>
                                        <td><?= $season['id'] ?></td>
                                        <td><?= $season['main_id'] ?></td>
                                        <td><?= $season['season_id'] ?></td>
                                        <td><a href="<?= base_url('anime/' . $season['season_id'] . '/' . str_replace(' ', '-', $season['season_name'])) ?>" target="_blank"><?= $season['season_name'] ?></a></td>
                                        <td>
                                            <form action="<?php echo base_url('admin/season/delete'); ?>" method="POST" onsubmit="return confirm('Are you sure you want to delete?')">
                                                <input type="hidden" name="seid" value="<?php echo $season['id']; ?>">
                                                <input type="submit" value="Delete" class="btn btn-danger">
                                            </form>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
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