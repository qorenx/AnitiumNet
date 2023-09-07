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
            <div class="card-header">Anime Season Adding</div>
            <form action="<?php echo base_url('admin/season/adding'); ?>" method="post">
              <div class="card-body" style="margin: 0% 10%;">
                <div class="form-group row">
                  <label for="main_id" class="col-sm-4 col-form-label">Anime UID:</label>
                  <div class="col-sm-8">
                    <input type="text" name="main_id" id="main_id" class="form-control" required>
                  </div>
                </div></br>
                <div class="form-group row">
                  <label for="season_id" class="col-sm-4 col-form-label">Season Anime UID</label>
                  <div class="col-sm-8">
                    <input type="text" name="season_id" id="season_id" class="form-control">
                  </div>
                </div></br>
                <div class="form-group row">
                  <label for="season_name" class="col-sm-4 col-form-label">Season Name:</label>
                  <div class="col-sm-8">
                    <input type="text" name="season_name" id="season_name" class="form-control">
                  </div>
                </div></br>
                  <div class="card-footer">
                    <input class="btn btn-primary" type="submit" value="Season Adding">
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