<?= $this->include('Frontend/AniWatch/İnclude/Header') ?>

<body data-page="page_home">
    <div id="sidebar_menu_bg"></div>
    <div id="wrapper" data-page="page_home">
        <?= $this->include('Frontend/AniWatch/İnclude/Head') ?>
        <div class="clearfix"></div>
        <div id="main-wrapper" class="layout-page layout-award">
            <div class="award-bg" style="z-index: -9999;">
                <div class="award-bg-img" style="background-image: url(/assest/images/cover.png);"></div>
            </div>
            <div class="container">
                <div class="award-inner myzone-inner">
                    <div class="ai-control">
                        <div class="aic-left">
                            <a href="/community/user/<?= $getuserdata->username ?>"><i class="fas fa-angle-left mr-2"></i>Back</a>
                        </div>
                    </div>
                    <div class="block_area my-watchlist-full">
                        <div class="block_area-header mb-4">
                            <div class="float-left bah-heading">
                                <h2 class="cat-heading mb-0">Watch List of <?= $getuserdata->username ?></h2>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="fav-tabs mb-4">
                            <ul class="nav nav-tabs pre-tabs pre-tabs-min">
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="all-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/all?sort='">
                                        <i class="fas fa-globe"></i> All
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="favorite-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/favorite?sort='">
                                        <i class="fas fa-heart"></i> Favorite
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="watching-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/watching?sort='">
                                        <i class="fas fa-eye"></i> Watching
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="onhold-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/on-hold?sort='">
                                        <i class="fas fa-pause"></i> On-Hold
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="plan-to-watch-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/plan-to-watch?sort='">
                                        <i class="fas fa-clock"></i> Plan-to-Watch
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="dropped-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/dropped?sort='">
                                        <i class="fas fa-times"></i> Dropped
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a style="cursor: pointer;" class="nav-link" id="completed-btn" onclick="window.location.href='<?php echo base_url(); ?>community/user/<?= $getuserdata->username ?>/completed?sort='">
                                        <i class="fas fa-check"></i> Completed
                                    </a>
                                </li>
                            </ul>
                            <div class="item-order">
                                <div class="bhs-item">
                                    <div data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="bhsi-name"><span>Sort by: </span>
                                        <?php
                                        $url = $_SERVER['REQUEST_URI'];
                                        parse_str(parse_url($url, PHP_URL_QUERY), $query);
                                        $sort = $query['sort'] ?? 'default';

                                        switch ($sort) {
                                            case 'recently-added':
                                                echo 'Recently Added';
                                                break;
                                            case 'recently-updated':
                                                echo 'Recently Updated';
                                                break;
                                            case 'score':
                                                echo 'Score';
                                                break;
                                            case 'a-z':
                                                echo 'Name A-Z';
                                                break;
                                            case 'released-date':
                                                echo 'Released Date';
                                                break;
                                            case 'most-watched':
                                                echo 'Most Watched';
                                                break;
                                            default:
                                                echo 'Default';
                                                break;
                                        }
                                        ?>
                                        <i class="fas fa-angle-down ml-2"></i>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-model dropdown-menu-normal" aria-labelledby="ssc-list">
                                        <?php
                                        $url = $_SERVER['REQUEST_URI'];
                                        preg_match('/\/user\/(.+?)\/(.+?)\?/', $url, $matches);
                                        $username = $matches[1];
                                        $category = $matches[2];

                                        parse_str(parse_url($url, PHP_URL_QUERY), $query);
                                        $sort = $query['sort'] ?? 'default';
                                        $options = ['recently-added', 'recently-updated', 'score', 'a-z', 'released-date', 'most-watched'];
                                        ?>

                                        <a class="dropdown-item <?= isset($query['sort']) && in_array($query['sort'], $options) ? '' : 'added' ?>" href="/community/user/<?= $username ?>/<?= $category ?>?sort=">Default <?= isset($query['sort']) && in_array($query['sort'], $options) ? '' : '<i class="fas fa-check ml-2"></i>' ?></a>

                                        <?php
                                        $options_labels = ['Recently Added', 'Recently Updated', 'Score', 'Name A-Z', 'Released Date', 'Most Watched'];
                                        foreach ($options as $key => $option) :
                                            $isSelected = ($sort == $option) ? 'added' : '';
                                            $checkIcon = ($sort == $option) ? '<i class="fas fa-check ml-2"></i>' : '';
                                        ?>

                                            <a class="dropdown-item <?= $isSelected ?>" href="/community/user/<?= $username ?>/<?= $category ?>?sort=<?= $option ?>"><?= $options_labels[$key] ?> <?= $checkIcon ?></a>

                                        <?php endforeach; ?>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="block_area-content block_area-list film_list film_list-grid">
                            <div class="film_list-wrap">

                                <?php if (!empty($anistatus)) : ?>
                                    <?php foreach ($anistatus as $value) : ?>
                                        <div class="flw-item">
                                            <div class="film-poster">
                                                <div class="tick tick-rate"><?php
                                                                            $ratings = [
                                                                                1 => 'G',
                                                                                2 => 'PG',
                                                                                3 => 'PG-13',
                                                                                4 => 'R',
                                                                                5 => 'Rx'
                                                                            ];

                                                                            echo $ratings[$value['ani_rate']] ?? '';
                                                                            ?></div>
                                                <div class="tick ltr">
                                                    <div class="tick-item tick-eps"><?= $value['ani_ep'] ?></div>
                                                </div>
                                                <img class="film-poster-img lazyloaded" src="<?= $value['ani_poster'] ?>">
                                                <a class="film-poster-ahref" data-id="<?php echo $value['uid'] ?>" href="<?= base_url('anime/' . $value['uid'] . '/') ?><?php
                                                                                                                                                                        $slug = trim(preg_replace("/[^\w\s\-]+/", "", $value['ani_name']), " ");
                                                                                                                                                                        $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                                                        $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                                                        $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                                                        $slug = ucfirst($slug);
                                                                                                                                                                        echo $slug;
                                                                                                                                                                        ?>"><i class="fas fa-play"></i></a>
                                            </div>
                                            <div class="film-detail">
                                                <h3 class="film-name"><a href="<?= base_url('anime/' . $value['uid'] . '/') ?><?php
                                                                                                                                $slug = trim(preg_replace("/[^\w\s\-]+/", "", $value['ani_name']), " ");
                                                                                                                                $slug = preg_replace("/\s+|--/", "_", $slug);
                                                                                                                                $slug = preg_replace("/\bii\b/", "II", $slug);
                                                                                                                                $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
                                                                                                                                $slug = ucfirst($slug);
                                                                                                                                echo $slug;
                                                                                                                                ?>" class="dynamic-name"><?= $value['ani_name'] ?></a></h3>
                                                <div class="fd-infor">
                                                    <span class="fdi-item"><?php
                                                                            if ($value['ani_type'] == 1) {
                                                                                echo "TV";
                                                                            } elseif ($value['ani_type'] == 2) {
                                                                                echo "Movie";
                                                                            } elseif ($value['ani_type'] == 3) {
                                                                                echo "Ova";
                                                                            } elseif ($value['ani_type'] == 4) {
                                                                                echo "Ona";
                                                                            } elseif ($value['ani_type'] == 5) {
                                                                                echo "Special";
                                                                            }
                                                                            ?></span>
                                                    <span class="dot"></span>
                                                    <span class="fdi-item fdi-duration"><?= ($value['ani_source'] == 1) ? "Manga" : (($value['ani_source'] == 2) ? "LightNovel" : "Other") ?></span>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            </div>
                            <div class="clearfix"></div>
                            <?php
                            $pagerLinks = service('pager');
                            echo $pagerLinks->makeLinks($pager['currentPage'], $pager['itemsPerPage'], $pager['totalItems']);
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?= $this->include('Frontend/AniWatch/İnclude/Footer') ?>
        <div id="mask-overlay"></div>
        <?= $this->include('Frontend/AniWatch/İnclude/LoadScript') ?>
    </div>
    </div>
</body>