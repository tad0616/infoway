<div id="header">
<{if $logo_img}>
    <div>
        <a href="<{xoAppUrl}>"><img src="<{$logo_img}>" alt="<{$xoops_sitename}>" style="z-index:10;"></a>
    </div>
<{else}>

    <div class="title">
        <a href="<{xoAppUrl index.php}>"><{$xoops_sitename}></a>
    </div>
    <div class="subtitle">
        <{$xoops_slogan}>
    </div>

<{/if}>
</div>