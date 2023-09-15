<!DOCTYPE html>
<html>

<head>
    <title>Anime Admin</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <iframe id="animeIframe" src="http://localhost/admin/anime/getanime?uid=1" width="100%" height="450"></iframe>
    <script>
        var uid = 40159;
        var getAttempts = 0;
        var anotherTaskCallStart = false;
        var formNotFound = false;
        const RETRY_LIMIT = 1;

        var submitForm = function() {
            var targetUrl = "http://localhost/admin/anime/getanime?uid=" + uid;

            console.log("submitForm() called with uid=" + uid);

            fetch(`https://api.jikan.moe/v4/anime/${uid}/full`)
                .then(function(response) {
                    console.log("fetch() response status: " + response.status);
                    if (response.status == 200) {
                        fetch(`http://localhost/checkanime/${uid}`)
                            .then(function(response) {
                                console.log("fetch() response status for checkanime: " + response.status);
                                if (response.status == 200) {
                                    anotherTaskCallStart = true;
                                } else {
                                    if (getAttempts < RETRY_LIMIT && !formNotFound) {
                                        ajaxCall(targetUrl);
                                    }
                                }
                            }).catch(function(error) {
                                console.log('There was an error!', error);
                            });
                    } else {
                        console.log('Status is ' + response.status + ', moving to next uid');
                        anotherTaskCallStart = true;
                    }
                })
                .catch(function(error) {
                    console.log('There was an error!', error);
                });
        }

        function ajaxCall(targetUrl) {
            $.ajax({
                type: 'GET',
                url: targetUrl,
                success: function(data, textStatus, xhr) {
                    console.log("$.ajax success, status: " + xhr.status);
                    getAttempts = 0;

                    if (xhr.status == 200) {
                        var iframe = $('#animeIframe');

                        iframe.off('load').on('load', function() {
                            try {
                                var iframeBody = iframe.contents().find('body');
                                var form = iframeBody.find('form');

                                if (form.length > 0) {
                                    console.log("Form found, submitting the form");
                                    form.submit();
                                    formNotFound = false;
                                } else {
                                    console.log("Form Not Found, Moving to the next URL");
                                    formNotFound = true;
                                }
                            } catch (err) {
                                console.log('Error: ' + err.message);
                                getAttempts++;
                                submitForm();
                            }
                        });
                        iframe.attr('src', targetUrl);
                    } else {
                        console.log("GET Failed due to " + xhr.status + " status, Moving to the next URL");
                        anotherTaskCallStart = true;
                    }
                },
                error: function() {
                    console.log("GET Failed, Retrying");
                    getAttempts++;
                    submitForm();
                }
            });
        }

        var anotherTask = function() {
            console.log("Another task Started");
        }

        setInterval(function() {
            console.log("setInterval() called");
            if (anotherTaskCallStart) {
                console.log("Starting another task...");
                anotherTaskCallStart = false;
                anotherTask();
            } else {
                if (!formNotFound) {
                    console.log("Incrementing uid");
                    uid++;
                }
                formNotFound = false;
                submitForm();
            }
        }, 2000);
    </script>
</body>

</html>