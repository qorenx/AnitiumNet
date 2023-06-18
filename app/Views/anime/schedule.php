<div id="schedule-block">
    <section class="block_area block_area_sidebar block_area-schedule schedule-full">
        <div class="block_area-header">
            <div class="float-left bah-heading mr-4">
                <h2 class="cat-heading">Estimated Schedule</h2>
            </div>
            <div class="float-left bah-time">
                <span class="current-time"><span id="timezone">(GMT+03:00)</span> <span id="current-date"></span> <span id="clock"></span></span>
            </div>
            <div class="clearfix"></div>
        </div>
        <script>
            const currentDate = new Date();
            document.getElementById("current-date").textContent = currentDate.toLocaleDateString();
            setInterval(() => {
                const currentTime = new Date();
                document.getElementById("clock").textContent = currentTime.toLocaleTimeString();
            }, 1000);
        </script>
        <div class="block_area-content">
            <div class="table_schedule">
                <div class="table_schedule-date">
                    <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper">
                            <?php
                            $unique_days = array();
                            for ($i = 0; $i <= 8; $i++) {
                                if (date('m', strtotime("+$i days")) == date('m')) {
                                    array_push($unique_days, date('d', strtotime("+$i days")));
                                }
                            }
                            foreach ($unique_days as $day) : ?>
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide day-item">
                                            <button type="button" onclick="location.href='?days=<?= $day; ?>'" class="tsd-item" style="font-size:larger;color:white;<?= date('d') == $day ? 'color:red' : ''; ?>">
                                                <?= $day; ?>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <ul class="ulclear table_schedule-list limit-8">
                    <?php
                    $days = $_GET['days'] ?? date('d');
                    $sortedSchedule = array_reduce($schedule, function ($acc, $item) {
                        $time = substr($item['sc_time'], 0, 5);
                        $acc[$time][] = $item;
                        return $acc;
                    }, []);
                    ksort($sortedSchedule);
                    ?>
                    <?php foreach ($sortedSchedule as $time => $scheduleItems) : ?>
                        <?php foreach ($scheduleItems as $item) : ?>
                            <?php if ($item['sc_days'] == $days) : ?>
                                <li>
                                    <?php
                                    $base_url = empty($item['sc_ep']) ? 'anime/' : 'watch/';
                                    $link = base_url($base_url . $item['sc_id'] . '/' . str_replace(' ', '-', $item['sc_name']) . '/' . $item['sc_ep']);
                                    ?>
                                    <a href="<?= $link ?>" class="tsl-link">
                                        <div class="time"><?= substr($item['sc_time'], 0, 5); ?></div>
                                        <div class="film-detail">
                                            <h3 class="film-name dynamic-name"><?= $item['sc_name']; ?></h3>
                                            <div class="fd-play">
                                                <button type="button" class="btn btn-sm btn-play">
                                                    <i class="fas fa-play mr-2"></i>
                                                    <?= empty($item['sc_ep']) ? "Watch" :  'Episode ' . $item['sc_ep']; ?>
                                                </button>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            <?php endif; ?>
                        <?php endforeach; ?>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>

    </section>
</div>