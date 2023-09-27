<div class="block_area-header">
    <div class="bah-heading">
        <h2 class="cat-heading">More Seasons</h2>
    </div>
    <div class="clearfix"></div>
</div>
<div class="os-list">
    <?php foreach ($getseason as $season) : ?>
        <a href="<?= base_url('anime/' . $season['uid'] . '/') ?>
<?php
        $nameParts = explode(',', $season['ani_name'], 2);
        if (count($nameParts) > 1) {
            $name = trim($nameParts[1]);
        } else {
            $name = $season['ani_name'];
        }
        $slug = strtolower(str_replace(' ', '-', implode(' ', array_slice(explode(' ', preg_replace('/[\/*!\^%&\/()=?.:",]/', '', $name)), 0, 10))));
        echo $slug;
?>" class="os-item <?= isset($season['active']) && $season['active'] == 1 ? 'active' : '' ?>">
            <div class="title"><?= $season['ani_name'] ?></div>
            <div class="season-poster" style="background-image: url(<?= $season['ani_poster'] ?>);"></div>
        </a>
    <?php endforeach; ?>
</div>