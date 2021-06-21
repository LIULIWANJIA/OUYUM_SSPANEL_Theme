<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#4285f4">
    <title>{$config['appName']}</title>
    <!-- css -->
    <link href="/theme/ouyum/css/base.min.css" rel="stylesheet">
    <link href="/theme/ouyum/css/project.min.css" rel="stylesheet">
    
    <!--谷歌图标新-->
    <!--<link href="https://fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">-->
    <!--谷歌图标旧-->
    <link href="https://fonts.loli.net/css?family=Roboto:300,300italic,400,400italic,500,500italic|Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/theme/ouyum/css/user.min.css">
    <link href="/theme/ouyum/css/style.css" rel="stylesheet">
    <!-- jquery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0"></script>
    <script src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs@master/qrcode.min.js"></script>
    <!-- js -->
    <script src="/assets/js/fuck.min.js"></script>
</head>
<body class="page-orange">
<header class="header header-orange header-transparent header-waterfall ui-header affix">
    <ul class="nav nav-list pull-lefttopbar">
        <div>
            <a data-toggle="menu" href="#ui_menu">
                <span class="icon icon-lg text-white">menu</span>
            </a>
        </div>
    </ul>
    <!-- 原版右上角头像代码
    <ul class="nav nav-list pull-right">
        <div class="dropdown margin-right">
            <a class="dropdown-toggle padding-left-no padding-right-no" data-toggle="dropdown">
                {if $user->isLogin}
                <span class="access-hide">{$user->user_name}</span>
                <span class="avatar avatar-sm"><img src="{$user->gravatar}"></span>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="waves-attach" href="/user/"><span class="icon icon-lg margin-right">account_box</span>用户中心</a>
                </li>
                <li>
                    <a class="padding-right-cd waves-attach" href="/user/logout"><span
                                class="icon icon-lg margin-right">exit_to_app</span>登出</a>
                </li>
                <li>
                    <a href="//en.gravatar.com/" target="view_window"><i class="icon icon-lg margin-right">insert_photo</i>设置头像</a>
                </li>
            </ul>
            {else}
            <span class="access-hide">未登录</span>
            <span class="icon icon-lg margin-right">account_circle</span>
            <ul class="dropdown-menu dropdown-menu-right">
                <li>
                    <a class="padding-right-lg waves-attach" href="/auth/login"><span class="icon icon-lg margin-right">account_box</span>登录</a>
                </li>
                <li>
                    <a class="padding-right-lg waves-attach" href="/auth/register"><span class="icon icon-lg margin-right">pregnant_woman</span>注册</a>
                </li>
            </ul>
            {/if}
        </div>
    </ul>-->
</header>
<nav aria-hidden="true" class="menu menu-left nav-drawer nav-drawer-md" id="ui_menu" tabindex="-1">
    <div class="menu-scroll">
        <div class="menu-content">
            <!--<a class="menu-logo" href="/"><i class="icon icon-lg">language</i>&nbsp;{$config['appName']}</a>-->
            <div class="user-panel-picture">
                    <img src="https://liulixin.top/usr/themes/Shamiko/logo/chara_list06.png" alt="">
                </div>
                <p>&nbsp;{if $user->class!=0} VIP {$user->class}{else} 白嫖{/if} 的 {$user->user_name}</p>
            <ul class="nav">
                <li>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_me"><strong>管理菜单</strong><span style="font-size:8px"> &nbsp; 点击收起</span></a>
                    <ul class="menu-collapse collapse in" id="ui_menu_me">
                        <li>
                            <a href="/user"><i class="icon icon-lg">account_balance_wallet</i>&nbsp;用户中心</a>
                        </li>
                        <li>
                            <a href="/user/announcement"><i class="icon icon-lg">announcement</i>&nbsp;网站公告</a>
                        </li>
                        {if $config['enable_ticket']===true}
                            <li>
                                <a href="/user/ticket"><i class="icon icon-lg">question_answer</i>&nbsp;联系管理</a>
                            </li>
                        {/if}
                        <li>
                            <!--<a href="{if $config['use_this_doc'] === false}/user/tutorial{else}/doc/{/if}"><i class="icon icon-lg">start</i>&nbsp;使用教程</a>-->
                            <a href="https://liuliwanjia.gitbook.io/liuliwanjia/" target="_blank"><i class="icon icon-lg">start</i>&nbsp;使用教程</a>
                            
                        </li>
                        <li>
                            <a href="/user/code"><i class="icon icon-lg">code</i>&nbsp;软妹币充值</a>
                        </li>
                        <li>
                            <a href="/user/shop"><i class="icon icon-lg">shop</i>&nbsp;大会员购买</a>
                        </li>
                        <li>
                            <a href="/user/invite"><i class="icon icon-lg">loyalty</i>&nbsp;邀请朋友</a>
                        </li>
                    </ul>
                    <a class="waves-attach" data-toggle="collapse" href="#ui_menu_use"><strong>其他菜单</strong></a>
                    <ul class="menu-collapse collapse" id="ui_menu_use">
                        <li>
                            <a href="/user/edit"><i class="icon icon-lg">sync_problem</i>&nbsp;资料编辑</a>
                        </li>
                        <li>
                            <a href="/user/node"><i class="icon icon-lg">airplanemode_active</i>&nbsp;节点状态</a>
                        </li>
                        <li>
                            <a href="/user/profile"><i class="icon icon-lg">account_box</i>&nbsp;账户信息</a>
                        </li>
                        {if $config['subscribeLog']===true && $config['subscribeLog_show']===true}
                        <li>
                            <a href="/user/subscribe_log"><i class="icon icon-lg">important_devices</i>&nbsp;订阅记录</a>
                        </li>
                        {/if}
                        <li>
                            <a href="/user/bought"><i class="icon icon-lg">shopping_cart</i>&nbsp;购买记录</a>
                        </li>
                        {if $config['enable_donate']===true}
                            <li>
                                <a href="/user/donate"><i class="icon icon-lg">attach_money</i>&nbsp;捐赠公示</a>
                            </li>
                        {/if}
                    </ul>
                    <!--<a class="waves-attach" data-toggle="collapse" href="#ui_menu_detect">审计</a>
                    <ul class="menu-collapse collapse" id="ui_menu_detect">
                        <li>
                            <a href="/user/detect"><i class="icon icon-lg">account_balance</i>&nbsp;审计规则</a>
                        </li>
                        <li>
                            <a href="/user/detect/log"><i class="icon icon-lg">assignment_late</i>&nbsp;审计记录</a>
                        </li>
                    </ul>-->
                    <!--<a class="waves-attach" data-toggle="collapse" href="#ui_menu_help">商店</a>
                    <ul class="menu-collapse collapse" id="ui_menu_help">
                    </ul>-->
                    <hr/ class="hrstyle">
						<li>
							<a href="/user/logout">
								<i class="icon icon-lg">exit_to_app</i>&nbsp;登出
							</a>
						</li>
                    {if $user->is_admin}
                        <a href="/admin"><i class="icon icon-lg">person_pin</i>&nbsp;管理面板</a>
                    {/if}
                    {if $can_backtoadmin}
                        <a href="/user/backtoadmin"><i class="icon icon-lg">person_pin</i>&nbsp;返回管理员身份</a>
                    {/if}
                </li>
            </ul>
        </div>
    </div>
</nav>
{if $config['live_chat'] === 'mylivechat'}
    {include file='mylivechat.tpl'}
{elseif $config['live_chat'] === 'crisp'}
    {include file='crisp.tpl'}
{/if}
