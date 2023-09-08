<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
    <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
        <?php
        $roleToClass = [
            'superadmin' => 'user-name is-level-x is-level-b',
            'admin' => 'user-name is-level-x is-level-d',
            'mod' => 'user-name is-level-x is-level-a'
        ];
        foreach ($getlastpost as $lastcom) :
            $lastcomclass = $roleToClass[$lastcom['group']] ?? 'user-name';
            $content = strlen($lastcom['post_content']) > 200 ? substr($lastcom['post_content'], 0, 200) . "..." : $lastcom['post_content'];
            $animeURL = "/watch?anime=" . urlencode($lastcom['ani_name']) . "&uid=" . $lastcom['post_ani'] . "&eps=" . $lastcom['post_ep'];
            $nameURL = "anime/" . $lastcom['post_ani'] . "/" . preg_replace("/[\s\/]+/", "-", $lastcom['ani_name']);
            $name = strlen($lastcom['ani_name']) > 65 ? substr($lastcom['ani_name'], 0, 65) . "..." : $lastcom['ani_name'];
        ?>
            <div class="swiper-slide swiper-slide-active" style="width: 281.5px; margin-right: 20px;">
                <div class="dwl-item">
                    <div class="comment-avatar">
                        <div class="user-avatar">
                            <img src="<?= $lastcom['avatar'] ?>" class="user-avatar-img">
                        </div>
                    </div>
                    <div class="comment-inline">
                        <div class="about">
                            <a href="/community/user/<?= $lastcom['username'] ?>" target="_blank" class="<?= $lastcomclass ?>">
                                <?= $lastcom['username'] ?>
                            </a>
                            <div class="time"><span class="role"><?= $lastcom['group'] ?></span>
                                <?php
                                $datetime1 = new DateTime(); // current datetime
                                $datetime2 = new DateTime($lastcom['created_at']);
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
                            <a class="zt-blue mr-2" href="<?= $animeURL ?>"><i class="fas fa-tv"></i> <?= $lastcom['post_ep'] ?></a>
                            <a href="<?= $nameURL ?>"><i class="far fa-file-alt mr-1"></i> <?= $name ?></a>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <div class="swiper-scrollbar"></div>
</div>