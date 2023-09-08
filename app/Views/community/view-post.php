<?= $this->include('community/extend/header') ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>files/css/profile.css">

<body data-page="page_profile" style="max-width:100%!important;width:100%!important;">
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <?= $this->include('anime/extend/templates/head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
            <div class="award-bg">
                <div class="award-bg-img" style="background-image: url(/files/images/cover.png);"></div>
            </div>
            <div class="container">
                <div class="award-inner">
                    <div class="wideview">
                        <div class="connect-detail">
                            <div class="ai-control">
                                <div class="aic-left">
                                    <a href="/community/board"><i class="fas fa-angle-left mr-2"></i>Back</a>
                                </div>
                            </div>
                            <?= $this->include('community/extend/getboardpost') ?>
                            <div class="list-comment">
                                <div id="result" class="cw_list"></div>
                                <button style="margin: 0 auto; display: block; font-size: 16px; padding: 10px 20px; background-color: #353b4d; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="runCommand()" id="viewpostbutton">Show Post</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mask-overlay"></div>
                <?= $this->include('community/load') ?>
                <?= $this->include('anime/loadscript') ?>
            </div>
        </div>
</body>

</html>