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
    $routes->post('boardrepypost/delete', 'Anime::boardrepyPostDelete');   //boardpost delete




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
});


$routes->post('profil/update', 'Anime::settingsupdate');
$routes->get('users/logout', 'Anime::userlogout');


$routes->get('status/(:any)/(:any)/(:any)', 'Anime::statusupdate/$1/$2/$3/');   // user anime statüs ekliyor.
$routes->add('report', 'Anime::storeUrlToDatabase', ['post', 'get']);
$routes->add('reportpost/(:any)/(:any)/(:any)', 'Anime::reportpost/$1/$2/$3', ['post', 'get']);







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
    $routes->get('', 'Anime::admin');
   // $routes->get('datebasesıfırla', 'Anime::datebasesıfırla');
});

$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('anime', function ($routes) {
        $routes->get('uploadfile', 'Anime::uploadFile');
        $routes->post('uploadfile', 'Anime::uploadFile');
        // $routes->get('anime-add', 'Anime::animeadd');
        // $routes->post('anime-add', 'Anime::animeaddsave');


        // anime getanime yapılarak myanimelist veri çeker ve kaydeder.
        $routes->get('getanime', 'Anime::getAnime');
        $routes->post('getanimeadd', 'Anime::getAnimesave');
        // anime getanimeupdate komutu ile myanimelist olan animeyi günceller.
        $routes->get('getanimeupdate', 'Anime::getAnimeupdate');
        $routes->post('getanimeupp', 'Anime::getAnimeupdatesave');

        // $routes->get('anime-edit/(:any)', 'Anime::animeedit/$1');
        // $routes->post('anime-edit', 'Anime::animeeditupdate');

        $routes->get('season-add', 'Anime::seasonadd');
        $routes->post('season-add', 'Anime::seasonaddsave');
        $routes->get('season-edit/(:any)', 'Anime::seasonedit/$1');
        $routes->get('season-editdelete/(:any)', 'Anime::seasondelete/$1');

    });
});



$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('episode', function ($routes) {
        //Episode Ekleme ve DateBase Kayıt yeri
        $routes->get('episode-add', 'Anime::episodeadd');
        $routes->post('episode-add', 'Anime::episodeaddsave');
        //Episode Sayfasından girilen Episode edit/kayıt ve silme yeri
        $routes->get('episode-edit', 'Anime::episodeedit');
        $routes->post('episode-edit', 'Anime::episodeeditsave');
        $routes->get('episode-delete', 'Anime::episodeeditdelete');
        //Episode Download edit ve delete yapıldığı yer
        $routes->get('download-edit', 'Anime::downloadedit');
        $routes->post('download-delete', 'Anime::downloaddelete');
        //Çoklu episode myanimelist veri olarak çekiyor.
        $routes->get('getepisode', 'Anime::getEpisode');
        $routes->post('getepisode', 'Anime::getEpisodesave');
        //Tek bir episode için myanimelist veri çekiyor.
        $routes->get('getoneepisode', 'Anime::getoneEpisode');
        $routes->post('getoneepisode', 'Anime::getoneEpisodesave');
        //episode sub ekleme kısmıdır.
        $routes->get('episode-sub-add', 'Anime::episodesubadd');
        $routes->post('episode-sub-add', 'Anime::episodesubaddsave');
        //episode dub ekleme kısmıdır.
        $routes->get('episode-dub-add', 'Anime::episodedubadd');
        $routes->post('episode-dub-add', 'Anime::episodedubaddsave');
        //episode turk ekleme kısmıdır.
        $routes->get('episode-turk-add', 'Anime::episodeturkadd');
        $routes->post('episode-turk-add', 'Anime::episodeturkaddsave');
        // episode raw ekleme kısmıdır.
        $routes->get('episode-raw-add', 'Anime::episoderawadd');
        $routes->post('episode-raw-add', 'Anime::episoderawaddsave');
        //episode download ekleme kısmıdır.
        $routes->get('episode-download-add', 'Anime::episodedownloadadd');
        $routes->post('episode-download-add', 'Anime::episodedownloadsave');
        //Embedleri sileceğiniz sayfaya gider.
        $routes->get('embed-edit', 'Anime::embededit');
        $routes->post('embed-deletedub', 'Anime::embeddeletedub');
        $routes->post('embed-deletesub', 'Anime::embeddeletesub');
        $routes->post('embed-deleteraw', 'Anime::embeddeleteraw');
        $routes->post('embed-deleteturk', 'Anime::embeddeleteturk');
    });
});


$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->group('anisettings', function ($routes) {
        $routes->get('reports', 'Anime::anireports');
        $routes->post('reports/delete', 'Anime::deleteReport');
        $routes->get('postreport', 'Anime::postreport');
        $routes->post('postreportview/delete', 'Anime::postreportviewdelete');
        $routes->get('postreportview/tracert', 'Anime::postreportracert');
        $routes->get('slider', 'Anime::anislider');
        $routes->post('slider', 'Anime::anislidersave');
        $routes->get('websettings', 'Anime::websettings');
        $routes->post('websettings', 'Anime::websettingssave');
        $routes->get('schedule', 'Anime::schedule');
        $routes->post('schedule/add', 'Anime::scheduleadd');
        $routes->post('schedule/delete', 'Anime::scheduledelete');
        $routes->post('schedule/deleteall', 'Anime::scheduledeleteall');
    });
});







