<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title><?php echo $getAdminSettings['Advanced'][0]['value']; ?> Admin Panel</title>
    <?= $this->include('Backend/Default/Anime/İnclude/StyleLoad') ?>
</head>

<body class="bg-theme bg-theme1">
    <div id="wrapper">
        <?= $this->include('Backend/Default/Anime/İnclude/SideBar') ?>
        <?= $this->include('Backend/Default/Anime/İnclude/Header') ?>
        <div class="clearfix"></div>
        <div class="content-wrapper">
            <div class="container-fluid">

                <!--Start Dashboard Content-->
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="card-header">License</div>
                        <form action="<?php echo base_url('admin/settings/update'); ?>" method="post">
                            <input type="hidden" name="id" id="id" value="<?php echo $settings['License'][1]['id']; ?>" class="form-control" readonly>
                            <div class="form-group row border-bottom">
                                <label for="value" class="col-sm-4 col-form-label"><?php echo $settings['License'][1]['class']; ?>:</label>
                                <div class="col-sm-8">
                                    License
                                    <input type="text" name="value" id="value" value="<?php echo $settings['License'][1]['value']; ?>" class="form-control">
                                </div>
                            </div>
                            <div class="card-footer">
                                <input class="btn btn-primary" type="submit" value="Licence Update">
                            </div>
                        </form>
                    </div>
                </div><!--End Dashboard Content-->

                <div class="overlay toggle-menu"></div>
            </div>
        </div>
        <?= $this->include('Backend/Default/Anime/İnclude/Footer') ?>
    </div>
    <?= $this->include('Backend/Default/Anime/İnclude/ScriptLoad') ?>
</body>