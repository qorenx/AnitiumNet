<div id="discussion">
    <div class="container" style="max-width:100%!important;width:100%!important;">
        <div class="dis-wrap dis-model">
            <div class="d_w-icon" style="z-index: 2;background: #2f2f33;">
                <img src="/files/images/lastcomment.png">
            </div>
            <div class="d_w-list">
                <ul class="nav nav-tabs pre-tabs pre-tabs-min">
                    <li style='background-color: transparent;'><a href="#new-comment" style='color: white; background-color: transparent;' class="nav-link cm-tab active" id="new-comment-link">Newest Comments</a></li>
                    <li style='background-color: transparent;'><a href="#top-comment" style='color: white; background-color: transparent;' class="nav-link cm-tab" id="top-comment-link">Top Comments</a></li>
                </ul>
                <div class="tab-content" id="comment-widget">
                    <div id="comment" class="tab-pane show active">
                        <div class="dwl-ul" id="dwl-ul">

                        </div>
                    </div>
                </div>
                <script>
                    document.addEventListener("DOMContentLoaded", function() {
                        const commentLinks = document.querySelectorAll('.cm-tab');
                        const targetElement = document.querySelector('#dwl-ul');

                        commentLinks.forEach(link => {
                            link.onclick = function(e) {
                                e.preventDefault();
                                commentLinks.forEach(link => {
                                    link.classList.remove('active');
                                });
                                this.classList.add('active');
                                let targetUrl;
                                switch (this.id) {
                                    case 'new-comment-link':
                                        targetUrl = "/ajax/getcommentlasttop/1";
                                        break;
                                    case 'top-comment-link':
                                        targetUrl = "/ajax/getcommentlasttop/2";
                                        break;
                                }
                                fetch(targetUrl)
                                    .then(response => response.json())
                                    .then(data => {
                                        targetElement.innerHTML = data.html;
                                        initializeSwiper();
                                    })
                                    .catch(error => console.error(`Error: ${error.message}`));
                            };
                        });
                    });
                    document.addEventListener('DOMContentLoaded', function() {
                        document.querySelector('#new-comment-link').click();
                    });

                    function initializeSwiper() {
                        var swiperContainers = document.querySelectorAll('.swiper-container');

                        swiperContainers.forEach(function(container) {
                            var mySwiper = new Swiper(container, {
                                slidesPerView: 'auto',
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
                    }
                </script>
            </div>
        </div>
    </div>
</div>