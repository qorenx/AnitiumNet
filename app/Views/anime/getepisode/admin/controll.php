<style>
    @keyframes changingColor {
        50% {color: blue;}
        100% {color: red;}
    }

    .animated-link {
        animation: changingColor 20s linear infinite;
    }

    .animated-link:hover {
        color: red;
        text-shadow: 0px 0px 5px rgba(255, 0, 0, 0.5);
    }
    
    .custom-icon {
        margin-left: 5px;
        animation: rotateIcon 20s linear infinite;
    }
    
    @keyframes rotateIcon {
        0% {transform: rotate(0deg);}
        100% {transform: rotate(360deg);}
    }
</style>
<span><a class="animated-link" href="<?=base_url('admin/episode/editing?uid='.$currentData->uid.'&eps='.$currentData->ep_id_name) ?>">EPİSODE<i class="fa fa-cog fa-spin custom-icon"></i></a></span>
<span><a class="animated-link" href="<?=base_url('admin/episode/embed-editing?uid='.$currentData->uid.'&eps='.$currentData->ep_id_name) ?>">EMBED<i class="fa fa-cog fa-spin custom-icon"></i></a></span>