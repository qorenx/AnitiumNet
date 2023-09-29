<div id="footer" style="background: linear-gradient(to right, rgba(36, 36, 40) 30%, rgba(0,0,0,0) 80%), url('<?php echo $Settings['Advanced'][4]['value']; ?>'); background-attachment: inherit; background-repeat: round;">
    <div id="footer-about">
        <div class="container">
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
                    <li><a href="/tos" title="Terms of service">Terms of service</a></li>
                    <li><a href="/dmca" title="DMCA">DMCA</a></li>
                </ul>
                <div class="clearfix"></div>
                <p class="copyright">Copyright © 2023 <?php echo $Settings['Advanced'][0]['value']; ?>. All Rights Reserved</p>
            </div>
        </div>
    </div>
</div>