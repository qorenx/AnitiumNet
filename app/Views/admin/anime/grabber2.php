<!DOCTYPE html>
<html>

<head>
    <title>Anime Admin</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<body>
    <iframe id="animeIframe" src="http://localhost/admin/anime/getanime?uid=1" width="100%" height="450"></iframe>
    <script>
        var uid = 3200;
        var postAttempts = 0;
        var getAttempts = 0;
        var anotherTaskCallStart = false;
        const RETRY_LIMIT = 1; // setting retry limit

        var submitForm = function() {
            var targetUrl = "http://localhost/admin/anime/getanime?uid=" + uid;

            if (getAttempts < RETRY_LIMIT) {
                $.ajax({
                    type: 'GET',
                    url: targetUrl,
                    success: function(data, textStatus, xhr) {
                        getAttempts = 0;

                        if (xhr.status == 200) {
                            var iframe = $('#animeIframe');

                            iframe.off('load').on('load', function() {
                                try {
                                    var iframeBody = iframe.contents().find('body');
                                    var form = iframeBody.find('form');

                                    if (form.length > 0) {
                                        form.submit();
                                    } else {
                                        console.log("Form Not Found, Moving to the next URL");
                                        anotherTaskCallStart = true;
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
            } else {
                console.log("GET Failed and Not retrying");
                getAttempts = 0;
                anotherTaskCallStart = true;
            }
        }

        var anotherTask = function() {
            console.log("Another task Started");
        }

        setInterval(function() {
            if (anotherTaskCallStart) {
                // This will start the other task
                anotherTaskCallStart = false; // Stop recursive calls until next 500 error
                anotherTask();
            } else {
                uid++;
                submitForm();
            }
        }, 2000);
    </script>
</body>

</html>