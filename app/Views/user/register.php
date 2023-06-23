<?= $this->include('anime/templates/header') ?>

<body data-page="page_register">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('anime/templates/head') ?>

        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-page-404">
            <div class="container" style="max-width:100%!important;width:100%!important;">
                <div class="container-404 text-center">
                    <div class="container d-flex justify-content-center p-5">
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
</body>

</html>