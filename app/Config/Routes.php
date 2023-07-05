<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();
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


$routes->get('/', 'Anime::index');
$routes->get('/home', 'Anime::home');
$routes->get('type/(:any)', 'Anime::type_series/$1/');
$routes->get('az-list/(:any)', 'Anime::azsearch/$1/');
$routes->get('genre/(:any)', 'Anime::ani_genre/$1/');
$routes->get('latest-episode', 'Anime::latest_episode');
$routes->get('recent-releases', 'Anime::recent_releases');
$routes->get('anime/(:any)', 'Anime::anime_details/$1/');
$routes->get('search', 'Anime::search');
$routes->get('search/suggestions', 'Anime::suggestions');



//Anime İzleme. " ?anime= / uid=  / eps= " gibi ayrım yapılmaktadır.
$routes->get('watch', 'Anime::ani_watch');


//Episode Altındaki kısıma yorum çağırır.
$routes->get('/watch/epcommentmoreview', 'Anime::epcommentmore');
//Episode Vote 0,5,10 verildiği kısımdır.
$routes->post('epvote/uservote0', 'CommentSystem::episodevote0');
$routes->post('epvote/uservote5', 'CommentSystem::episodevote5');
$routes->post('epvote/uservote10', 'CommentSystem::episodevote10');
//Episode altındaki yorum ve yoruma yapılan cevap gönderen kısım.
$routes->post('/watch/epcommentinsert', 'CommentSystem::episodecommentinsert');
$routes->post('/watch/epcommentrepyinsert', 'CommentSystem::episodecommentrepyinsert');
//Episode Altındaki Yorumların Beğeni Post URL'ları.
$routes->post('/watch/episoderepyreppost/(:any)', 'CommentSystem::episoderepypostrepMethod/$1/');
$routes->post('/watch/episoderepydispost/(:any)', 'CommentSystem::episoderepypostdisrepMethod/$1/');
$routes->post('/watch/episoderepycreppost/(:any)', 'CommentSystem::episoderepycpostrepMethod/$1/');
$routes->post('/watch/episoderepycdispost/(:any)', 'CommentSystem::episoderepycpostdisrepMethod/$1/');



///üye kısmı
$routes->get('user/register', 'Anime::userregister');   // userprofile
$routes->group('user', ['filter' => 'group:user,admin,superadmin'], function ($routes) {
    $routes->get('(:any)/(:any)', 'Anime::userprofile/$1/$2');
    $routes->get('(:any)', 'Anime::userprofile/$1');
});


$routes->group('community', function ($routes) {

    $routes->get('user/(:any)/(:any)', 'Anime::boarduser/$1/$2');
    $routes->get('user/(:any)', 'Anime::boarduser/$1');

    $routes->post('boardpost/delete', 'Anime::boardPostDelete');   //boardpost delete




    ///  post?   pid=  &   pcon=   olarak community/board ve community/my-post olarak veri alıyor.
    $routes->get('board', 'Anime::board');
    $routes->get('my-post', 'Anime::boardmypost');
    // board/tag    burada taglar alıp kullanıyor. Ve boardtag function birleştiriyor. Gösteriyor.
    $routes->get('board/tag/(:any)', 'Anime::boardtag/$1');
    //board/new-post sayfası gösterme ve ekleme yeridir.
    $routes->get('new-post', 'Anime::boardnewpost');
    $routes->post('new-post', 'Anime::boardnewpostinsert');
    //Board gösterilen yazıların içeriği gösterilir.
    $routes->get('post', 'Anime::boardviewpost');
    //Board konulara yazılan yorumlar için daha fazla post göster kısmı
    $routes->get('bpviewlist', 'Anime::boardviewpostmore');
    //Board konulara yazılan yorumlar ve yorumlara yazılan cevapların mysql eklendiği kısım.
    $routes->post('post/viewpost', 'CommentSystem::boardviewpostinsert');
    $routes->post('post/viewrepypost', 'CommentSystem::boardviewrepypostinsert');
    //Board konular için beğeni ve dislike kısmı.
    $routes->post('boardreppost/(:any)', 'CommentSystem::boardpostrepMethod/$1/');
    $routes->post('boarddispost/(:any)', 'CommentSystem::boardpostdisrepMethod/$1/');
    //Board konular için yazılan cevapların beğeni ve dislike kısmı.
    $routes->post('boardrepyreppost/(:any)', 'CommentSystem::boardrepyrepMethod/$1/');
    $routes->post('boardrepydispost/(:any)', 'CommentSystem::boardrepydisrepMethod/$1/');
    //Board konular için yazılan cevapların cevabına beğeni ve dislike kısmı.
    $routes->post('boardrepycreppost/(:any)', 'CommentSystem::boardrepycrepMethod/$1/');
    $routes->post('boardrepycdispost/(:any)', 'CommentSystem::boardrepycdisrepMethod/$1/');
});


$routes->post('profil/update', 'Anime::settingsupdate');
$routes->get('users/logout', 'Anime::userlogout');


$routes->get('status/(:any)/(:any)/(:any)', 'Anime::statusupdate/$1/$2/$3/');   // user anime statüs ekliyor.


//Sadece Admin ve SuperAdmin Erişebilir.
$routes->group('report', ['filter' => 'group:admin,superadmin'], function ($routes) {

    //Episode Comment Silme Kısmıdır.
    $routes->post('episode-comment-main-delete', 'Report::episodecommentmaindelete');
    $routes->post('episode-comment-repy-delete', 'Report::episodecommentrepydelete');

    //Board Comment Silme Kısmıdır.
    $routes->post('board-comment-main-delete', 'Report::boardcommentmaindelete');
    $routes->post('board-comment-repy-delete', 'Report::boardcommentrepydelete');

    //Board Main Report ve Delete(yorumlar ve cevaplarıda siler.)
    $routes->post('board-delete', 'Report::boarddelete');
});


//Herkes Erişebilir Report Kısmıdır.
$routes->group('report', function ($routes) {

    //Episode Report Yapıp MYSQL kaydeden kısımdır.
    $routes->post('episode-report', 'Report::episodereport');

    //Episode Comment Report Main ve Repy kısmıdır.
    $routes->post('episode-comment-main', 'Report::episodecommentmain');
    $routes->post('episode-comment-repy', 'Report::episodecommentrepy');

    //Board Comment Report Main ve Repy kısmıdır. 
    $routes->post('board-comment-main', 'Report::boardcommentmain');
    $routes->post('board-comment-repy', 'Report::boardcommentrepy');

    //Board Main Report ve Delete(yorumlar ve cevaplarıda siler.)
    $routes->post('board-main', 'Report::boardmain');
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
//Günlük Url= http://localhost/cron/clearAnimeViewCount
//Haftalık Url= http://localhost/cron/clearAnimeViewCountMonth
//Yıllık Url= http://localhost/cron/clearAnimeViewCountYear
//Günlük  Url= http://localhost/cron/clearEpisodeViewCount
//Haftalık  Url= http://localhost/cron/clearEpisodeViewCountMonth
//Aylık Url= http://localhost/cron/clearEpisodeViewCountYear


$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->get('', 'Admin::admin');
});

$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('anime', function ($routes) {
        $routes->get('uploadfile', 'Anime::uploadFile');
        $routes->post('uploadfile', 'Anime::uploadFile');
        // $routes->get('anime-add', 'Anime::animeadd');
        // $routes->post('anime-add', 'Anime::animeaddsave');


        // anime getanime yapılarak myanimelist veri çeker ve kaydeder.
        $routes->get('getanime', 'Admin::getAnime');
        $routes->post('getanimeadd', 'Admin::getAnimesave');
        // anime getanimeupdate komutu ile myanimelist olan animeyi günceller.
        $routes->get('getanimeupdate', 'Admin::getAnimeupdate');
        $routes->post('getanimeupp', 'Admin::getAnimeupdatesave');

        // $routes->get('anime-edit/(:any)', 'Anime::animeedit/$1');
        // $routes->post('anime-edit', 'Anime::animeeditupdate');

        $routes->get('season-add', 'Admin::seasonadd');
        $routes->post('season-add', 'Admin::seasonaddsave');
        $routes->get('season-edit/(:any)', 'Admin::seasonedit/$1');
        $routes->get('season-editdelete/(:any)', 'Admin::seasondelete/$1');
    });
});



$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('episode', function ($routes) {
        //Episode Ekleme ve DateBase Kayıt yeri
        $routes->get('episode-add', 'Admin::episodeadd');
        $routes->post('episode-add', 'Admin::episodeaddsave');

        //Episode Sayfasından girilen Episode edit/kayıt ve silme yeri
        $routes->get('episode-edit', 'Admin::episodeedit');
        $routes->post('episode-edit', 'Admin::episodeeditsave');
        $routes->get('episode-delete', 'Admin::episodeeditdelete');

        //Episode Download edit ve delete yapıldığı yer
        $routes->get('download-edit', 'Admin::downloadedit');
        $routes->post('download-delete', 'Admin::downloaddelete');

        //Çoklu episode myanimelist veri olarak çekiyor.
        $routes->get('getepisode', 'Admin::getEpisode');
        $routes->post('getepisode', 'Admin::getEpisodesave');

        //Tek bir episode için myanimelist veri çekiyor.
        $routes->get('getoneepisode', 'Admin::getoneEpisode');
        $routes->post('getoneepisode', 'Admin::getoneEpisodesave');

        //episode sub ekleme kısmıdır.
        $routes->get('episode-sub-add', 'Admin::episodesubadd');
        $routes->post('episode-sub-add', 'Admin::episodesubaddsave');

        //episode dub ekleme kısmıdır.
        $routes->get('episode-dub-add', 'Admin::episodedubadd');
        $routes->post('episode-dub-add', 'Admin::episodedubaddsave');

        //episode turk ekleme kısmıdır.
        $routes->get('episode-turk-add', 'Admin::episodeturkadd');
        $routes->post('episode-turk-add', 'Admin::episodeturkaddsave');

        // episode raw ekleme kısmıdır.
        $routes->get('episode-raw-add', 'Admin::episoderawadd');
        $routes->post('episode-raw-add', 'Admin::episoderawaddsave');


        //episode download ekleme kısmıdır.
        $routes->get('episode-download-add', 'Admin::episodedownloadadd');
        $routes->post('episode-download-add', 'Admin::episodedownloadsave');


        //Embedleri sileceğiniz sayfaya gider.
        $routes->get('embed-edit', 'Admin::embededit');
        $routes->post('embed-deletedub', 'Admin::embeddeletedub');
        $routes->post('embed-deletesub', 'Admin::embeddeletesub');
        $routes->post('embed-deleteraw', 'Admin::embeddeleteraw');
        $routes->post('embed-deleteturk', 'Admin::embeddeleteturk');
    });
});


$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('report', function ($routes) {


        //Report episode ile alakalıdır.
        $routes->get('episode', 'Report::getepisodereport');
        $routes->post('episodedelete', 'Report::episodereportdelete');

        // episode main report listelendiği yer
        $routes->get('epmaincomment', 'Report::getcommentmainreport');

        //episode main report delete ve main delete olduğu yer.
        $routes->post('commentreportdelete', 'Report::commentreportdelete');
        $routes->post('commentandreportdelete', 'Report::commentandreportdelete');

        // episode repy report listelendiği yer
        $routes->get('eprepycomment', 'Report::getcommentrepyreport');

        //episode repy report delete ve main delete olduğu yer.
        $routes->post('commentrepyreportdelete', 'Report::commentrepyreportdelete');
        $routes->post('commentrepyandreportdelete', 'Report::commentrepyandreportdelete');


        //Report board ile alakalıdır. Repor sil veya report ile board yazıyı sil.
        $routes->get('board', 'Report::getboardreport');
        $routes->post('boardreportdelete', 'Report::boardreportdelete');
        $routes->post('boardandreportdelete', 'Report::boardandreportdelete');


        // board main report listelendiği yer
        $routes->get('bmaincomment', 'Report::getboardmainreport');
        $routes->post('boardmreportdelete', 'Report::boardmreportdelete');
        $routes->post('boardmandreportdelete', 'Report::boardmandreportdelete');


        // board repy report listelendiği yer
        $routes->get('brepycomment', 'Report::getboardrepyreport');
        $routes->post('boardrreportdelete', 'Report::boardrreportdelete');
        $routes->post('boardrandreportdelete', 'Report::boardrandreportdelete');
    });
});



$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('anisettings', function ($routes) {

        $routes->get('slider', 'Admin::anislider');
        $routes->post('slider', 'Admin::anislidersave');
        $routes->get('websettings', 'Admin::websettings');
        $routes->post('websettings', 'Admin::websettingssave');


        $routes->get('schedule', 'Admin::schedule');
        $routes->post('schedule/add', 'Admin::scheduleadd');
        $routes->post('schedule/delete', 'Admin::scheduledelete');
        $routes->post('schedule/deleteall', 'Admin::scheduledeleteall');
    });
});
