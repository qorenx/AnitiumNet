<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title><?php echo $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
  <?= $this->include('Backend/Default/İnclude/css') ?>
</head>

<body class="bg-theme1">
  <div id="wrapper">
    <?= $this->include('Backend/Default/Anime/İnclude/sidebar') ?>
    <?= $this->include('Backend/Default/Anime/İnclude/header') ?>

    <div class="clearfix"></div>

    <div class="content-wrapper">
      <div class="container-fluid">

        <!--Start Dashboard Content-->
        <div class="container mt-3">
          <div class="row">
            <div class="col-md-3">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fa fa-film"></i></div>
                </div>
                <div class="form-control"><?php echo $getAnimeCount; ?></div>
                <div class="input-group-append">
                  <span class="input-group-text">Anime</span>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fa fa-play"></i></div>
                </div>
                <div class="form-control"><?php echo $getEpisodeCount; ?></div>
                <div class="input-group-append">
                  <span class="input-group-text">Episode</span>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fa fa-link"></i></div>
                </div>
                <div class="form-control"><?php echo $getEmbedCount; ?></div>
                <div class="input-group-append">
                  <span class="input-group-text">Embed</span>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fa fa-users"></i></div>
                </div>
                <div class="form-control"><?php echo $getUserCount; ?></div>
                <div class="input-group-append">
                  <span class="input-group-text">User</span>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="container mt-3">
          <div class="card">
            <div class="card-body">
              <div class="row">
                <div class="col-md">
                  <h4 class="text-center mb-3">Anime Views</h4>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-tv"></i></span>
                    </div>
                    <input type="text" class="form-control" style="background-color: white;" value="<?php echo $getAnimeViewsToday; ?>" readonly>
                    <div class="input-group-append">
                      <span class="input-group-text">Today</span>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                    </div>
                    <input type="text" class="form-control" style="background-color: white;" value="<?php echo $getAnimeViewsMonth; ?>" readonly>
                    <div class="input-group-append">
                      <span class="input-group-text">Month</span>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" style="background-color: white;" value="<?php echo $getAnimeViewsYears; ?>" readonly>
                    <div class="input-group-append">
                      <span class="input-group-text">Year</span>
                    </div>
                  </div>
                </div>
                <div class="col-md">
                  <h4 class="text-center mb-3">Episode Views</h4>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-tv"></i></span>
                    </div>
                    <input type="text" class="form-control" style="background-color: white;" value="<?php echo $getEpisodeViewsToday; ?>" readonly>
                    <div class="input-group-append">
                      <span class="input-group-text">Today</span>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-calendar"></i></span>
                    </div>
                    <input type="text" class="form-control" style="background-color: white;" value="<?php echo $getEpisodeViewsWeeky; ?>" readonly>
                    <div class="input-group-append">
                      <span class="input-group-text">Month</span>
                    </div>
                  </div>
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="fa fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" class="form-control" style="background-color: white;" value="<?php echo $getEpisodeViewsMonth; ?>" readonly>
                    <div class="input-group-append">
                      <span class="input-group-text">Year</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--End Dashboard Content-->



        <div class="overlay toggle-menu"></div>
      </div>
    </div>
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <?= $this->include('Backend/Default/Anime/İnclude/footer') ?>
  </div>
  <?= $this->include('Backend/Default/Anime/İnclude/script') ?>
</body>

</html>