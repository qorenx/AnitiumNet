<?= $this->include('Frontend/AniWatch/İnclude/Header') ?>

<body data-page="page_profile">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <div class="clearfix"></div>
        <?= $this->include('Frontend/AniWatch/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
            <div class="award-bg">
                <div class="award-bg-img" style="background-image: url(/files/images/cover.png);"></div>
            </div>
            <div class="container">
                <div class="award-inner">
                    <div class="wideview">
                        <div class="connect-detail connect-create">
                            <div class="ai-control">
                                <div class="aic-left">
                                    <a href="/community/board"><i class="fas fa-angle-left mr-2"></i>Back</a>
                                </div>
                            </div>
                            <div class="cd-create">
                                <h3 class="article-name mb-3">Create a new Post</h3>
                                <div class="cda-form">

                                    <div class="alert alert-danger mb-3" id="post-error" style="display: none;"></div>
                                    <form class="preform" method="post" action="/post/board-new-post" id="post-form">
                                        <input type="hidden" name="user_id" value="<?= auth()->user()->id ?>">
                                        <input type="hidden" name="post_id" value="<?php echo rand(000000, 99999999); ?>">
                                        <div class="form-group">
                                            <label for="dropdown-select">Select Tags</label>
                                            <div class="connect-tag-choose">
                                                <select class="form-control" id="dropdown-select" name="post_tag">
                                                    <option selected disabled hidden value="">Select Tag...</option>
                                                    <option value="1">Updates</option>
                                                    <option value="2">General</option>
                                                    <option value="3">Suggestion</option>
                                                    <option value="4">Question</option>
                                                    <option value="5">Discussion</option>
                                                    <option value="6">Feedback</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="connect-title">Title</label>
                                            <input type="text" class="form-control" name="post_head" maxlength="255" placeholder="Title of post" required="">
                                        </div>
                                        <div class="form-group">
                                            <label for="contact-textarea">Content</label>
                                            <textarea class="form-control form-control-textarea" id="contact-textarea" rows="16" cols="4" name="post_content" maxlength="2000" placeholder="Content of post" required=""></textarea>
                                        </div>
                                        <div class="form-group mt-5">
                                            <button class="btn btn-focus">Submit</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="mask-overlay"></div>
            <?= $this->include('Frontend/AniWatch/İnclude/LoadScript') ?>
        </div>
    </div>
</body>