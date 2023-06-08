<?= $this->include('anime/templates/header') ?>

<body data-page="page_home" style="background-image: url('<?= auth()->user()->profil_header ?>'); background-attachment: fixed;">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/templates/head') ?>
        <div class="clearfix"></div>

        <div id="main-wrapper" class="layout-page layout-profile">
            <div class="profile-header">
                <div class="profile-header-cover"></div>
                <div class="container">
                    <div class="ph-title">Hi, <?= auth()->user()->username ?></div>
                    <div class="ph-tabs">
                        <div class="bah-tabs">
                            <ul class="nav nav-tabs pre-tabs">
                                <li class="nav-item"><a class="nav-link" href="/user/profile"><i class="fas fa-user mr-2"></i>Profile</a></li>
                                <li class="nav-item"><a class="nav-link" href="/user/profile/status/watching"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li class="nav-item"><a class="nav-link active" href="/user/profile/settings"><i class="fas fa-cog mr-2"></i>Settings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="container" style="max-width:100%!important;width:100%!important;background-color: #000000c2;">
                <div class="col-md-12">
                    <div id="content" class="content content-full-width">
                        <div class="profile-content mx-auto col-md-4">
                            <form class="preform" method="post" id="profile-form" action="<?= base_url('/profil/update') ?>">
                                <div class="row">
                                    <input type="hidden" name="id" value="<?= auth()->user()->id ?>" class="form-control" readonly>
                                    <div class="col-xl-12">
                                        <div class="form-group">
                                            <label class="prelabel" for="avatar">Avatar</label>
                                            <input type="text" class="form-control" value="<?= auth()->user()->avatar ?>" name="avatar" id="avatar">
                                        </div>
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="form-group">
                                            <label class="prelabel" for="profil_header">Profil Header</label>
                                            <input type="text" class="form-control" value="<?= auth()->user()->profil_header ?>" name="profil_header" id="profil_header">
                                        </div>
                                    </div>
                                    <div class="col-xl-12" style="display: flex; justify-content: center;">
                                        <div class="form-group">
                                            <label class="prelabel">Schedule</label>
                                            <div class="custom-control custom-switch">
                                                <input type="checkbox" class="custom-control-input" id="schedule_status" name="schedule_status" <?= (auth()->user()->schedule_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                                <input type="hidden" name="schedule_status" value="<?= auth()->user()->schedule_status ?>">
                                                <label class="custom-control-label" for="schedule_status"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12" style="display: flex; justify-content: center;">
                                        <div class="form-group">
                                            <label class="prelabel">Raw</label>
                                            <div class="custom-control custom-switch">
                                                <input type="checkbox" class="custom-control-input" id="raw_status" name="raw_status" <?= (auth()->user()->raw_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                                <input type="hidden" name="raw_status" value="<?= auth()->user()->raw_status ?>">
                                                <label class="custom-control-label" for="raw_status"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12" style="display: flex; justify-content: center;">
                                        <div class="form-group">
                                            <label class="prelabel">Sub</label>
                                            <div class="custom-control custom-switch">
                                                <input type="checkbox" class="custom-control-input" id="sub_status" name="sub_status" <?= (auth()->user()->sub_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                                <input type="hidden" name="sub_status" value="<?= auth()->user()->sub_status ?>">
                                                <label class="custom-control-label" for="sub_status"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12" style="display: flex; justify-content: center;">
                                        <div class="form-group">
                                            <label class="prelabel">Dub</label>
                                            <div class="custom-control custom-switch">
                                                <input type="checkbox" class="custom-control-input" id="dub_status" name="dub_status" <?= (auth()->user()->dub_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                                <input type="hidden" name="dub_status" value="<?= auth()->user()->dub_status ?>">
                                                <label class="custom-control-label" for="dub_status"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-12" style="display: flex; justify-content: center;">
                                        <div class="form-group">
                                            <label class="prelabel">Turk</label>
                                            <div class="custom-control custom-switch">
                                                <input type="checkbox" class="custom-control-input" id="turk_status" name="turk_status" <?= (auth()->user()->turk_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                                <input type="hidden" name="turk_status" value="<?= auth()->user()->turk_status ?>">
                                                <label class="custom-control-label" for="turk_status"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <script>
                                        function toggleValue(checkbox) {
                                            if (checkbox.checked) {
                                                checkbox.nextElementSibling.value = 1;
                                                checkbox.nextElementSibling.type = "hidden";
                                            } else {
                                                checkbox.nextElementSibling.value = "";
                                                checkbox.nextElementSibling.type = "hidden";
                                            }
                                        }
                                    </script>
                                    <div class="col-xl-12">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>



        </div>
        <div id="mask-overlay"></div>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js">
        </script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/app.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/comman.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/movie.js"></script>
        <link rel="stylesheet" href="<?php echo base_url(); ?>files/css/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>files/js/function.js"></script>
    </div>
    </div>
</body>

</html>