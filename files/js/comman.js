$(document).ready(function () {
  new Swiper('#slider', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    pagination: {
      el: '#slider .swiper-pagination',
      clickable: true,
    },
    loop: true,
    autoplay: {
      delay: 3000,
    },
  });
  new Swiper('#trending-home .swiper-container', {
    slidesPerView: 6,
    spaceBetween: 30,
    navigation: {
      nextEl: '.trending-navi .navi-next',
      prevEl: '.trending-navi .navi-prev',
    },
    breakpoints: {
      320: {
        slidesPerView: 3,
        spaceBetween: 2,
      },
      480: {
        slidesPerView: 3,
        spaceBetween: 15,
      },
      900: {
        slidesPerView: 4,
        spaceBetween: 20,
      },
      1320: {
        slidesPerView: 6,
        spaceBetween: 20,
      },
      1880: {
        slidesPerView: 8,
        spaceBetween: 20,
      },
    },
    autoplay: 2000,
  });
});