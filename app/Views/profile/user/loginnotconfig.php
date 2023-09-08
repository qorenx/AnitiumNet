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
                            <form class="preform" action="<?= url_to('register') ?>" method="post">
                                <div class="form-group">
                                    <label class="prelabel" for="re-username">Your name</label>
                                    <input type="text" class="form-control" id="re-username" placeholder="Name" name="name" required="">
                                </div>
                                <div class="form-group">
                                    <label class="prelabel" for="re-email">Email address</label>
                                    <input type="email" class="form-control" id="re-email" placeholder="name@email.com" name="email" required="">
                                </div>
                                <div class="form-group">
                                    <label class="prelabel" for="re-password">Password</label>
                                    <input type="password" class="form-control" id="re-password" placeholder="Password" name="password" required="">
                                </div>
                                <div class="form-group">
                                    <label class="prelabel" for="re-confirmpassword">Confirm Password</label>
                                    <input type="password" class="form-control" id="re-confirmpassword" placeholder="Confirm Password" name="password_confirm" required="">
                                </div>
                                <div class="form-group login-btn mb-0">
                                    <button id="btn-register" class="btn btn-primary btn-block">Register</button>
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