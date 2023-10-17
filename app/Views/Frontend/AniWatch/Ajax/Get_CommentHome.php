<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
    <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
        <?php
        $roleToClass = [
            'superadmin' => 'user-name is-level-x is-level-b',
            'admin' => 'user-name is-level-x is-level-d',
            'mod' => 'user-name is-level-x is-level-a'
        ];
        foreach ($CommentHomeData as $NeworTop) :
            $NeworTopclass = $roleToClass[$NeworTop['group']] ?? 'user-name';
            $content = strlen($NeworTop['post_content']) > 200 ? substr($NeworTop['post_content'], 0, 200) . "..." : $NeworTop['post_content'];
            $slug = trim(preg_replace("/[^\w\s\-]+/", "", $NeworTop['ani_name']), " ");
            $slug = preg_replace("/\s+|--/", "_", $slug);
            $slug = preg_replace("/\bii\b/", "II", $slug);
            $slug = preg_replace('/_-_|_{2,}/', '_', $slug);
            $slug = ucfirst($slug);
            $animeURL = "/watch?anime=" . $slug . "&uid=" . $NeworTop['post_ani'] . "&eps=" . $NeworTop['post_ep'];
            $nameURL = "anime/" . $NeworTop['post_ani'] . "/" . $slug;
            $name = strlen($NeworTop['ani_name']) > 65 ? substr($NeworTop['ani_name'], 0, 65) . "..." : $NeworTop['ani_name'];
        ?>
            <div class="swiper-slide swiper-slide-active" style="width: 281.5px; margin-right: 20px;">
                <div class="dwl-item">
                    <div class="comment-avatar">
                        <div class="user-avatar">
                            <img src="<?= $NeworTop['avatar'] ?>" class="user-avatar-img">
                        </div>
                    </div>
                    <div class="comment-inline">
                        <div class="about">
                            <a href="/community/user/<?= $NeworTop['username'] ?>" target="_blank" class="<?= $NeworTopclass ?>">
                                <?= $NeworTop['username'] ?>
                            </a>
                            <div class="time"><span class="role"><?= $NeworTop['group'] ?></span>
                                <?php
                                $datetime1 = new DateTime(); // current datetime
                                $datetime2 = new DateTime($NeworTop['created_at']);
                                $interval = $datetime1->diff($datetime2);

                                $year = $interval->format('%y');
                                $month = $interval->format('%m');
                                $day = $interval->format('%d');
                                $hour = $interval->format('%h');
                                $minute = $interval->format('%i');

                                if ($year >= 1)
                                    echo $year . " year(s) ago";
                                else if ($month >= 1)
                                    echo $month . " month(s) ago";
                                else if ($day >= 1)
                                    echo $day . " day(s) ago";
                                else if ($hour >= 1)
                                    echo $hour . " hour(s) ago";
                                else
                                    echo $minute . " minute(s) ago";
                                ?>
                            </div>
                        </div>
                        <div class="text-cut"><?= $content ?></div>
                        <div class="on-chapt">
                            <a class="zt-blue mr-2" href="<?= $animeURL ?>"><i class="fas fa-tv"></i> <?= $NeworTop['post_ep'] ?></a>
                            <a href="<?= $nameURL ?>"><i class="far fa-file-alt mr-1"></i> <?= $name ?></a>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="swiper-scrollbar"></div>
</div>