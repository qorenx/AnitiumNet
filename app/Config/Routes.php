<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
// Create a new instance of our RouteCollection class.
service('auth')->routes($routes);

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}
/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.

// CONTROLLER ANİTİUM.PHP ReMAKE


// http://localhost/  girdiğinde çıkan sayfa.
$routes->get('/', 'Anitium::İndex');

//Anime QTİP FUNCTİON
$routes->get('ajax/qtip/(:any)', 'Anitium::Qtip/$1/');


// HOME SAYFASI ROUTERS
$routes->get('/home', 'Anitium::Home');// localhost/home girdiğimde çıkan sayfa.
$routes->get('ajax/getCommentHome/(:any)', 'Anitium::get_CommentHome/$1');// Home/Comment.php  içindeki Script!
$routes->get('ajax/getScheduleDays/(:num)', 'Anitium::get_ScheduleDays/$1');// Home/Schedule.php içindeki Script!


// AYRI SAYFALAR
$routes->get('type/(:any)', 'Anitium::Anime_Type/$1/'); // localhost/type/VERİ olduğu kısımdır.
$routes->get('az-list/(:any)', 'Anitium::AZ_List/$1/'); // localhost/az-list/VERİ olduğu kısımdır.
$routes->get('genre/(:any)', 'Anitium::Genre_Search/$1/'); // localhost/genre/VERİ olduğu kısımdır.
$routes->get('studio/(:any)', 'Anitium::Studio_Search/$1/'); // localhost/studio/VERİ olduğu kısımdır.
$routes->get('producers/(:any)', 'Anitium::Producers_Search/$1/');// localhost/producers/VERİ olduğu kısımdır.
$routes->get('random', 'Anitium::RandomAnime'); //Rastgele bir anime açar.

$routes->get('recently-updated', 'Anitium::Recently_Updated');// localhost/recently-updated  son eklenen animeler daha fazla.

$routes->get('search', 'Anitium::Anime_Search'); //Anime Arama Çubuğu Yazdığın Veri Bulunur.
$routes->get('filter', 'Anitium::Anime_Filter'); //Anime Filter
$routes->get('ajax/getfilter', 'Anitium::Anime_GetFilter');  // Anime Filter Ajax Get
$routes->get('search/suggestions', 'Anitium::Anime_Suggestions');  // Arama Yapılırken Öneri Veren Kısım.


// ANİME SAYFASIYLA İLGİLİ
$routes->get('anime/(:any)', 'Anitium::Anime_Details/$1/'); // localhost/anime/VERİ olduğu kısmı çeker.
$routes->post('ajax/useranimestatus/(:num)/(:num)', 'Anitium::UserAnimeStatus/$1/$2/'); /// User Anime Status Günceller
$routes->get('ajax/getanimeseason/(:any)', 'Anitium::get_AnimeSeason/$1');  //Anime Sezon Verisini Çeker.
$routes->get('ajax/gettorrentgrabber/(:any)', 'Converter::torrentgrabber/$1'); // anime bilgileri kısmındaki torrent grabber



//Anime Watch Kısmıdır.
$routes->get('watch', 'Anitium::Anime_Watch');

// Anime Watch Embed, Liste, Server, PREV+NEXT kısmıdır.
$routes->get('ajax/embed/(:num)/(:num)/(:num)', 'Converter::get_embed/$1/$2/$3');//Embed iframe Converter
$routes->get('ajax/embedserver/(:num)/(:num)', 'Anitium::Get_EpisodeServer/$1/$2'); // İlgili Bölüm Embed Server Çağırır
$routes->get('ajax/episodelist/(:num)', 'Anitium::Get_EpisodeList/$1'); // Episode Listesi çeker.
$routes->get('ajax/episodeprevnext/(:num)/(:num)', 'Anitium::Get_EpisodePrevNext/$1/$2'); // Mevcut Episode Prev-Next çağırır.

$routes->post('ajax/episodevote/(:num)/(:num)/(:num)', 'Anitium::Post_EpisodeVote/$1/$2/$3'); //Episode User Vote Verir
$routes->get('ajax/episodegetvote/(:num)/(:num)', 'Anitium::Get_EpisodeVote/$1/$2'); //Episode User GetVote alır.

//Episode Watch olduğu yerde yorum sistemi
$routes->get('ajax/episodecommentsystem/(:num)/(:num)', 'Anitium::Get_EpisodeCommentSystem/$1/$2'); //Yorum Sistemi Çağırır.
$routes->get('ajax/episodemorecomment/(:num)/(:num)', 'Anitium::Get_EpisodeCommentSystemMore/$1/$2'); //Yorum daha çok çağırır.

//Episode yorum sisteminde yorum gönderme yeridir.
$routes->post('ajax/ep_main_insert', 'Anitium::EpisodeCommentİnsert');
$routes->post('ajax/ep_reply_insert', 'Anitium::EpisodeCommentReplyİnsert');

//Episode Like GET Kısmıdır.
$routes->get('ajax/getepmainlike/(:num)', 'Anitium::getepmainlike/$1/');
$routes->get('ajax/geteprepylike/(:num)', 'Anitium::geteprepylike/$1/');
///Episode Main Like and Dislike
$routes->post('ajax/epmainlike/(:num)', 'Anitium::episodemainlike/$1/');
$routes->post('ajax/epmaindislike/(:num)', 'Anitium::episodemaindislike/$1/');
///Episode Repy Like and Dislike
$routes->post('ajax/eprepylike/(:num)', 'Anitium::episoderepylike/$1/');
$routes->post('ajax/eprepydislike/(:num)', 'Anitium::episoderepydislike/$1/');


// Herkes erişebildiği episode report ve comment main/reply report yeridir.
$routes->group('report', function ($routes) {
    //Episode Report Yapıp MYSQL kaydeden kısımdır.
    $routes->post('episode-report', 'Anitium::Post_EpisodeReport');
    //Episode Comment Report Main ve Repy kısmıdır.
    $routes->post('episode-comment-main', 'Anitium::Post_CommentMainReport');
    $routes->post('episode-comment-repy', 'Anitium::Post_CommentReplyReport');
});



//ÜYE PROFİL KISMI
$routes->group('user', ['filter' => 'group:user,admin,superadmin'], function ($routes) {
    $routes->get('(:any)/(:any)', 'Anitium::User_Profile/$1/$2');
    $routes->get('(:any)', 'Anitium::User_Profile/$1');
});
$routes->post('post/usersettingsupdate', 'Anitium::UserSettingsUpdate');




$routes->get('users/logout', 'Anitium::userlogout');






$routes->get('dmca', function () {
    return redirect('/');
});
$routes->get('contact', function () {
    return redirect('/');
});
$routes->get('tos', function () {
    return redirect('/');
});











// AJAX BULUNDUĞU KISIM

$routes->get('ajax/getboardlastpost', 'Anime::getboardlastpost'); //board.php içindeki ajax çalıştırıyor.
$routes->get('ajax/getboardmypost', 'Anime::getboardmypost'); //mypost.php içindeki ajax çalıştırıyor.
$routes->get('ajax/getboardtagpost', 'Anime::getboardtagpost'); //boardtag.php içindeki ajax çalıştıyor.


//Community Like GET Kısmıdır.
$routes->get('ajax/getcommunityvote/(:any)', 'Anime::getcommunityvote/$1/');
$routes->get('ajax/getcommunitymainlike/(:any)', 'Anime::getcommunitymainlike/$1/');
$routes->get('ajax/getcommunityrepylike/(:any)', 'Anime::getcommunityrepylike/$1/');



// Herkes erişebildiği üyelerin report gönderdiği yer.
$routes->group('report', function ($routes) {
    $routes->post('board-comment-main', 'Anime::boardcommentmain');
    $routes->post('board-comment-repy', 'Anime::boardcommentrepy');
    //Board Main Report ve Delete(yorumlar ve cevaplarıda siler.)
    $routes->post('board-main', 'Anime::boardmain');
});







$routes->group('community', function ($routes) {
    //community user kısmıdır.
    $routes->get('user/(:any)/(:any)', 'Anime::boarduser/$1/$2');
    $routes->get('user/(:any)', 'Anime::boarduser/$1');
    ///  post?   pid=  &   pcon=   olarak community/board ve community/my-post olarak veri alıyor.
    $routes->get('board', 'Anime::board');
    $routes->get('my-post', 'Anime::boardmypost');
    // board/tag    burada taglar alıp kullanıyor. Ve boardtag function birleştiriyor. Gösteriyor.
    $routes->get('board/tag', 'Anime::boardtag');
    //board/new-post sayfası gösterme ve ekleme yeridir.
    $routes->get('new-post', 'Anime::boardnewpost');
    $routes->post('new-post', 'Anime::boardnewpostinsert');
    //Board gösterilen yazıların içeriği gösterilir.
    $routes->get('post', 'Anime::boardviewpost');
    //Board konulara yazılan yorumlar için daha fazla post göster kısmı
    $routes->get('bpviewlist', 'Anime::boardviewpostmore');
    //Board konulara yazılan yorumlar ve yorumlara yazılan cevapların mysql eklendiği kısım.
    $routes->post('post/viewpost', 'Anime::boardviewpostinsert');
    $routes->post('post/viewrepypost', 'Anime::boardviewrepypostinsert');
});

///Community Post, Main, Repy Like Dislike System
//Main Post
$routes->post('post/communityvotelike/(:any)', 'Anime::communityvotelike/$1/');
$routes->post('post/communityvotedislike/(:any)', 'Anime::communityvotedislike/$1/');
//Comment Main
$routes->post('post/communitymainlike/(:any)', 'Anime::communitymainlike/$1/');
$routes->post('post/communitymaindislike/(:any)', 'Anime::communitymaindislike/$1/');
//Comment Repy
$routes->post('post/communityrepylike/(:any)', 'Anime::communityrepylike/$1/');
$routes->post('post/communityrepydislike/(:any)', 'Anime::communityrepydislike/$1/');






//Sadece admin kullandığı tamamen silme yeri.  Düzenlenmesi gerekiyor***
$routes->group('report', ['filter' => 'group:admin,superadmin'], function ($routes) {
    //Episode Comment Silme Kısmıdır.
    $routes->post('episode-comment-main-delete', 'Anime::episodecommentmaindelete');
    $routes->post('episode-comment-repy-delete', 'Anime::episodecommentrepydelete');
    //Board Comment Silme Kısmıdır.
    $routes->post('board-comment-main-delete', 'Anime::boardcommentmaindelete');
    $routes->post('board-comment-repy-delete', 'Anime::boardcommentrepydelete');
    //Board Main Report ve Delete(yorumlar ve cevaplarıda siler.)
    $routes->post('board-delete', 'Anime::boarddelete');
});





//// ADMİN PANEL OLDUĞU KISIMDIR
$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->get('', 'Admin::İndex');
    $routes->group('anime', function ($routes) {
        // anime getanime yapılarak myanimelist veri çeker ve kaydeder.
        $routes->get('getanime', 'Admin::getAnime');
        $routes->post('getanime', 'Admin::getAnimesave');
        // anime getanimeupdate komutu ile myanimelist olan animeyi günceller.
        $routes->get('getanimeupdate', 'Admin::getAnimeupdate');
        $routes->post('getanimeupdate', 'Admin::getAnimeupdatesave');


        $routes->post('delete', 'Anitium::AnimeDeleteID'); //Anime Deleted Function
    });
    $routes->group('anime', function ($routes) {
        //Anime slider günceller
        $routes->get('slider', 'Admin::anislider');
        $routes->post('slider', 'Admin::anislidersave');
        //Anime Takvim Ekleme silme alanı.
        $routes->get('schedule', 'Admin::schedule');
        $routes->post('schedule', 'Admin::scheduleadd');
        $routes->post('schedule-delete', 'Admin::scheduledelete');
        $routes->post('schedule-delete-all', 'Admin::scheduledeleteall');
    });
    $routes->group('episode', function ($routes) {
        //Episode Ekleme ve DateBase Kayıt yeri
        $routes->get('adding', 'Admin::episodeadd');
        $routes->post('adding', 'Admin::episodeaddsave');
        //Çoklu episode myanimelist veri olarak çekiyor.
        $routes->get('getepisode', 'Admin::getEpisode');
        $routes->post('getepisode', 'Admin::getEpisodesave');
        //episode embed ekleme kısmıdır.
        $routes->get('embed', 'Admin::episodeembedadd');
        $routes->post('embed', 'Admin::episodeembedaddsave');
        //Episode Sayfasından girilen Episode edit/kayıt ve silme yeri
        $routes->get('editing', 'Admin::episodeedit');
        $routes->post('editing', 'Admin::episodeeditsave');
        $routes->get('delete', 'Admin::episodeeditdelete');
        //Embedleri sileceğiniz sayfaya gider.
        $routes->get('embed-editing', 'Admin::embededit');
        $routes->post('embed-delete', 'Admin::embeddelete');
    });
    $routes->group('report', function ($routes) {
        //Report episode ile alakalıdır.
        $routes->get('episode', 'Admin::getepisodereport');
        $routes->post('episode-delete', 'Admin::episodereportdelete');
        // Episode Main Comment Report And Deleted
        $routes->get('episode/main', 'Admin::getcommentmainreport');
        $routes->post('episode/main/reportdeleted', 'Admin::commentreportdelete');
        $routes->post('episode/main/commentandreportdeleted', 'Admin::commentandreportdelete');
        // Episode repy Comment Report And Deleted
        $routes->get('episode/repy', 'Admin::getcommentrepyreport');
        $routes->post('episode/repy/reportdeleted', 'Admin::commentrepyreportdelete');
        $routes->post('episode/repy/commentandreportdeleted', 'Admin::commentrepyandreportdelete');


        //Report board ile alakalıdır. Repor sil veya report ile board yazıyı sil.
        $routes->get('board', 'Admin::getboardreport');
        $routes->post('board-delete', 'Admin::boardreportdelete');
        $routes->post('board-report-delete', 'Admin::boardandreportdelete');
        // board main report listelendiği yer
        $routes->get('board/main', 'Admin::getboardmainreport');
        $routes->post('board/main/reportdeleted', 'Admin::boardmreportdelete');
        $routes->post('board/main/commentandreportdeleted', 'Admin::boardmandreportdelete');
        // board repy report listelendiği yer
        $routes->get('board/repy', 'Admin::getboardrepyreport');
        $routes->post('board/repy/reportdeleted', 'Admin::boardrreportdelete');
        $routes->post('board/repy/commentandreportdeleted', 'Admin::boardrandreportdelete');
    });

    $routes->group('settings', function ($routes) {
        //Update
        $routes->post('update', 'Admin::settingupdate');
        //Settings Type
        $routes->get('(:any)', 'Admin::settings/$1');
    });
});



//Bu sadece anitium.net çalışıyor.  Ek kodlar ve yazılım var. 
$routes->get('getLicense/(:any)/(:any)/(:any)', 'License::getLicense/$1/$2/$3');
$routes->get('getLicenseFile/(:any)', 'License::getLicenseFile/$1');
$routes->get('verifylicense', 'License::verifylicense');


