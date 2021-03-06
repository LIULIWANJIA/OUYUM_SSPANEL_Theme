<!DOCTYPE html>

<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">
    <meta name="theme-color" content="#4285f4">
    <meta content="OUYUM_SSPANEl_THEME SSPANEL开源主题 - prower by 琉璃玩家" name="description" />
	<meta content="OUYUM_SSPANEl,琉璃玩家" name="Keywords" />
    <title>{$config['appName']}</title>
    <!-- css -->
    <link href="/theme/ouyum/css/base.min.css" rel="stylesheet">
    <link href="/theme/ouyum/css/project.min.css" rel="stylesheet">
    <link href="/theme/ouyum/css/auth.min.css" rel="stylesheet">
    <link href="/theme/ouyum/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Material+Icons" rel="stylesheet">
    <style>
        .divcss5 {
            position: fixed;
            bottom: 0;
        }
    </style>
    <!-- favicon -->
    <!-- js -->
    <script src="/assets/js/fuck.min.js"></script>
    <!-- ... -->
</head>

<body class="page-brand">

{if $config['live_chat'] === 'mylivechat'}
    {include file='mylivechat.tpl'}
{elseif $config['live_chat'] === 'crisp'}
    {include file='crisp.tpl'}
{elseif $config['live_chat'] === 'tawk'}
    {include file='tawk.tpl'}
{/if}