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
                            <ul class="nav nav-tabs pre-tabs" style="display: flex;">
                                <li><a style="cursor: pointer;" class="nav-link" onclick="window.location.href='/user/profile'"><i class="fas fa-user mr-2"></i>Profile</a></li>
                                <li><a style="cursor: pointer;" class="nav-link" onclick="window.location.href='/user/profile/status/favorite'"><i class="fas fa-heart mr-2"></i>Watch List</a></li>
                                <li><a style="cursor: pointer;" class="nav-link active" onclick="window.location.href='/user/profile/settings'"><i class="fas fa-cog mr-2"></i>Settings</a></li>
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
                        <img src="<?= $avatar = auth()->user()->avatar; ?>" class="avatar-image img-thumbnail mb-2">
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
                        <select id="schedule_status" name="schedule_status" onchange="toggleValue(this)">
                            <option value="0" <?= (auth()->user()->schedule_status == 0) ? 'selected' : '' ?>>Inactive</option>
                            <option value="1" <?= (auth()->user()->schedule_status == 1) ? 'selected' : '' ?>>Active</option>
                        </select>
                        <label for="schedule_status">Schedule</label>
                        <div class="vertical-line"></div> <!-- vertical Line added -->
                    </div>

                    <!-- Status section -->
                    <div class="mb-4" style="min-width:200px;">
                        <div class="d-flex flex-column">
                            <?php foreach (['raw', 'sub', 'dub', 'turk'] as $status) : ?>
                                <div class="d-flex align-items-start">
                                    <select id="<?= $status ?>_status" name="<?= $status ?>_status" onchange="toggleValue(this)">
                                        <option value="0" <?= (auth()->user()->{$status . '_status'} == 0) ? 'selected' : '' ?>>Inactive</option>
                                        <option value="1" <?= (auth()->user()->{$status . '_status'} == 1) ? 'selected' : '' ?>>Active</option>
                                    </select>
                                    <label for="<?= $status ?>_status" class="me-2"><?= ucfirst($status) ?></label>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                    <script type="module">
                        function toggleValue(select) {
                            const hiddenInput = document.querySelector(`input[id="${select.id}_status_hidden"]`);
                            hiddenInput.value = select.value;
                        }
                    </script>
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
            </div>


        </div>

        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>