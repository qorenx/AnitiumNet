<?= $this->include('profile/extend/header') ?>

<body data-page="page_register">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('profile/extend/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div class="container text-center">
                    <div class="container d-flex justify-content-center p-1">
                        <div class="card col-12 col-md-5 shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title mb-5" style="color:black"><?= lang('Auth.register') ?></h5>
                                <?php if (session('error') !== null) : ?>
                                    <div class="alert alert-danger" role="alert"><?= session('error') ?></div>
                                <?php elseif (session('errors') !== null) : ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?php if (is_array(session('errors'))) :
                                            foreach (session('errors') as $error) :
                                                echo $error . "<br>";
                                            endforeach;
                                        else :
                                            echo session('errors');
                                        endif; ?>
                                    </div>
                                <?php endif; ?>
                                <form action="<?= url_to('register') ?>" method="post">
                                    <?= csrf_field() ?>
                                    <div class="mb-2">
                                        <input type="email" class="form-control" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required>
                                    </div>
                                    <div class="mb-4">
                                        <input type="text" class="form-control" name="username" inputmode="text" autocomplete="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>" required>
                                    </div>
                                    <div class="mb-2">
                                        <input type="password" class="form-control" name="password" inputmode="text" autocomplete="new-password" placeholder="<?= lang('Auth.password') ?>" required>
                                    </div>
                                    <div class="mb-5">
                                        <input type="password" class="form-control" name="password_confirm" inputmode="text" autocomplete="new-password" placeholder="<?= lang('Auth.passwordConfirm') ?>" required>
                                    </div>
                                    <div class="d-grid col-12 col-md-8 mx-auto m-3">
                                        <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.register') ?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
</body>

</html>