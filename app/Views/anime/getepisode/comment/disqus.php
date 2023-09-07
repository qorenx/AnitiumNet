<div class="comments-container" >
    <div id="disqus_thread"></div>
    <script>
        (function() {
        var d = document, s = d.createElement('script');
        s.src = '<?php echo $settings['Comment'][0]['value']; ?>/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
        })();
    </script>
    <script id="dsq-count-scr" src="<?php echo $settings['Comment'][0]['value']; ?>/count.js" async></script>  
</div>
