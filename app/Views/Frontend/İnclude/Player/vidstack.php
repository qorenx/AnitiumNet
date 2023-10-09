<link rel="stylesheet" href="<?php echo base_url('assest/player/vidstack/default.css'); ?>" />
<link rel="stylesheet" href="<?php echo base_url('assest/player/vidstack/community.skin.css'); ?>" />
<script type="module" src="https://cdn.jsdelivr.net/npm/vidstack/dist/cdn/prod.js"></script>

<style>
    media-player {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }
</style>

<media-player 
title="<?php echo $episode['ep_name']; ?>" 
preload="none" 
src="<?php usort($play->sources, function ($a, $b) { return $b->quality <=> $a->quality; }); foreach ($play->sources as $source) : if ($source->quality == 'default') { echo $source->url; } endforeach; ?>" 
poster="<?php echo $anime['ani_poster']; ?>" 
aspect-ratio="16/9" crossorigin>
    <media-outlet>
        <media-poster data-loading></media-poster>
    </media-outlet>
    <media-community-skin></media-community-skin>
</media-player>

<script>
    const player = document.querySelector('media-player');

    player.addEventListener('provider-change', (event) => {
        const provider = event.detail;
        if (provider?.type === 'hls') {
            // Default development URL.
            provider.library = 'https://cdn.jsdelivr.net/npm/hls.js@^1.0.0/dist/hls.js';
            // Default production URL.
            provider.library = 'https://cdn.jsdelivr.net/npm/hls.js@^1.0.0/dist/hls.min.js';
        }
    });
</script>