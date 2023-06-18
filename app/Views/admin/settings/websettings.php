<?= $this->include('admin/extem/header') ?>

<body>
    <div id="wrapper" data-page="page_home">
        <form action="<?php echo base_url('admin/anisettings/websettings'); ?>" method="post">
            <div class="card-body" style="margin: 0 10%; border: 6px solid black; background-color: #120000; color: white; font-weight: bold;">
                <input type="hidden" name="id" id="id" value="<?php echo $webdata['id']; ?>" class="form-control" readonly>
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" href="#lisans" data-toggle="tab">Lisans</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#webinfo" data-toggle="tab">WebİNFO</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#webimg" data-toggle="tab">WebİMG</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#videoconvert" data-toggle="tab">VideoConvert</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#commendmodule" data-toggle="tab">CommentModule</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#social" data-toggle="tab">Social</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#donation" data-toggle="tab">Donation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#indexpage" data-toggle="tab">İndexPage</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#settings" data-toggle="tab">Settings</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="lisans">
                        <br>
                        <div class="form-group row border-bottom">
                            <label for="weburl" class="col-sm-4 col-form-label">Site URL:</label>
                            <div class="col-sm-8">
                                <input type="text" name="weburl" id="weburl" value="<?php echo $webdata['weburl']; ?>" class="form-control">
                            </div>
                        </div></br>
                        <div class="form-group row border-bottom">
                            <label for="weblic" class="col-sm-4 col-form-label">License:</label>
                            <div class="col-sm-8">
                                <?php
                                $lic_date = DateTime::createFromFormat('d.m.Y', substr($webdata['weblic'], 0, 10));
                                $today = new DateTime();

                                if ($lic_date < $today) {
                                    echo "<span style='color:red;'>The license has expired. Contact us!</span>";
                                } else {
                                    echo "<span style='color:green;'>Your license has not expired.</span>";
                                }
                                ?>
                                <input type="text" name="weblic" id="weblic" value="<?php echo $webdata['weblic']; ?>" class="form-control">
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane" id="webinfo">
                        <br>
                        <div class="form-group row border-bottom">
                            <label for="webname" class="col-sm-4 col-form-label">Site Name:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webname" id="webname" value="<?php echo $webdata['webname']; ?>" class="form-control">
                            </div>
                        </div></br>
                        <div class="form-group row border-bottom">
                            <label for="webinfo" class="col-sm-4 col-form-label">Site İnfo:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webinfo" id="webinfo" value="<?php echo $webdata['webinfo']; ?>" class="form-control">
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane" id="webimg">
                        <br>
                        <div class="form-group row border-bottom">
                            <div class="col-sm-4 d-flex align-items-center">
                                <img src="<?php echo $webdata['weblogo']; ?>" alt="Site Logo" width="150" height="100">
                                <label for="weblogo" class="ml-3 mb-0"><?php echo 'Site Logo:'; ?></label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" name="weblogo" id="weblogo" value="<?php echo $webdata['weblogo']; ?>" class="form-control">
                            </div>
                        </div>
                        </br>
                        <div class="form-group row border-bottom">
                            <div class="col-sm-4 d-flex align-items-center">
                                <img src="<?php echo $webdata['webicon']; ?>" alt="Site Icon" width="150" height="100">
                                <label for="webicon" class="ml-3 mb-0"><?php echo 'Site Icon:'; ?></label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" name="webicon" id="webicon" value="<?php echo $webdata['webicon']; ?>" class="form-control">
                            </div>
                        </div>
                        </br>
                        <div class="form-group row border-bottom">
                            <div class="col-sm-4 d-flex align-items-center">
                                <img src="<?php echo $webdata['webfooter']; ?>" alt="Footer Background Image" width="150" height="100">
                                <label for="webfooter" class="ml-3 mb-0"><?php echo 'Footer Background Image:'; ?></label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" name="webfooter" id="webfooter" value="<?php echo $webdata['webfooter']; ?>" class="form-control">
                            </div>
                        </div>
                        </br>
                    </div>
                    <div class="tab-pane" id="videoconvert">
                        <br>
                        <div class="form-group row border-bottom">
                            <label for="webconvert" class="col-sm-4 col-form-label">Embed Converter-1:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webconvert" id="webconvert" value="<?php echo $webdata['webconvert']; ?>" class="form-control">
                            </div>
                        </div></br>
                        <div class="form-group row border-bottom">
                            <label for="webconvert" 2 class="col-sm-4 col-form-label">Embed Converter-2:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webconvert2" id="webconvert2" value="<?php echo $webdata['webconvert2']; ?>" class="form-control">
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane" id="commendmodule">
                        <br>
                        <div class="form-group row border-bottom">
                            <label for="webdisqus" class="col-sm-4 col-form-label">Disqus Url:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webdisqus" id="webdisqus" value="<?php echo $webdata['webdisqus']; ?>" class="form-control">
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane" id="social">
                        <br>
                        <div class="form-group row border-bottom">
                            <label for="webdiscord" class="col-sm-4 col-form-label">Discord:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webdiscord" id="webdiscord" value="<?php echo $webdata['webdiscord']; ?>" class="form-control">
                            </div>
                        </div></br>
                        <div class="form-group row border-bottom">
                            <label for="webtwitter" class="col-sm-4 col-form-label">Twitter:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webtwitter" id="webtwitter" value="<?php echo $webdata['webtwitter']; ?>" class="form-control">
                            </div>
                        </div></br>
                    </div>
                    <div class="tab-pane" id="donation">
                        <br>
                        <div class="form-group row border-bottom">
                            <label for="webdonation" class="col-sm-4 col-form-label">Patreon:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webdonation" id="webdonation" value="<?php echo $webdata['webdonation']; ?>" class="form-control">
                            </div>
                        </div></br>
                        <div class="form-group row border-bottom">
                            <label for="webdonation2" class="col-sm-4 col-form-label">Bitcoin:</label>
                            <div class="col-sm-8">
                                <input type="text" name="webdonation2" id="webdonation2" value="<?php echo $webdata['webdonation2']; ?>" class="form-control">
                            </div>
                        </div></br>
                    </div>

                    <div class="tab-pane" id="indexpage">
                        <br>
                        <div class="form-group row border-bottom">
                            <div class="col-sm-4 d-flex align-items-center">
                                <img src="<?php echo $webdata['webaniscover']; ?>" alt="AnisCover" width="150" height="100">
                                <label for="webaniscover" class="ml-3 mb-0"><?php echo 'AnisCover:'; ?></label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" name="webaniscover" id="webaniscover" value="<?php echo $webdata['webaniscover']; ?>" class="form-control">
                            </div>
                        </div>
                        <br>
                        <div class="form-group row border-bottom">
                            <div class="col-sm-4 d-flex align-items-center">
                                <img src="<?php echo $webdata['webindexbg']; ?>" alt="IndexBG" width="150" height="100">
                                <label for="webindexbg" class="ml-3 mb-0"><?php echo 'IndexBG:'; ?></label>
                            </div>
                            <div class="col-sm-8">
                                <input type="text" name="webindexbg" id="webindexbg" value="<?php echo $webdata['webindexbg']; ?>" class="form-control">
                            </div>
                        </div>
                        <br>
                    </div>

                    <div class="tab-pane" id="settings">Settings Tab Content

                    </div>
                </div>

                <footer style="position:fixed;right:auto;bottom:0;left:0;z-index:1030;" class="fixed-bottom">
                    <div class="card-footer">
                        <input class="btn btn-primary" type="submit" value="UPDATE">
                    </div>
                </footer>
        </form>
    </div>
    </div>
    <div style="height:100px;"></div>

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