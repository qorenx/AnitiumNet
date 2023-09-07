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

// localhost  girildiğinde çıkan kısım.
$routes->get('/', 'Anime::index'); 
// localhost/home sayfası oluşturan kısım.
$routes->get('/home', 'Anime::home');
// localhost/type/ (TV/OVA,Movie etc)
$routes->get('type/(:any)', 'Anime::anime_type/$1/');
// localhost/az-list/  (ABCD etc)
$routes->get('az-list/(:any)', 'Anime::az_search/$1/');
// localhost/genre/  (Anime türleri oluşur.)
$routes->get('genre/(:any)', 'Anime::genre_search/$1/');
// localhost/latest-episode  son eklenen animeler daha fazla.
$routes->get('latest-episode', 'Anime::latest_episode');
//Anime Sayfasındaki Animeleri Çeker
$routes->get('anime/(:any)', 'Anime::anime_details/$1/');
//Anime Search ve Filter kısmıdır.
$routes->get('search', 'Anime::search');
$routes->get('filter', 'Anime::filter');
//Anime İzleme. " ?anime= / uid=  / eps= " gibi ayrım yapılmaktadır.
$routes->get('watch', 'Anime::ani_watch');
//Anime Status Ekleme yeridir.  Favori,Watching,Drop etc
$routes->post('status/(:any)/(:any)/(:any)', 'Anime::statusupdate/$1/$2/$3/'); 

//Anime Converter Sistemidir
$routes->get('embed/(:any)/(:any)/(:any)', 'Converter::get_embed/$1/$2/$3');



//qtip test
$routes->get('ajax/qtip/(:any)', 'Anime::qtip/$1/');


// AJAX BULUNDUĞU KISIM
$routes->get('search/suggestions', 'Anime::suggestions');  // Bu kısım ajax çevirilecek. Düzeltilecektir.
$routes->get('ajax/getanimeseason/(:any)', 'Anime::getAnimeSeason/$1');  //Anime Sezon Verisini Çeker.
$routes->get('ajax/getfilter', 'Anime::getfilter');  // Anime Filter göre veri alır.
$routes->get('ajax/getdaysschedule/(:any)', 'Anime::getdaysschedule/$1');  //ajax ile anime gün verisi çeker.
$routes->get('ajax/episodemorecomment', 'Anime::episodemorecomment'); //ajax ile episode altındaki yorumları çeker.
$routes->get('ajax/episodevote/(:any)/(:any)/(:any)', 'Anime::episodevote/$1/$2/$3'); //Episode User Vote Verir
$routes->get('ajax/episodegetvote/(:any)/(:any)', 'Anime::episodegetvote/$1/$2'); //Episode User GetVote alır.
$routes->get('ajax/getboardlastpost', 'Anime::getboardlastpost'); //board.php içindeki ajax çalıştırıyor.
$routes->get('ajax/getboardmypost', 'Anime::getboardmypost'); //mypost.php içindeki ajax çalıştırıyor.
$routes->get('ajax/getboardtagpost', 'Anime::getboardtagpost'); //boardtag.php içindeki ajax çalıştıyor.



//Episode Like GET Kısmıdır.
$routes->get('ajax/getepmainlike/(:any)', 'Anime::getepmainlike/$1/');
$routes->get('ajax/geteprepylike/(:any)', 'Anime::geteprepylike/$1/');

//Community Like GET Kısmıdır.
$routes->get('ajax/getcommunityvote/(:any)', 'Anime::getcommunityvote/$1/');
$routes->get('ajax/getcommunitymainlike/(:any)', 'Anime::getcommunitymainlike/$1/');
$routes->get('ajax/getcommunityrepylike/(:any)', 'Anime::getcommunityrepylike/$1/');


//Episode altındaki yorum ve yoruma yapılan cevap gönderen kısım.
$routes->post('/watch/epcommentinsert', 'Anime::episodecommentinsert');
$routes->post('/watch/epcommentrepyinsert', 'Anime::episodecommentrepyinsert');


///Episode Main Like and Dislike
$routes->post('post/epmainlike/(:any)', 'Anime::episodemainlike/$1/');
$routes->post('post/epmaindislike/(:any)', 'Anime::episodemaindislike/$1/');
///Episode Repy Like and Dislike
$routes->post('post/eprepylike/(:any)', 'Anime::episoderepylike/$1/');
$routes->post('post/eprepydislike/(:any)', 'Anime::episoderepydislike/$1/');



///ÜYELERLE ALAKALI BİRKAÇ AYAR
$routes->get('user/register', 'Anime::userregister');   // userprofile
$routes->group('user', ['filter' => 'group:user,admin,superadmin'], function ($routes) {
    $routes->get('(:any)/(:any)', 'Anime::userprofile/$1/$2');
    $routes->get('(:any)', 'Anime::userprofile/$1');
});
$routes->post('profil/update', 'Anime::settingsupdate');
$routes->get('users/logout', 'Anime::userlogout');




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

// Herkes erişebildiği üyelerin report gönderdiği yer.
$routes->group('report', function ($routes) {
    //Episode Report Yapıp MYSQL kaydeden kısımdır.
    $routes->post('episode-report', 'Anime::episodereport');
    //Episode Comment Report Main ve Repy kısmıdır.
    $routes->post('episode-comment-main', 'Anime::episodecommentmain');
    $routes->post('episode-comment-repy', 'Anime::episodecommentrepy');
    //Board Comment Report Main ve Repy kısmıdır. 
    $routes->post('board-comment-main', 'Anime::boardcommentmain');
    $routes->post('board-comment-repy', 'Anime::boardcommentrepy');
    //Board Main Report ve Delete(yorumlar ve cevaplarıda siler.)
    $routes->post('board-main', 'Anime::boardmain');
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
    $routes->group('season', function ($routes) {
        // anime sezon eklendiği kısım
        $routes->get('adding', 'Admin::seasonadd');
        $routes->post('adding', 'Admin::seasonaddsave');
        //anime season edit ve delete
        $routes->get('editing', 'Admin::seasonedit');
        $routes->post('delete', 'Admin::seasondelete');
    });
    $routes->group('episode', function ($routes) {
        //Episode Ekleme ve DateBase Kayıt yeri
        $routes->get('adding', 'Admin::episodeadd');
        $routes->post('adding', 'Admin::episodeaddsave');
        //Çoklu episode myanimelist veri olarak çekiyor.
        $routes->get('getepisode', 'Admin::getEpisode');
        $routes->post('getepisode', 'Admin::getEpisodesave');
        //Tek bir episode için myanimelist veri çekiyor.
        $routes->get('getoneepisode', 'Admin::getoneEpisode');
        $routes->post('getoneepisode', 'Admin::getoneEpisodesave');
        //episode embed ekleme kısmıdır.
        $routes->get('embed', 'Admin::episodeembedadd');
        $routes->post('embed', 'Admin::episodeembedaddsave');
        //episode download ekleme kısmıdır.
        $routes->get('download', 'Admin::episodedownloadadd');
        $routes->post('download', 'Admin::episodedownloadsave');
        //Episode Sayfasından girilen Episode edit/kayıt ve silme yeri
        $routes->get('editing', 'Admin::episodeedit');
        $routes->post('editing', 'Admin::episodeeditsave');
        $routes->get('delete', 'Admin::episodeeditdelete');
        //Embedleri sileceğiniz sayfaya gider.
        $routes->get('embed-editing', 'Admin::embededit');
        $routes->post('embed-delete', 'Admin::embeddelete');
        //Episode Download edit ve delete yapıldığı yer
        $routes->get('download-editing', 'Admin::downloadedit');
        $routes->post('download-delete', 'Admin::downloaddelete');
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



// Anime View ve Episode View Sayısı silme için.
$routes->group('cron', function ($routes) {
    $routes->get('clearAnimeViewCount', 'Cron::clearAnimeViewCount');
    $routes->get('clearAnimeViewCountMonth', 'Cron::clearAnimeViewCountMonth');
    $routes->get('clearAnimeViewCountYear', 'Cron::clearAnimeViewCountYear');
    $routes->get('clearEpisodeViewCount', 'Cron::clearEpisodeViewCount');
    $routes->get('clearEpisodeViewCountMonth', 'Cron::clearEpisodeViewCountMonth');
    $routes->get('clearEpisodeViewCountYear', 'Cron::clearEpisodeViewCountYear');
});
//Günlük Url= https://anitium.net/cron/clearAnimeViewCount
//Haftalık Url= https://anitium.net/cron/clearAnimeViewCountMonth
//Yıllık Url= https://anitium.net/cron/clearAnimeViewCountYear

//Günlük  Url= https://anitium.net/cron/clearEpisodeViewCount
//Haftalık  Url= https://anitium.net/cron/clearEpisodeViewCountMonth
//Aylık Url= https://anitium.net/cron/clearEpisodeViewCountYear




//Bu sadece anitium.net çalışıyor.  Ek kodlar ve yazılım var. 
$routes->get('getLicense/(:any)/(:any)/(:any)', 'License::getLicense/$1/$2/$3');
$routes->get('getLicenseFile/(:any)', 'License::getLicenseFile/$1'); 
