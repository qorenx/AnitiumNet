<?php foreach ($episodedownload as $downData) : ?>
  <?php
  if (!preg_match("~^(?:f|ht)tps?://~i", $downData['dw_link'])) {
    $downData['dw_link'] = "http://" . $downData['dw_link'];
  }
  ?>
  <div class="pc-item pc-control block-download">
    <a class="btn btn-sm btn-download" href="javascript:void(0);" title="<?= $downData['dw_name'] ?>" onclick="window.open('<?= $downData['dw_link'] ?>', 'mywin', 'left=20,top=20,width=500,height=500,toolbar=1,resizable=0');">
      <i class="fa-solid fa-download"></i>
    </a>
  </div>
<?php endforeach; ?>