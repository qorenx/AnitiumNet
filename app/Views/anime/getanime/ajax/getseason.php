<div class="block_area-header">
    <div class="bah-heading">
        <h2 class="cat-heading">More Seasons</h2>
    </div>
    <div class="clearfix"></div>
</div>
<div class="os-list">
    <?php foreach ($getseason as $season) : ?>
        <a href="<?= base_url('anime/' . $season['uid'] . '/' . str_replace(' ', '-', $season['ani_name'])) ?>" class="os-item <?= isset($season['active']) && $season['active'] == 1 ? 'active' : '' ?>">
            <div class="title"><?= $season['ani_name'] ?></div>
            <div class="season-poster" style="background-image: url(<?= $season['ani_poster'] ?>);"></div>
        </a>
    <?php endforeach; ?>
</div>