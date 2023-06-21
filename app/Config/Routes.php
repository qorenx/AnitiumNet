<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

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
$routes->get('watch/(:any)/(:any)/(:any)', 'Anime::ani_watch/$1/$3/$4/');
$routes->post('/watch/epcommentinsert', 'Anime::episodecommentinsert');   ///episodecomment
$routes->post('repsystem/episoderep/(:any)', 'Anime::episodecommentrepMethod/$1/');  //episode rep
$routes->post('repsystem/episodedisrep/(:any)', 'Anime::episodecommentdisrepMethod/$1/'); //episode disrep
$routes->post('episodepost/delete', 'Anime::episodecommentdelete');   //episodepost delete



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
    $routes->get('board', 'Anime::board');
    $routes->get('my-post', 'Anime::boardmypost');
    $routes->get('board/tag/(:any)', 'Anime::boardtag/$1');
    $routes->get('new-post', 'Anime::boardnewpost');  //poset inser
    $routes->post('new-post', 'Anime::boardnewpostinsert'); //poset inser
    $routes->get('post/(:any)/(:any)', 'Anime::boardviewpost/$1/$2'); //postinsertt
    $routes->post('post/viewpost/(:any)', 'Anime::boardviewpostinsert/$1/'); //postinsertt
    $routes->post('repsystem/postrep/(:any)', 'Anime::postrep/$1');  //board konular için
    $routes->post('repsystem/postdisrep/(:any)', 'Anime::postdisrep/$1');
    $routes->post('repsystem/postviewrep/(:any)', 'Anime::postviewrep/$1');  //board konulara yorumlar için
    $routes->post('repsystem/postviewdisrep/(:any)', 'Anime::postviewdisrep/$1');
});


$routes->post('profil/update', 'Anime::settingsupdate');
$routes->get('users/logout', 'Anime::userlogout');


$routes->get('status/(:any)/(:any)/(:any)', 'Anime::statusupdate/$1/$2/$3/');   // user anime statüs ekliyor.
$routes->add('report', 'Anime::storeUrlToDatabase', ['post', 'get']);
$routes->add('reportpost/(:any)/(:any)/(:any)', 'Anime::reportpost/$1/$2/$3', ['post', 'get']);

service('auth')->routes($routes);



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

        $routes->get('getanime', 'Anime::getAnime');
        $routes->post('getanimeadd', 'Anime::getAnimesave');
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
        $routes->get('episode-add', 'Anime::episodeadd');
        $routes->post('episode-add', 'Anime::episodeaddsave');
        $routes->get('episode-edit/(:any)/(:any)', 'Anime::episodeedit/$1/$2');
        $routes->post('episode-edit', 'Anime::episodeeditsave');
        $routes->get('getepisode', 'Anime::getEpisode');
        $routes->post('getepisode', 'Anime::getEpisodesave');
        $routes->get('getoneepisode', 'Anime::getoneEpisode');
        $routes->post('getoneepisode', 'Anime::getoneEpisodesave');

        $routes->get('episode-sub-add', 'Anime::episodesubadd');
        $routes->post('episode-sub-add', 'Anime::episodesubaddsave');
        $routes->get('episode-dub-add', 'Anime::episodedubadd');
        $routes->post('episode-dub-add', 'Anime::episodedubaddsave');
        $routes->get('episode-turk-add', 'Anime::episodeturkadd');
        $routes->post('episode-turk-add', 'Anime::episodeturkaddsave');
        $routes->get('episode-raw-add', 'Anime::episoderawadd');
        $routes->post('episode-raw-add', 'Anime::episoderawaddsave');
        $routes->get('episode-download-add', 'Anime::episodedownloadadd');
        $routes->post('episode-download-add', 'Anime::episodedownloadsave');


        
        $routes->get('episode-delete/(:any)/(:any)', 'Anime::episodeeditdelete/$1/$2');
        $routes->get('download-edit/(:any)/(:any)', 'Anime::downloadedit/$1/$2');
        $routes->get('download-delete/(:any)', 'Anime::downloaddelete/$1');
        $routes->get('embed-edit/(:any)/(:any)', 'Anime::embededit/$1/$2');
        $routes->get('embed-deletedub/(:any)', 'Anime::embeddeletedub/$1');
        $routes->get('embed-deletesub/(:any)', 'Anime::embeddeletesub/$1');
        $routes->get('embed-deleteraw/(:any)', 'Anime::embeddeleteraw/$1');
        $routes->get('embed-deleteturk/(:any)', 'Anime::embeddeleteturk/$1');
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







