# OUYUM_SSPANEL_Theme
基于SSPANEL原版UI的魔改版本 开源代码仓库

主题基于
Anankke/SSPanel-Uim 版本修改更新

当前最新版本主题基于

Anankke的 release

2021.6 坦克节更新 以及前一2021版本的 基本通用

2021年之前版本的SSP并不兼容

演示站点 - 这就别打了吧

https://ouoyun.ml/user

__________________________________________


# 导入教程

需要上传的文件夹路径

#这是css等资源存放的文件夹

#theme-ouyum.tar.gz 解压这个文件夹放入


网站路径/public/theme/

__________________________________________

#这是网页前端等资源存放的文件夹

#view-ouyum.tar.gz 解压这个文件夹放入


网站路径/resources/views/

__________________________________________


### 细节修改

最重要的地方

修改充值页面的手动充值收款二维码

网站路径/public/theme/ouyum/wechatpay.jpg


# 网站主页 - 当前直接定向到登录页面，移除了主页
可自定义主页的地址 做主页和网站分离

修改文件
网站路径//resources/views/ouyum/index.tpl

这是定向到/user登录页面
window.location.href='/user';

这是定向到自定义主页页面
window.location.href='https://xxx.xxx.com';










