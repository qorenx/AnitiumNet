<div id="footer" style="background-image: url('<?php echo $settings['Advanced'][4]['value']; ?>');background-attachment: inherit;background-repeat: round;"">
    <?php if (session()->getFlashdata('success')) : ?>
        <div id=" toast-container" class="toast-bottom-right">
    <div class="toast toast-success" aria-live="polite">
        <div class="toast-message"><?= session()->getFlashdata('success') ?></div>
    </div>
</div>
<script>
    setTimeout(function() {
        document.getElementById("toast-container").style.display = "none";
    }, 5000);
</script>
<?php endif; ?>
<div id="footer-about">
    <div class="container" style="max-width:100%!important;width:100%!important;">
        <div class="footer-az">
            <div class="block mb-3">
                <span class="ftaz">A-Z LIST</span>
                <span class="size-s">Searching anime order by alphabet name A to Z.</span>
            </div>
            <ul class="ulclear az-list">
                <li><a href="/search">All</a></li>
                <?php
                foreach (range('A', 'Z') as $letter) {
                    echo "<li><a href='" . base_url() . "az-list/{$letter}'>{$letter}</a></li>";
                }
                ?>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="footer-links">
            <ul class="ulclear">
                <li><a href="" title="Terms of service">Terms of service</a></li>
                <li><a href="" title="DMCA">DMCA</a></li>
            </ul>
            <div class="clearfix"></div>
            <p class="copyright">Copyright © 2023 <?php echo $settings['Advanced'][0]['value']; ?>. All Rights Reserved</p>
        </div>
    </div>
</div>
</div>