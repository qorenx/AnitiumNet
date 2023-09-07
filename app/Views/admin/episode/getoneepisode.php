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
                        <div class="card-header">Get One Episode</div>
                        <form action="<?php echo base_url('admin/episode/getepisode'); ?>" method="post">
                            <input type="hidden" name="uid" id="uid" value="<?= $_GET['uid']; ?>" class="form-control" required>
                            <div class="card-body">
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
                                </div></br></br></br>
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