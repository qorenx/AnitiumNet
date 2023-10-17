<div class="item">
    <span class="item-head">Resources:</span>
    <?php
    $sites = json_decode($AnimeData['external']);
    foreach ($sites as $site) {
    ?>
        <a href='<?php echo $site->url; ?>' class='name'>
            <span><?php echo $site->name; ?></span>
        </a>
    <?php
    }
    ?>
</div>