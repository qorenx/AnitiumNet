<div class="comments-container" >
    <div id="disqus_thread"></div>
    <script>
        (function() {
        var d = document, s = d.createElement('script');
        s.src = '<?php echo $webdata['webdisqus']; ?>/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
        })();
    </script>
    <script id="dsq-count-scr" src="<?php echo $webdata['webdisqus']; ?>/count.js" async></script>  
</div>
