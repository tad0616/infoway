<?php
use XoopsModules\Tadtools\Utility;
if (!class_exists('XoopsModules\Tadtools\Utility')) {
    require XOOPS_ROOT_PATH . '/modules/tadtools/preloads/autoloader.php';
}
Utility::get_jquery(true);
if (file_exists(XOOPS_ROOT_PATH . "/class/xoopsform/renderer/XoopsFormRendererBootstrap3.php")) {
    xoops_load('XoopsFormRendererBootstrap3');
    XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap3());
}
