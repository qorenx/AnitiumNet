<div id="sticky" class="nc-sidebar">
    <div class="page-title"><?php echo $webdata['webname']; ?> <span>COMMUNITY</span></div>
    <div class="nc-cate">
        <a class="item active" href="<?= base_url('community/board') ?>">
            <div class="ztag"><span class="zt-white">#All</span>
            </div>
            <div class="number"></div>
        </a>
        <a class="item " href="<?= base_url('community/board/tag/updates') ?>">
            <div class="ztag"><span class="zt-red">#Updates</span></div>
            <div class="number"><?php echo $updates; ?> posts</div>
        </a>
        <a class="item " href="<?= base_url('community/board/tag/general') ?>">
            <div class="ztag"><span class="zt-blue">#General</span></div>
            <div class="number"><?php echo $general; ?> posts</div>
        </a>
        <a class="item " href="<?= base_url('community/board/tag/suggestion') ?>">
            <div class="ztag"><span class="zt-green">#Suggestion</span></div>
            <div class="number"><?php echo $suggestion; ?> posts</div>
        </a>
        <a class="item " href="<?= base_url('community/board/tag/question') ?>">
            <div class="ztag"><span class="zt-yellow">#Question</span></div>
            <div class="number"><?php echo $question; ?> posts</div>
        </a>
        <a class="item " href="<?= base_url('community/board/tag/discussion') ?>">
            <div class="ztag"><span class="zt-purple">#Discussion</span></div>
            <div class="number"><?php echo $discussion; ?> posts</div>
        </a>
        <a class="item " href="<?= base_url('community/board/tag/feedback') ?>">
            <div class="ztag"><span class="zt-orange">#Feedback</span></div>
            <div class="number"><?php echo $feedback; ?> posts</div>
        </a>
    </div>
</div>