<?php if (auth()->user()) : ?>
<?php else : ?>
    <div class="modal fade premodal premodal-login" id="modallogin" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="tab-content">
                    <div id="modal-tab-login" class="tab-pane active">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modallogintitle">Welcome back!</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <?php if (session('error') !== null) : ?>
                                <div class="alert alert-danger" role="alert"><?= session('error') ?></div>
                            <?php elseif (session('errors') !== null) : ?>
                                <div class="alert alert-danger" role="alert">
                                    <?php if (is_array(session('errors'))) : ?>
                                        <?php foreach (session('errors') as $error) : ?>
                                            <?= $error ?>
                                            <br>
                                        <?php endforeach ?>
                                    <?php else : ?>
                                        <?= session('errors') ?>
                                    <?php endif ?>
                                </div>
                            <?php endif ?>
                            <form class="preform" action="<?= url_to('login') ?>" method="post">
                                <?= csrf_field() ?>
                                <div class="mb-2">
                                    <input type="email" class="form-control" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required />
                                </div>
                                <div class="mb-2">
                                    <input type="password" class="form-control" name="password" inputmode="text" autocomplete="current-password" placeholder="<?= lang('Auth.password') ?>" required />
                                </div>
                                <?php if (setting('Auth.sessionConfig')['allowRemembering']) : ?>
                                    <div class="form-check">
                                        <label class="form-check-label">
                                            <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked<?php endif ?>>
                                            <?= lang('Auth.rememberMe') ?>
                                        </label>
                                    </div>
                                <?php endif; ?>
                                <div class="d-grid col-12 col-md-8 mx-auto m-3">
                                    <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.login') ?></button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer text-center">
                            Don't have an account? <a class="link-highlight register-tab-link" title="Register">Register</a>
                        </div>
                    </div>
                    <div id="modal-tab-register" class="tab-pane fade">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modallogintitle2">Create an Account</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="<?= url_to('register') ?>" method="post">
                                <?= csrf_field() ?>
                                <div class="form-floating mb-2">
                                    <input type="email" class="form-control" id="floatingEmailInput" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required />
                                </div>
                                <div class="form-floating mb-4">
                                    <input type="text" class="form-control" id="floatingUsernameInput" name="username" inputmode="text" autocomplete="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>" required />
                                </div>
                                <div class="form-floating mb-2">
                                    <input type="password" class="form-control" id="floatingPasswordInput" name="password" inputmode="text" autocomplete="new-password" placeholder="<?= lang('Auth.password') ?>" required />
                                </div>
                                <div class="form-floating mb-5">
                                    <input type="password" class="form-control" id="floatingPasswordConfirmInput" name="password_confirm" inputmode="text" autocomplete="new-password" placeholder="<?= lang('Auth.passwordConfirm') ?>" required />
                                </div>
                                <div class="d-grid col-12 col-md-8 mx-auto m-3">
                                    <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.register') ?></button>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer text-center">
                            Have an account? <a class="link-highlight login-tab-link" title="Login">Login</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif ?>