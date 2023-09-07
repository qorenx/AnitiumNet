<div class="block_area-header">
    <div class="bah-heading">
        <h2 class="cat-heading">More Seasons</h2>
    </div>
    <div class="clearfix"></div>
</div>
<div class="os-list">
    <?php foreach ($getseason as $season) : ?>
        <a href="<?= base_url('anime/' . $season['season_id'] . '/' . str_replace(' ', '-', $season['season_name'])) ?>" class="os-item ">
            <div class="title"><?= $season['season_name'] ?></div>
            <div class="season-poster" style="background-color:cadetblue"></div>
        </a>
    <?php endforeach; ?>
</div>