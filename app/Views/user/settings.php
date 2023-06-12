<?= $this->include('anime/templates/header') ?>

<body data-page="page_home">
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
            <div class="container">
                <form class="preform" method="post" id="profile-form" action="<?= base_url('/profil/update') ?>">
                    <input type="hidden" name="id" value="<?= auth()->user()->id ?>" class="form-control" readonly>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="avatar-profil-tab" data-toggle="tab" href="#avatar-profil" role="tab" aria-controls="avatar-profil" aria-selected="true">Avatar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="schedule-tab" data-toggle="tab" href="#schedule" role="tab" aria-controls="schedule" aria-selected="false">Schedule</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="status-tab" data-toggle="tab" href="#status" role="tab" aria-controls="status" aria-selected="false">Raw/Sub/Dub/Turk</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="avatar-profil" role="tabpanel" aria-labelledby="avatar-profil-tab">
                            <br>
                            <div style="display: flex; flex-direction: column; align-items: center;">
                                <img src="<?= auth()->user()->avatar ?>" alt="Avatar Preview" style="width:250px; height:150px; border-radius: 10%; margin-bottom: 10px;">
                                <div class="form-group" style="margin-top: 10px;">
                                    <div class="input-group mb-3">
                                        <select id="avatar" name="avatar" class=form-control>
                                            <?php for ($i = 1; $i < 9; $i++) : ?>
                                                <option value="/files/images/avatar<?= $i ?>.gif" <?php if (auth()->user()->avatar == 'avatar' . $i) echo 'selected'; ?>>Avatar <?= $i ?></option>
                                            <?php endfor; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="schedule" role="tabpanel" aria-labelledby="schedule-tab">
                            <br>
                            <div class="form-group">
                                <div class="custom-control custom-switch">
                                    <input type="checkbox" class="custom-control-input" id="schedule_status" name="schedule_status" <?= (auth()->user()->schedule_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                    <input type="hidden" name="schedule_status" value="<?= auth()->user()->schedule_status ?>">
                                    <label class="custom-control-label" for="schedule_status">Schedule</label>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="status" role="tabpanel" aria-labelledby="status-tab">
                            <ul class="nav nav-tabs" id="myTab2" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="raw-tab" data-toggle="tab" href="#raw" role="tab" aria-controls="raw" aria-selected="true">Raw</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="sub-tab" data-toggle="tab" href="#sub" role="tab" aria-controls="sub" aria-selected="false">Sub</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="dub-tab" data-toggle="tab" href="#dub" role="tab" aria-controls="dub" aria-selected="false">Dub</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="turk-tab" data-toggle="tab" href="#turk" role="tab" aria-controls="turk" aria-selected="false">Turk</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="myTabContent2">
                                <div class="tab-pane fade show active" id="raw" role="tabpanel" aria-labelledby="raw-tab">
                                    <br>
                                    <div class="form-group">
                                        <div class="custom-control custom-switch">
                                            <input type="checkbox" class="custom-control-input" id="raw_status" name="raw_status" <?= (auth()->user()->raw_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                            <input type="hidden" name="raw_status" value="<?= auth()->user()->raw_status ?>">
                                            <label class="custom-control-label" for="raw_status">Raw</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="sub" role="tabpanel" aria-labelledby="sub-tab">
                                    <br>
                                    <div class="form-group">
                                        <div class="custom-control custom-switch">
                                            <input type="checkbox" class="custom-control-input" id="sub_status" name="sub_status" <?= (auth()->user()->sub_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                            <input type="hidden" name="sub_status" value="<?= auth()->user()->sub_status ?>">
                                            <label class="custom-control-label" for="sub_status">Sub</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="dub" role="tabpanel" aria-labelledby="dub-tab">
                                    <br>
                                    <div class="form-group">
                                        <div class="custom-control custom-switch">
                                            <input type="checkbox" class="custom-control-input" id="dub_status" name="dub_status" <?= (auth()->user()->dub_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                            <input type="hidden" name="dub_status" value="<?= auth()->user()->dub_status ?>">
                                            <label class="custom-control-label" for="dub_status">Dub</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="turk" role="tabpanel" aria-labelledby="turk-tab">
                                    <br>
                                    <div class="form-group">
                                        <div class="custom-control custom-switch">
                                            <input type="checkbox" class="custom-control-input" id="turk_status" name="turk_status" <?= (auth()->user()->turk_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                            <input type="hidden" name="turk_status" value="<?= auth()->user()->turk_status ?>">
                                            <label class="custom-control-label" for="turk_status">Turk</label>
                                        </div>
                                    </div>
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
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div><br>
                    </div>
                </form>
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