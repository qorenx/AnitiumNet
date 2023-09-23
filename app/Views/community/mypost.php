<?= $this->include('community/extend/header') ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>files/css/profile.css">

<body data-page="page_profile" style="max-width:100%!important;width:100%!important;">
<div id="sidebar_menu_bg"></div>
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
                    <div class="ai_-tabs">
                        <a href="/community/board" class="active"><?php echo $settings['Advanced'][0]['value']; ?> Community</a>
                    </div>
                    <div class="ai_-welcome text-center pb-0">
                        <div class="d-block"><?php echo $settings['Advanced'][0]['value']; ?> Connect</div>
                    </div>
                    <div class="new-connect">
                        <div class="nc-wrap">
                            <?= $this->include('community/extend/nc-sidebar') ?>
                            <div class="nc-body">
                                <div class="nc-head">
                                    <div class="is-right">
                                        <?php if (auth()->loggedIn()) : ?>
                                            <div class="is-create">
                                                <a href="/community/new-post" class="item-link active">
                                                    <i class="fas fa-plus"></i><span class="ml-2">Create</span>
                                                </a>
                                            </div>
                                            <div class="is-manager ml-2">
                                                <a href="/community/my-post" class="item-link">
                                                    <i class="fas fa-list"></i><span class="ml-2">My Posts</span>
                                                </a>
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                                <div class="nc-list">
                                    <div id="post-list" class="post-list">
                                    </div>
                                    <button style="margin: 0 auto; display: none; font-size: 16px; padding: 10px 20px; background-color: #353b4d; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="getboardmypost()" id="viewpostbutton">Show Post</button>
                                    <script>
                                        var nextPage = 1;
                                        var xhr = new XMLHttpRequest();

                                        function getboardmypost() {
                                            var url = "/ajax/getboardmypost?page=" + nextPage;
                                            xhr.open("GET", url, true);
                                            xhr.onreadystatechange = function() {
                                                if (xhr.readyState === 4 && xhr.status === 200) {
                                                    var data = JSON.parse(xhr.responseText);
                                                    var htmlData = data['html'];
                                                    var htmlData2 = data['page']['status'];
                                                    var resultElement = document.getElementById("post-list");
                                                    resultElement.innerHTML += htmlData;

                                                    nextPage++;

                                                    if (htmlData2 === false) {
                                                        document.getElementById("viewpostbutton").style.display = "none";
                                                    }
                                                }
                                            };
                                            xhr.send();
                                        }

                                        document.addEventListener("DOMContentLoaded", getboardmypost);
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="mask-overlay"></div>
        <?= $this->include('anime/loadscript') ?>
    </div>
    </div>
</body>

</html>