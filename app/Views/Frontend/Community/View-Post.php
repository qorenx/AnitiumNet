<?= $this->include('Frontend/İnclude/Header') ?>


<body data-page="page_profile">
<div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/İnclude/Head') ?>
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
                            <?= $this->include('Frontend/Community/Extend-View-Post') ?>
                            <div class="list-comment">
                                <div id="result" class="cw_list"></div>
                                <button style="margin: 0 auto; display: block; font-size: 16px; padding: 10px 20px; background-color: #353b4d; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="runCommand()" id="viewpostbutton">Show Post</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mask-overlay"></div>
                <?= $this->include('Frontend/Community/LoadScript') ?>
                <?= $this->include('Frontend/İnclude/LoadScript') ?>
            </div>
        </div>
</body>