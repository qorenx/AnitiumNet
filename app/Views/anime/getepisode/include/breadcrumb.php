<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item">
            <a itemprop="item" href="/"><span itemprop="name">Home</span></a>
            <meta itemprop="position" content="1">
        </li>
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item">
            <a itemprop="item" href="<?= base_url('anime/' . $episodesData[0]['uid'] . "/" . str_replace(" ", "-", $animeData['ani_name'])) ?>"><span itemprop="name">Anime</span></a>
            <meta itemprop="position" content="2">
        </li>
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item" aria-current="page">
            <a itemprop="item"><span itemprop="name">Episode-<?= $episodesData[0]['ep_id_name'] ?></span></a>
            <meta itemprop="position" content="3">
        </li>
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item" aria-current="page">
            <a itemprop="item" href="<?= current_url() ?>"><span itemprop="name"><?= !empty($episodesData[0]['ep_name']) ?  $episodesData[0]['ep_name'] : "Unknown" ?> </span></a>
            <meta itemprop="position" content="4">
        </li>
    </ol>
</nav>