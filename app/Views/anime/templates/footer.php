<div id="footer" style="background-image: url('<?php echo $webdata['webfooter']; ?>');">
    <?php if (session()->getFlashdata('success')) : ?>
        <div id="toast-container" class="toast-bottom-right">
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
                    <li><a href="<?php echo base_url(); ?>az-list/A">A</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/B">B</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/C">C</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/D">D</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/E">E</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/F">F</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/G">G</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/H">H</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/I">I</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/J">J</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/K">K</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/L">L</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/M">M</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/N">N</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/O">O</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/P">P</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/Q">Q</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/R">R</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/S">S</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/T">T</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/U">U</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/V">V</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/W">W</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/X">X</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/Y">Y</a>
                    </li>
                    <li><a href="<?php echo base_url(); ?>az-list/Z">Z</a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="footer-links">
                <ul class="ulclear">
                    <li><a href="" title="Terms of service">Terms of service</a></li>
                    <li><a href="" title="DMCA">DMCA</a></li>
                </ul>
                <div class="clearfix"></div>
                <p class="copyright">Copyright © 2023 <?php echo $webdata['webname']; ?>. All Rights Reserved</p>
            </div>
        </div>
    </div>
</div>