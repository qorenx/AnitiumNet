<div class="item">
    <span class="item-head">Producers:</span>
    <?php
    $producers = explode(',', $AnimeData['ani_producers']);
    foreach ($producers as $producer) {
        $producer = trim($producer);
        $studio_url = "/producers/" . urlencode($producer);
        echo "<a href='$studio_url'>$producer</a>";
        if ($producer != end($producers)) {
            echo " ";
        }
    }
    ?>
</div>