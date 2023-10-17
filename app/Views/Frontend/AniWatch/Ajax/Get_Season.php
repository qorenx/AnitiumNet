<div class="block_area-header">
    <div class="bah-heading">
        <h2 class="cat-heading">More Seasons</h2>
    </div>
    <div class="clearfix"></div>
</div>
<div class="os-list">
    <?php foreach ($SeasonData as $Season) : ?>
        <a href="<?= base_url('anime/' . $Season['uid']) ?>/<?php
                                                            $slug = trim(preg_replace("/[^\w\s\-]+/", "", $Season['ani_name']), " ");
                                                            $slug = preg_replace("/\s+|--/", "_", $slug);
                                                            $slug = preg_replace("/\bii\b/", "II", $slug);
                                                            $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                            $slug = ucfirst($slug);
                                                            echo $slug;
                                                            ?>" class="os-item <?= isset($Season['active']) && $Season['active'] == 1 ? 'active' : '' ?>">
            <div class="title"><?= $Season['ani_name'] ?></div>
            <div class="season-poster" style="background-image: url(<?= $Season['ani_poster'] ?>);"></div>
        </a>
    <?php endforeach; ?>
</div>