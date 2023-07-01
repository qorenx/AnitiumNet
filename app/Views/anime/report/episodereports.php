<div class="pc-item pc-control block-report">
    <a href="#" id="reportBtn" class="btn btn-primary"><i class="fa-solid fa-bug"></i></a>
</div>
<div id="reportModal" class="epreportmodal">
    <div class="epreportmodalmodal-content">
        <span class="close">&times;</span>
        <h2 style="color: black;">Report an Issue</h2>
        <form action="<?= base_url('report/episode-report') ?>" method="post" style="max-width:100%;max-height:100%;overflow:auto;">
            <?php
            $anime = $_GET['anime'];
            $uid = $_GET['uid'];
            $eps = $_GET['eps'];

            $anime = str_replace(" ", "+", $anime);
            $uid = preg_replace("/[^0-9,.]/", "", $uid);
            $eps = preg_replace("/[^0-9,.]/", "", $eps);
            ?>
            <input type="hidden" value="<?= current_url() . '?anime=' . $anime . '&uid=' .  $uid . '&eps=' . $eps ?>" id="report_url" name="report_url">

            <label for="report_type" style="width: 100%; color: black; font-size: larger;">Report Type:</label>
            <select id="report_type" name="report_type" style="width: 100%; display:block; margin-bottom: 10px; font-size: larger;">
                <option value="" selected disabled>Select a report type</option>
                <option value="1" style="color: black;">Broken Episode</option>
                <option value="2" style="color: black;">Broken Embed</option>
                <option value="3" style="color: black;">Broken Sound</option>
            </select>

            <label for="report_head" style="width: 100%; color: black; font-size: larger;">Input Head:</label>
            <input type="text" id="report_head" name="report_head" style="width: 100%; color: black; display:block; margin-bottom: 10px; font-size: larger;">

            <label for="report_content" style="width: 100%; color: black; font-size: larger;">Input Text:</label>
            <textarea id="report_content" name="report_content" style="width: 100%; color: black; display:block; margin-bottom: 10px; font-size: larger;"></textarea>

            <input type="submit" value="Submit" style="color: black; font-size: larger;">
        </form>
    </div>
</div>

<style>
    .epreportmodal {
        display: none;
        position: fixed;
        z-index: 1;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        width: 25%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
    }

    .epreportmodalmodal-content {
        background-color: #fefefe;
        margin: auto;
        padding: 20px;
        border: 1px solid #888;
        width: 100%;
        height: 100%;
    }

    .close {
        color: #aaa;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: black;
        text-decoration: none;
        cursor: pointer;
    }
</style>

<script>
    document.getElementById("reportBtn").addEventListener("click", function(event) {
        event.preventDefault();
        document.getElementById("reportModal").style.display = "block";
    });

    document.getElementsByClassName("close")[0].addEventListener("click", function() {
        document.getElementById("reportModal").style.display = "none";
    });

    window.addEventListener("click", function(event) {
        if (event.target == document.getElementById("reportModal")) {
            document.getElementById("reportModal").style.display = "none";
        }
    });
</script>