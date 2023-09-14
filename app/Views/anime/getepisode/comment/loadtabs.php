<section class="block_area block_area-comment">
    <div class="block_area-header block_area-header-tabs">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Comments</h2>
        </div>
        <div class="float-left bah-setting">
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="container">
        <div class="nav-button-container">
            <button class="nav-button active" data-content="#content1">
                <?php echo $settings['Advanced'][0]['value']; ?>
            </button>
            <button class="nav-button" data-content="#content2">Disqus</button>
        </div>
        <div class="content-container">
            <div class="content" id="content1">
                <?= $this->include('anime/getepisode/comment/comment') ?>
            </div>
            <div class="content" id="content2" style="display:none;">
                <?= $this->include('anime/getepisode/comment/disqus') ?>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.nav-button').click(function(){
                $('.nav-button.active').removeClass('active');
                $(this).addClass('active');
                $('.content').hide();
                $($(this).data('content')).show();
            });
        });
    </script>
</section>