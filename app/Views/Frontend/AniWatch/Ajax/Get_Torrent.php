<div class="block_area-header">
    <div class="bah-heading">
        <h2 class="cat-heading">Download Torrent</h2>
    </div>
    <div class="clearfix"></div>
</div>
<div class="table-wrapper">
    <table>
        <tr class="header">
            <th style="width:95%;">Torrent Name</th>
            <th style="width:5%;">DW</th>
        </tr>
        <?php
        foreach ($gettorrent as $torrent) :
        ?>
            <tr>
                <td><?= $torrent['title'] ?></td>
                <td>
                    <a class="download-link" href="<?= $torrent['url'] ?>" download></a>
                </td>
            </tr>
        <?php
        endforeach;
        ?>
    </table>
</div>

<style>
    .table-wrapper {
        width: 100%;
        max-height: calc(15 * 1.6em);
        overflow-y: auto;
        margin: 20px 0;
        padding: 15px;
        box-sizing: border-box;
    }

    .table-wrapper table {
        width: 100%;
        border-collapse: collapse;
        border-radius: 15px;
    }

    th,
    td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .download-link {
        text-decoration: none;
        color: inherit;
    }

    .download-link:before {
        content: "\1F4E5";
        font-family: Arial, sans-serif;
        display: inline-block;
        margin-right: 5px;
        font-size: 30px;
    }
</style>