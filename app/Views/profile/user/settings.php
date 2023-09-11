<?= $this->include('profile/extend/header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/extend/templates/head') ?>
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
                                <li class="nav-item"><a class="nav-link" href="/user/profile/status/favorite"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li class="nav-item"><a class="nav-link active" href="/user/profile/settings"><i class="fas fa-cog mr-2"></i>Settings</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>


            <div id="profilecontainer" class="profilecontainer" style="display: flex; justify-content: center; align-items: center; padding: 20px;">
                <style>
                    .profilecontainer {
                        background-color: whitesmoke;
                        width: 80%;
                        margin: auto;
                    }

                    #profile-form {
                        color: black;
                    }

                    .form-control,
                    .form-control-file {
                        border: 1px solid #ced4da;
                    }

                    .avatar-upload {
                        position: relative;
                        display: inline-block;
                        cursor: pointer;
                    }

                    .avatar-upload::before {
                        content: '';
                    }

                    .avatar-image {
                        max-width: 150px;
                        max-height: 150px;
                        object-fit: cover;
                    }
                </style>
                <form method="post" id="profile-form" action="<?= base_url('/profil/update') ?>" enctype="multipart/form-data" class="needs-validation bg-light p-4 rounded shadow-lg" style="display: flex; justify-content: space-between; align-items: start; gap:1em; padding:20px;" novalidate>

                    <input type="hidden" name="id" value="<?= auth()->user()->id ?>">

                    <!-- Avatar section -->
                    <div class="mb-4 avatar-upload" onclick="document.getElementById('avatar').click()" style="min-width:150px; position:relative;">
                        <?php
                        $avatar = auth()->user()->avatar;
                        $username = auth()->user()->username;
                        $defaultImage = "https://ui-avatars.com/api/?name=" . urlencode($username) . "&color=7F9CF5&background=EBF4FF";
                        ?>

                        <img src="<?= empty($avatar) ? $defaultImage : $avatar; ?>" class="avatar-image img-thumbnail mb-2">

                        <input type="file" id="avatar" value="<?= auth()->user()->avatar ?>" name="avatar" class="form-control-file" hidden>
                        <div class="vertical-line"></div> <!-- vertical Line added -->
                    </div>

                    <!-- Username section -->
                    <div class="mb-4" style="min-width:200px; position:relative;">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" id="username" name="username" class="form-control" value="<?= auth()->user()->username ?>">
                        <div class="vertical-line"></div> <!-- vertical Line added -->
                    </div>

                    <!-- Schedule section -->
                    <div class="mb-4" style="min-width:200px; position:relative;">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="schedule_status" name="schedule_status" <?= (auth()->user()->schedule_status == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                            <input type="hidden" id="schedule_status_hidden" name="schedule_status" value="<?= auth()->user()->schedule_status ?>">
                            <label for="schedule_status" class="form-check-label">Schedule</label>
                        </div>
                        <div class="vertical-line"></div> <!-- vertical Line added -->
                    </div>

                    <!-- Status section -->
                    <div class="mb-4" style="min-width:200px;">
                        <label class="form-label">Status</label>
                        <div class="d-flex flex-column">
                            <?php foreach (['raw', 'sub', 'dub', 'turk'] as $status) : ?>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="<?= $status ?>_status" name="<?= $status ?>_status" <?= (auth()->user()->{$status . '_status'} == 1) ? 'checked' : '' ?> onchange="toggleValue(this)">
                                    <input type="hidden" id="<?= $status ?>_status_hidden" name="<?= $status ?>_status" value="<?= auth()->user()->{$status . '_status'} ?>">
                                    <label class="form-check-label" for="<?= $status ?>_status"><?= ucfirst($status) ?></label>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>

                    <!-- Submit button -->
                    <div class="d-grid gap-2" style="min-width:100px;">
                        <button type="submit" class="btn btn-dark">Save</button>
                    </div>
                </form>

                <style>
                    .vertical-line {
                        position: absolute;
                        top: 0;
                        right: 0;
                        bottom: 0;
                        border-right: 1px solid grey;
                        content: "";
                    }
                </style>
                <script type="module">
                    function toggleValue(checkbox) {
                        const hiddenInput = document.querySelector(`input[id=${checkbox.id}_hidden]`);
                        hiddenInput.value = checkbox.checked ? 1 : 0;
                    }
                </script>
            </div>


        </div>

        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>