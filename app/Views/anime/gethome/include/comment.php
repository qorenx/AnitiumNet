<div id="discussion">
    <div class="container" style="max-width:100%!important;width:100%!important;">
        <div class="dis-wrap dis-model">
            <div class="d_w-icon" style="z-index: 2;background: #2f2f33;">
                <img src="/files/images/lastcomment.png">
            </div>
            <div class="d_w-list">
                <ul class="nav nav-tabs pre-tabs pre-tabs-min">
                    <li class="nav-item"><a data-toggle="tab" href="#new-comment" class="nav-link cm-tab active show">Newest Comments</a></li>
                </ul>
                <div class="tab-content" id="comment-widget">
                    <div id="new-comment" class="tab-pane show active">
                        <div class="dwl-ul" id="dwl-ul">
                            <div class="swiper-container-comment swiper-container-initialized swiper-container-horizontal swiper-container-free-mode">
                                <div class="swiper-wrapper">
                                    <?php
                                    $roleToClass = [
                                        'superadmin' => 'user-name is-level-x is-level-b',
                                        'admin' => 'user-name is-level-x is-level-d',
                                        'mod' => 'user-name is-level-x is-level-a'
                                    ];
                                    foreach ($lastcomment as $lastcom) :
                                        $lastcomclass = $roleToClass[$lastcom['group']] ?? 'user-name';
                                        $content = strlen($lastcom['post_content']) > 200 ? substr($lastcom['post_content'], 0, 200) . "..." : $lastcom['post_content'];
                                        $animeURL = "/watch?anime=" . urlencode($lastcom['ani_name']) . "&uid=" . $lastcom['post_ani'] . "&eps=" . $lastcom['post_ep'];
                                        $nameURL = "anime/" . $lastcom['post_ani'] . "/" . preg_replace("/[\s\/]+/", "-", $lastcom['ani_name']);
                                        $name = strlen($lastcom['ani_name']) > 65 ? substr($lastcom['ani_name'], 0, 65) . "..." : $lastcom['ani_name'];
                                    ?>
                                        <div class="swiper-slide">
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
                                <div class="swiper-container">
                                    <div class="swiper-scrollbar"></div>
                                </div>
                            </div>
                        </div>

                        <script>
                            document.addEventListener('DOMContentLoaded', function() {
                                var mySwiper = new Swiper('.swiper-container-comment', {
                                    slidesPerView: 4,
                                    spaceBetween: 20,
                                    freeMode: true,
                                    scrollbar: {
                                        el: '.swiper-scrollbar',
                                        hide: false,
                                        draggable: true,
                                    },
                                    on: {
                                        transitionEnd: function() {
                                            var progressPercentage = Math.round(this.progress * 100);
                                            var currentTranslate = this.translate;
                                            this.scrollbar.dragEl.style.transform = `translate3d(${currentTranslate}px, 0px, 0px) scaleX(${progressPercentage / 100})`;
                                        }
                                    },
                                });
                            });
                        </script>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>