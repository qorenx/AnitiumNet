<?= $this->include('community/boardextend/boardheader') ?>
<div class="container">
    <div class="award-inner">
        <div class="wideview">
            <div class="connect-detail">
                <div class="ai-control">
                    <div class="aic-left">
                        <a href="/community/board"><i class="fas fa-angle-left mr-2"></i>Back</a>
                    </div>
                </div>
                <?= $this->include('community/boardextend/boardpostview') ?>
                <div class="list-comment">
                    <div id="result" class="cw_list">
                    </div>
                        <button style="margin: 0 auto; display: block; font-size: 16px; padding: 10px 20px; background-color: #353b4d; color: #fff; border: none; border-radius: 5px; cursor: pointer;" onclick="runCommand()" id="viewpostbutton">Show Post</button>
                    <script>
                        var nextPage = 1;

                        function runCommand() {
                            var xhr = new XMLHttpRequest();
                            xhr.open("GET", "/community/bpviewlist?pid=<?php $pid = $_GET['pid'];echo $pid;?>&page=" + nextPage, true);
                            xhr.onreadystatechange = function() {
                                if (xhr.readyState === 4 && xhr.status === 200) {
                                    var data = JSON.parse(xhr.responseText);
                                    var htmlData = data['html'];
                                    var htmlData2 = data['page']['status'];
                                    var resultElement = document.getElementById("result");
                                    resultElement.innerHTML += htmlData;

                                    nextPage++;

                                    if (htmlData2 === false) {
                                        var buttonElement = document.getElementById("viewpostbutton");
                                        buttonElement.style.display = "none";
                                    }
                                }
                            };
                            xhr.send();
                        }
                    </script>
                </div>
            </div>
        </div>
        <?= $this->include('community/boardextend/boardfooter') ?>