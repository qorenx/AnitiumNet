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

$routes->get('dmca', function () {
    return redirect('/');
});
$routes->get('contact', function () {
    return redirect('/');
});
$routes->get('tos', function () {
    return redirect('/');
});



// http://localhost/  girdiğinde çıkan sayfa.
$routes->get('/', 'Anitium::İndex');

//Anime QTİP FUNCTİON
$routes->get('ajax/qtip/(:any)', 'Anitium::Qtip/$1/');


// HOME SAYFASI ROUTERS
$routes->get('/home', 'Anitium::Home'); // localhost/home girdiğimde çıkan sayfa.
$routes->get('ajax/getCommentHome/(:any)', 'Anitium::get_CommentHome/$1'); // Home/Comment.php  içindeki Script!
$routes->get('ajax/getScheduleDays/(:num)', 'Anitium::get_ScheduleDays/$1'); // Home/Schedule.php içindeki Script!


// AYRI SAYFALAR
$routes->get('type/(:any)', 'Anitium::Anime_Type/$1/'); // localhost/type/VERİ olduğu kısımdır.
$routes->get('az-list/(:any)', 'Anitium::AZ_List/$1/'); // localhost/az-list/VERİ olduğu kısımdır.
$routes->get('genre/(:any)', 'Anitium::Genre_Search/$1/'); // localhost/genre/VERİ olduğu kısımdır.
$routes->get('studio/(:any)', 'Anitium::Studio_Search/$1/'); // localhost/studio/VERİ olduğu kısımdır.
$routes->get('producers/(:any)', 'Anitium::Producers_Search/$1/'); // localhost/producers/VERİ olduğu kısımdır.
$routes->get('random', 'Anitium::RandomAnime'); //Rastgele bir anime açar.

$routes->get('recently-updated', 'Anitium::Recently_Updated'); // localhost/recently-updated  son eklenen animeler daha fazla.

$routes->get('search', 'Anitium::Anime_Search'); //Anime Arama Çubuğu Yazdığın Veri Bulunur.
$routes->get('filter', 'Anitium::Anime_Filter'); //Anime Filter
$routes->get('ajax/getfilter', 'Anitium::Anime_GetFilter');  // Anime Filter Ajax Get
$routes->get('search/suggestions', 'Anitium::Anime_Suggestions');  // Arama Yapılırken Öneri Veren Kısım.


// ANİME SAYFASIYLA İLGİLİ
$routes->get('anime/(:any)', 'Anitium::Anime_Details/$1/'); // localhost/anime/VERİ olduğu kısmı çeker.
$routes->post('ajax/useranimestatus/(:num)/(:num)', 'Anitium::UserAnimeStatus/$1/$2/'); /// User Anime Status Günceller
$routes->get('ajax/getanimeseason/(:any)', 'Anitium::get_AnimeSeason/$1');  //Anime Sezon Verisini Çeker.



//Anime Watch Kısmıdır.
$routes->get('watch', 'Anitium::Anime_Watch');

// Anime Watch Embed, Liste, Server, PREV+NEXT kısmıdır.
$routes->get('ajax/embed/(:num)/(:num)/(:num)', 'Converter::get_embed/$1/$2/$3'); //Embed iframe Converter
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
$routes->post('post/userprofileupdate', 'Anitium::UserProfileUpdate');
$routes->get('users/logout', 'Anitium::User_LogOUT');

// add forcing password reset routes
$routes->post('change-password', 'PasswordReset::index');





///COMUNİTY BAŞLANGIÇ

//Board USER ve WATCHLİST
$routes->group('community', function ($routes) {
    $routes->get('user/(:any)/(:any)', 'Anitium::Community_User/$1/$2');
    $routes->get('user/(:any)', 'Anitium::Community_User/$1');
});




$routes->group('community', function ($routes) {
    $routes->get('board', 'Anitium::Community_Board');
    $routes->get('my-post', 'Anitium::Community_MyBoard');
    $routes->get('board/tag', 'Anitium::Community_Tag');
    $routes->get('new-post', 'Anitium::Community_NewPost');
    $routes->get('post', 'Anitium::Community_BoardViewPost');
});
$routes->get('ajax/get-boardpost', 'Anitium::Get_BoardPost'); //board.php içindeki ajax çalıştırıyor.
$routes->get('ajax/get-boardmypost', 'Anitium::Get_BoardMyPost'); //mypost.php içindeki ajax çalıştırıyor.
$routes->get('ajax/get-boardtagpost', 'Anitium::Get_BoardTagPost'); //boardtag.php içindeki ajax çalıştıyor.
$routes->get('ajax/get-boardviews', 'Anitium::Get_BoardViewPostMore'); //Boardviewspost comment more alıyor.

$routes->post('post/board-new-post', 'Anitium::Post_CommunityNewPost'); //new-post bord içindedir. Post eder.
$routes->post('post/viewpost', 'Anitium::Post_CommunityMainİnsert'); //View Post Main Yorumları Gönderir
$routes->post('post/viewrepypost', 'Anitium::Post_CommunityReplyİnsert'); //Vew Post Reply Yorumları Gönderir

//Community Vote LİKE KISMI
$routes->post('post/communityvotelike/(:num)', 'Anitium::Post_CommunityVoteLike/$1/');
$routes->post('post/communityvotedislike/(:num)', 'Anitium::Post_CommunityVoteDisLike/$1/');
$routes->get('ajax/getcommunityvote/(:num)', 'Anitium::Get_CommunityVote/$1/');


//Community Main Like Kısmı
$routes->post('post/communitymainlike/(:num)', 'Anitium::Post_CommunityMainLike/$1/');
$routes->post('post/communitymaindislike/(:num)', 'Anitium::Post_CommunityMainDisLike/$1/');
$routes->get('ajax/getcommunitymainlike/(:num)', 'Anitium::Get_CommunityMainLike/$1/');

//Comment Repy Like Kısmı
$routes->post('post/communityrepylike/(:num)', 'Anitium::Post_CommunityReplyLike/$1/');
$routes->post('post/communityrepydislike/(:num)', 'Anitium::Post_CommunityReplyDisLike/$1/');
$routes->get('ajax/getcommunityrepylike/(:num)', 'Anitium::Get_CommunityReplyLike/$1/');


//Herkesin Eriştiği Report Kısmıdır.
$routes->group('report', function ($routes) {
    $routes->post('board-comment-main', 'Anitium::Post_BoardMainComment');
    $routes->post('board-comment-repy', 'Anitium::Post_BoardReplyComment');
    $routes->post('board-report', 'Anitium::Post_BoardReport');
});






//// ADMİN PANEL OLDUĞU KISIMDIR
$routes->group('admin', ['filter' => 'group:admin,superadmin'], function ($routes) {
    $routes->get('', 'Admin::Admin_İndex');
    $routes->group('anime', function ($routes) {
        $routes->get('getanime', 'Admin::getAnime'); //Anime GET JİKAN
        $routes->post('getanime', 'Admin::getAnimesave'); //Anime GET Jikan Save
        $routes->get('getanimeupdate', 'Admin::getAnimeupdate'); //Anime GET JİKAN UPDATE
        $routes->post('getanimeupdate', 'Admin::getAnimeupdatesave'); // ANime Get JİKAN UPDATE SAV

        $routes->post('delete', 'Anitium::AnimeDeleteID'); //Anime Deleted Function
    });

    $routes->group('episode', function ($routes) {
        //Episode Ekleme ve DateBase Kayıt yeri
        $routes->get('adding', 'Admin::Episode_Add');
        $routes->post('adding', 'Admin::Episode_AddSave');

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



    $routes->group('anime', function ($routes) {
        //Anime slider günceller
        $routes->get('slider', 'Admin::anislider');
        $routes->post('slider', 'Admin::anislidersave');
        //Anime Takvim Ekleme silme alanı.
        $routes->get('schedule', 'Admin::schedule');
        $routes->post('schedule', 'Admin::schedulesave');
        $routes->post('schedule-delete', 'Admin::scheduledelete');
        $routes->post('schedule-delete-all', 'Admin::scheduledeleteall');
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

