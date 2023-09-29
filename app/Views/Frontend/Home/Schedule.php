<section class="block_area block_area_sidebar block_area-schedule schedule-full">
    <div class="block_area-header">
        <div class="float-left bah-heading mr-4">
            <h2 class="cat-heading">Estimated Schedule</h2>
        </div>
        <div class="float-left bah-time">
            <span class="current-time">
                <span id="timezone">(GMT+03:00)</span>
                <span id="current-date"></span>
                <span id="clock"></span>
            </span>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="block_area-content">
        <div class="table_schedule">
            <div class="table_schedule-date">
                <div class="swiper-container swiper-container-initialized swiper-container-horizontal">
                    <div class="swiper-wrapper schedule" id="scheduleDiv">
                        <?php
                        $date = new DateTime();
                        $days = $date->format('d');
                        $month = $date->format('m');
                        $year = $date->format('Y');
                        $days_in_month = cal_days_in_month(CAL_GREGORIAN, $month, $year);

                        for ($i = 1; $i <= $days_in_month; ++$i) {
                            $activeClass = $i == $days ? 'active' : '';
                            $day = new DateTime("$year-$month-$i");
                            echo "<div class='swiper-slide day-item $activeClass' id='day-item-$i' onclick='getScheduleDays($i)' style='width: 140.714px; margin-right: 13px;'>
                                        <div class='tsd-item $activeClass'>
                                            <span>{$day->format('D')}</span>
                                            <div class='date'>$i</div>
                                        </div>
                                    </div>";
                        }
                        ?>
                    </div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                </div>
                <div class="ts-navigation">
                    <button class="btn tsn-next" tabindex="0" role="button" aria-label="Next slide">
                        <i class="fas fa-angle-right"></i>
                    </button>
                    <button class="btn tsn-prev" tabindex="0" role="button" aria-label="Previous slide">
                        <i class="fas fa-angle-left"></i>
                    </button>
                </div>
            </div>
            <div class="clearfix"></div>
            <ul id="getdaysschedule" class="ulclear table_schedule-list"></ul>
        </div>
    </div>
</section>
<script>
    const style = document.querySelector('.schedule').style;
    const maxOffset = (<?php echo $days_in_month; ?> - 1) * -123.714;
    let offset = Math.min(<?php echo $days; ?> * -84.714, maxOffset);

    document.querySelector('.tsn-next').onclick = () => {
        offset = Math.max(offset - 123.714, maxOffset);
        style.transform = `translate3d(${offset}px, 0px, 0px)`;
    };

    document.querySelector('.tsn-prev').onclick = () => {
        offset = Math.min(offset + 123.714, 0);
        style.transform = `translate3d(${offset}px, 0px, 0px)`;
    };

    setInterval(() => {
        const dateTime = new Date().toLocaleString('en-US', {
            timeZone: 'Europe/Istanbul'
        }).split(',');
        document.getElementById('current-date').textContent = dateTime[0];
        document.getElementById('clock').textContent = dateTime[1];
    }, 1000);

    function getScheduleDays(days) {
        let translateValue;
        if (days >= 1 && days <= 30) {
            translateValue = days <= 5 ? 0 : (Math.ceil(days / 5) - 1) * 6;
        } else {
            translateValue = 30;
        }
        const scheduleDiv = document.getElementById('scheduleDiv');
        scheduleDiv.style.transform = `translate3d(${translateValue * -123.714}px, 0px, 0px)`;

        document.querySelectorAll('.swiper-slide.day-item.active, .tsd-item.active').forEach(item => item.classList.remove('active'));

        const dayItem = document.getElementById(`day-item-${days}`);
        dayItem.classList.add('active');
        dayItem.querySelector('.tsd-item').classList.add('active');

        fetch(`/ajax/getScheduleDays/${days}`)
            .then(response => response.json())
            .then(data => document.getElementById("getdaysschedule").innerHTML = data.html)
            .catch(error => console.error('Error:', error));
    }

    document.addEventListener("DOMContentLoaded", () => getScheduleDays(new Date().getDate()));
</script>