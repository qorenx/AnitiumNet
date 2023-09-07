<div class="item">
    <span class="item-head">Studio:</span>
    <?php
    $studios = explode(',', $AnimeData['ani_studio']);
    foreach ($studios as $studio) {
        $studio = trim($studio);
        $studio_url = "https://myanimelist.net/company?q=" . urlencode($studio);
        echo "<a href='$studio_url'>$studio</a>";
        if ($studio != end($studios)) {
            echo " ";
        }
    }
    ?>
</div>