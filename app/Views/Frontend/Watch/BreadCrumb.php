<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item">
            <a itemprop="item" href="/"><span itemprop="name">Home</span></a>
            <meta itemprop="position" content="1">
        </li>
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item">
            <a itemprop="item" <?php
                                $aniTypes = [
                                    1 => "tv",
                                    2 => "movie",
                                    3 => "ova",
                                    4 => "ona",
                                    5 => "special",
                                ];
                                ?> href="<?= base_url('type/' . $aniTypes[$AnimeData['ani_type']]) ?>"><span itemprop="name"><?php
                                                                                                                                if ($AnimeData['ani_type'] == 1) {
                                                                                                                                    echo "TV";
                                                                                                                                } elseif ($AnimeData['ani_type'] == 2) {
                                                                                                                                    echo "Movie";
                                                                                                                                } elseif ($AnimeData['ani_type'] == 3) {
                                                                                                                                    echo "Ova";
                                                                                                                                } elseif ($AnimeData['ani_type'] == 4) {
                                                                                                                                    echo "Ona";
                                                                                                                                } elseif ($AnimeData['ani_type'] == 5) {
                                                                                                                                    echo "Special";
                                                                                                                                }
                                                                                                                                ?></span></a>
            <meta itemprop="position" content="2">
        </li>
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem" class="breadcrumb-item" aria-current="page">
            <a itemprop="item"><span itemprop="name"><?= $AnimeData['ani_name'] ?></span></a>
            <meta itemprop="position" content="3">
        </li>
    </ol>
</nav>