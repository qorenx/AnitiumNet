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
                        <div class="card-header">Anime Slider Settings</div>
                        <form method="post" action="/admin/anime/slider">
                            <table style="color:white" class="table">
                                <thead>
                                    <tr>
                                        <th style="width:20%;">ID</th>
                                        <th style="width:20%;">Slider UID</th>
                                        <th style="width:60%;">Slider Wallpaper</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($slider as $slide) : ?>
                                        <tr>
                                            <td style="width:20%;">
                                                <input type="text" name="id[<?= $slide['id'] ?>]" value="SLİDER: <?= $slide['id'] ?>" readonly style="width:100%;" />
                                            </td>
                                            <td style="width:20%;">
                                                <input type="text" name="slideruid[<?= $slide['id'] ?>]" value="<?= $slide['slideruid'] ?>" style="width:100%;" />
                                            </td>
                                            <td style="width:60%;">
                                                <input type="text" name="sliderwuid[<?= $slide['id'] ?>]" value="<?= $slide['sliderwallpaper'] ?>" style="width:100%;" />
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                            <div class="card-footer">
                                <input class="btn btn-primary" type="submit" value="Slider Update">
                            </div>
                        </form>
                    </div>
                </div>
                <!--End Dashboard Content-->

                <div class="overlay toggle-menu"></div>
            </div>
        </div>
        <?= $this->include('Backend/Default/Anime/İnclude/Footer') ?>
    </div>
    <?= $this->include('Backend/Default/Anime/İnclude/ScriptLoad') ?>
</body>