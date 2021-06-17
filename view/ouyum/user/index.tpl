{include file='user/main.tpl'}
{$ssr_prefer = URL::SSRCanConnect($user, 0)}
{$pre_user = URL::cloneUser($user)}

<style>
.table {
    box-shadow: none;
}
table tr td:first-child {
    text-align: right;
    font-weight: bold;
}
</style>
<main class="content">
	<div class="container">
		<section class="content-inner margin-top-no">
			<div class="ui-card-wrap">
				<div class="row">
				    <div class="col-lg-12 col-sm-12 card-top">
						<div class="card">
						<!--首页头部默认隐藏
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">用户中心</p>
									<p>使用教程请下拉</p>
								</div>
							</div>
							-->
						</div>
					</div>
                	<div class="col-xx-12 col-xs-12 col-lg-4">
							<div class="card user-info">
								<div class="user-info-main">
									<div class="nodemain">
										<div class="nodehead node-flex">
											<div class="nodename" id="money_tips">我的钱包</div>
											<a href="/user/code" class="card-tag tag-green">充值</a>
										</div>
										<div class="nodemiddle node-flex">
											<div class="nodetype">
												<dd>{$user->money} - SCoin</dd>
											</div>
										</div>
									</div>
									<!--图标-->
									<div class="nodestatus">
									<br />
										<a href="/user/shop" class="shop-btn">购买大会员</a>
									</div>
								</div>
								<div class="user-info-bottom">
									<div class="nodeinfo node-flex">
										<p>{$config['appName']} 虚拟币版权所有</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xx-12 col-xs-12 col-lg-4">
							<div class="card user-info">
								<div class="user-info-main">
									<div class="nodemain">
										<div class="nodehead node-flex">
											<div class="nodename" id="online_tips">在线设备数</div>
										</div>
										<div class="nodemiddle node-flex">
											<div class="nodetype">
												{if $user->node_connector!=0}
												{$user->online_ip_count()} / {$user->node_connector} most
												{else}
												{$user->online_ip_count()} / 不限制
												{/if}
											</div>
										</div>
									</div>
									<!--图标-->
									<div class="nodestatus">
									<br />
										<a href="/user/code" class="shop-btn">充 值</a>
									</div>
								</div>
								<div class="user-info-bottom">
									<div class="nodeinfo node-flex">
										<p>在线设备/设备限制数</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xx-12 col-xs-12 col-lg-4">
							<div class="card user-info">
								<div class="user-info-main">
									<div class="nodemain">
										<div class="nodehead node-flex">
											<div class="nodename" id="port_tips1">端口限速</div>
										</div>
										<div class="nodemiddle node-flex">
											<div class="nodetype">
												{if $user->node_speedlimit!=0}
												<dd>{$user->node_speedlimit} Mbps</dd>
												{else}
												<dd>无限制</dd>
												{/if}
											</div>
										</div>
									</div>
									<!--图标-->
									<div class="nodestatus">
									<br />
										<a class="shop-btn" id="port_tips2">说 明</a>
									</div>
								</div>
								<div class="user-info-bottom">
									<div class="nodeinfo node-flex">
										<p>节点相对于节点本地最高下行网速</p>
									</div>
								</div>
							</div>
						</div>
						<!--公告-->
						<div class="col-xx-12 col-sm-8">
							<div class="card">
								<div class="card-main">
								<!--教程-->
									<div class="card-inner margin-bottom-no">
										<div class="cardbtn-edit">
											<div class="card-heading">
												<i class="icon icon-md">phonelink</i>
												简约的使用教程
											</div>
										</div>
										<div class="card-inner">
											<div class="tab-content">
												<div class="tab-pane fade active in" id="all_v2ray">
													<nav class="tab-nav margin-top-no">
														<ul class="nav nav-list">
															<li class="active">
																<a class="" data-toggle="tab" href="#all_v2ray_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;使用教程</a>
															</li>
															<li>
																<a class="" data-toggle="tab" href="#all_sub_info"><i class="icon icon-lg">info_outline</i>&nbsp;订阅地址</a>
															</li>
															<li>
																<a class="" data-toggle="tab" href="#all_ios_info"><i class="icon icon-lg">phone_iphone</i>&nbsp;IOS公共美区ID</a>
															</li>
														</ul>
													</nav>
													<div class="tab-pane fade active in" id="all_v2ray_windows">
														{$v2_url_all = URL::getAllVMessUrl($user)}
														<div class="col-xx-12 col-sm-4">
														<p><strong>完全修正的V2ray使用教程</strong></p>
															<a class="btn btn-subscription col-xx-12 col-sm-12" type="button" href="https://liuliwanjia.gitbook.io/liuliwanjia/"
															 target="_blank">V2使用教程文档</a>
															<br /><br /><br />
															<hr /><br />
															<p>
															应用下载:
															<a class="btn-dl" href="{$config['documents_source']}" target="_blank"><i class="material-icons icon-sm">cloud_download</i> 本站下载</a>
														    </p>
														    <br /><hr /><br />
														</div>
														<div class="col-xx-12 col-sm-8">
															<br />
															<strong>教程中所需要的订阅地址，看上面选项栏</strong><br />
															<strong>常见问题教程中都有说明和解决办法</strong>
															<h4><strong>关于订阅地址的一些说明</strong></h4>
															<p>订阅地址是填写在软件里的</p>
															<p>作用是从服务端拉取属于你的节点</p><br />
															<p><strong>(每个人的订阅地址都是不一样的) - 为了你的账户安全，请勿泄露</strong></p>
														</div>

													</div>
													<div class="tab-pane fade" id="all_sub_info">
													<div class="ui-card-wrap">
														<div class="col-xx-12 col-sm-12">
															<div>
																<p><strong>订阅地址(不同节点对于不同网络的速率是不一样的)：</strong></p>
																<p><strong>玩家请自行测试选择速率优良的节点</strong></p>
															</div>
														</div>
														<div class="col-xx-12 col-sm-12">
														<hr/>
														   	<p><span class="icon icon-lg text-white">filter_1</span> [ V2ray节点订阅 ]：
																<a class="copy-text btn-dl desc_sub_1" data-clipboard-text="{$subInfo['v2ray']}"><i class="material-icons icon-sm">send</i> 拷贝订阅链接</a>
																<a id="general_v2ray" class="copy-config btn-dl" onclick=Copyconfig("/user/getUserAllURL?type=v2ray","#general_v2ray","")>
																<i class="material-icons icon-sm">send</i>
																拷贝全部节点 URL</a>
															</p>
														<hr/>
														   	<p><span class="icon icon-lg text-white">filter_2</span> [ Trojan节点订阅 ]：
																<a class="copy-text btn-dl desc_sub_2" data-clipboard-text="{$subInfo['trojan']}"><i class="material-icons icon-sm">send</i> 拷贝订阅链接</a>
															</p>
														<hr/>
														   	<p><span class="icon icon-lg text-white">filter_3</span> [ Clash节点订阅 ]：
																<a class="copy-text btn-dl desc_sub_3" data-clipboard-text="{$subInfo['v2ray']}"><i class="material-icons icon-sm">send</i> 拷贝订阅链接</a>
															</p>
														<hr/>
															
														</div>
														<div class="col-xx-12 col-sm-12">
															<br /><br />
															<strong>订阅地址是填写在软件里的，不是复制到浏览器访问的</strong><br>
															<strong>订阅地址不定期更新，无法更新订阅记得来重新复制</strong><br><br>
														</div>
													</div>
													</div>
													<div class="tab-pane fade" id="all_ios_info">
														<p>务必查看的<a class="btn-dl" href="https://liuliwanjia.gitbook.io/liuliwanjia/ios" target="_blank" style="color:red;">
																美ID登录以及软件下载使用教程</a>。</p>
														<br />
														{if $display_ios_class>=0}
															{if $user->class>=$display_ios_class && $user->get_top_up()>=$display_ios_topup}
															<br /><hr/>
															<div><span class="icon icon-lg text-white">account_box</span> 公共IOS账户:</div>
															<div class="float-clear">
																<input type="text" class="input form-control form-control-monospace cust-link col-xx-12 col-sm-8 col-lg-7" name="input1" readonly value="{$ios_account}" readonly="true">
																<button class="copy-text btn btn-subscription col-xx-12 col-sm-3 col-lg-2" type="button" data-clipboard-text="{$ios_account}">点击复制</button>
																<br>
															</div>
															<div><span class="icon icon-lg text-white">lock</span> 公共IOS密码:</div>
															<div class="float-clear">
																<input type="text" class="input form-control form-control-monospace cust-link col-xx-12 col-sm-8 col-lg-7" name="input1" readonly value="{$ios_password}" readonly="true">
																<button class="copy-text btn btn-subscription col-xx-12 col-sm-3 col-lg-2" type="button" data-clipboard-text="{$ios_password}">点击复制</button>
																<br>
															</div>
															<p><span class="icon icon-lg text-white">error</span><strong>禁止将账户分享给他人！</strong></p>
															<br /><br /><hr/>
															{/if}
														{/if}
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--公告-->
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<h2 align="center"><strong>{$config['appName']} 公告栏</strong></h2>
										<!--<h4 align="right"><strong>___加速稳定,维护及时,可以白嫖</strong></h4>-->
										
										<hr/ class="style1">
										<br />
										{if $ann != null}
											<span align="center">{$ann->content}</span>
											<br/>
											<p align="center"><strong>查看所有公告请<br />
											<a href="/user/announcement">点击这里</a></strong></p>
										{/if}
										<br /><hr><br />
									</div>
								</div>
							</div>
						</div>
						<!--白嫖-->
						<div class="col-xx-12 col-sm-4">
							<!--流量情况-->
							<div class="card">
								<div class="card-main">
									<div class="card-inner">
										<p class="card-heading"><i class="icon icon-md">account_circle</i>账号使用情况</p>
										<div class="progressbar">
											 <div class="before"></div>
											 <div class="bar tuse color3" style="width:calc({($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100}%);"><span></span></div>
											 <div class="label-flex">
												<div class="label la-top">
												<div class="bar ard color3"></div>
												<span class="traffic-info">今日已用</span>
												<code class="card-tag tag-red">{$user->TodayusedTraffic()}</code>
											</div>
											 </div>
										</div>
										<div class="progressbar">
											<div class="before"></div>
											<div class="bar ard color2" style="width:calc({$user->last_day_t/$user->transfer_enable*100}%);"><span></span></div>
											<div class="label-flex">
											   <div class="label la-top">
												<div class="bar ard color2"><span></span></div>
												<span class="traffic-info">过去已用</span>
												<code class="card-tag tag-orange">{$user->LastusedTraffic()}</code>
											</div>
											</div>
										</div>
										<div class="progressbar">
											<div class="before"></div>
											<div class="bar remain color" style="width:calc({($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100}%);"><span></span></div>
											<div class="label-flex">
											   <div class="label la-top">
												<div class="bar ard color"><span></span></div>
												<span class="traffic-info">剩余流量</span>
												<code class="card-tag tag-green" id="remain">{$user->unusedTraffic()}</code>
											</div>
											</div>
									   </div>
									</div>
									<div class="card-inner margin-bottom-no">
											<p>上次使用时间 &nbsp;&nbsp;
											  {if $user->lastSsTime()!="从未使用喵"}
											<i class="icon icon-md">event</i>&nbsp;{$user->lastSsTime()}
											  {else}
											<i class="icon icon-md">event</i>&nbsp;从未使用
											  {/if}</p>
											<p>上次白嫖签到 &nbsp;&nbsp;
											<i class="icon icon-md">event</i>&nbsp;{$user->lastCheckInTime()}</p>

											<p id="checkin-msg"></p>

											{if $geetest_html != null}
												<div id="popup-captcha"></div>
											{/if}
											{if $recaptcha_sitekey != null && $user->isAbleToCheckin()}
												<div class="g-recaptcha" data-sitekey="{$recaptcha_sitekey}"></div>
											{/if}
											<br />
											<p>VIP{$user->class} 有效期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											  <i class="icon icon-md">event</i>
											  <span class="label-level-expire">剩余</span>
											  <code><span id="days-level-expire"></span></code>
											  <span class="label-level-expire">天</span>
											</p>
											<p>账号 有效期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											  <i class="icon icon-md">event</i>
											  <span class="label-account-expire">剩余</span>
											  <code><span id="days-account-expire"></span></code>
											  <span class="label-account-expire">天</span>
										   </p>
										<div class="card-action">
											<div class="usercheck">
												{if $user->isAbleToCheckin()}
												<div id="checkin-btn">
													<button id="checkin" class="btn btn-brand btn-flat"><span class="icon">check</span>&nbsp;点我白嫖&nbsp;
													<div>
													</button>
												</div>
												{else}
													<p><a id="checkin" class="btn btn-brand disabled btn-flat" href="#"><span class="icon">check</span>&nbsp;今日已白嫖</a></p>
												{/if}
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--如果开启管理员联系则显示-->
							{if $config["enable_admin_contact"] == 'true'}
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<h4 align="center"><strong>联络保留</strong> 防失联</h4>
										<hr/ class="style1">
										<br />
										{if $config["admin_contact1"]!=null}
											<p align="center">{$config["admin_contact1"]}</p>
										{/if}
										{if $config["admin_contact2"]!=null}
											<p align="center">{$config["admin_contact2"]}</p>
										{/if}
										{if $config["admin_contact3"]!=null}
											<p align="center">{$config["admin_contact3"]}</p>
										{/if}
										<br />
										<hr/ class="style1">
										<br />
									</div>
								</div>
							</div>
							{/if}
						</div>
					</div>
                </div>
            </div>
            <!--移除原版教程以及订阅地址之类的-->
            {include file='dialog.tpl'}
        </section>
    </div>
</main>

{include file='user/footer.tpl'}

<script src="https://cdn.jsdelivr.net/npm/shake.js@1.2.2/shake.min.js"></script>


<script>
    $(function () {
        new ClipboardJS('.copy-text');
    });
    $(".desc_sub_1").click(function () {
        $("#result").modal();
        $("#msg").html("已拷贝您的标准节点订阅链接<br />{$subInfo['v2ray']}<br />请按使用教程填写到软件里<br /><br />ps.本订阅适用于常规网络<br />订阅对应的节点速率相对于不同网络环境的用户都是不同的<br />哪个订阅哪个节点能用且好用，需要用户自测");
    });
    $(".desc_sub_2").click(function () {
        $("#result").modal();
        $("#msg").html("已拷贝您的标准节点订阅链接<br />{$subInfo['trojan']}<br />请按使用教程填写到软件里<br /><br />ps.本订阅适用于常规网络<br />订阅对应的节点速率相对于不同网络环境的用户都是不同的<br />哪个订阅哪个节点能用且好用，需要用户自测");
    });
    $(".desc_sub_3").click(function () {
        $("#result").modal();
        $("#msg").html("已拷贝您的标准节点订阅链接<br />{$subInfo['clash']}<br />请按使用教程填写到软件里<br /><br />ps.本订阅适用于常规网络<br />订阅对应的节点速率相对于不同网络环境的用户都是不同的<br />哪个订阅哪个节点能用且好用，需要用户自测");
    });
    
    function AddSub(url,jumpurl="") {
        let tmp = window.btoa(url);
        window.location.href = jumpurl + tmp;
    }
    
    function Copyconfig(url,id,jumpurl="") {
        $.ajax({
            url: url,
            type: 'get',
            async: false,
            success: function(res) {
                if(res) {
                    $("#result").modal();
                    $("#msg").html("获取成功");
                    $(id).data('data', res);
                    console.log(res);
                } else {
                    $("#result").modal();
                   $("#msg").html("获取失败，请稍后再试");
               }
            }
        });
        const clipboard = new ClipboardJS('.copy-config', {
            text: function() {
                return $(id).data('data');
            }
        });
        clipboard.on('success', function(e) {
                    $("#result").modal();
                    if (jumpurl != "") {
                        $("#msg").html("复制成功，即将跳转到 APP");
                        window.setTimeout(function () {
                            window.location.href = jumpurl;
                        }, 1000);

                    } else {
                        $("#msg").html("复制成功");
                    }
                }
        );
        clipboard.on("error",function(e){
            console.error('Action:', e.action);
            console.error('Trigger:', e.trigger);
            console.error('Text:', e.text);
            }
        );
    }
    
    {if $user->transfer_enable-($user->u+$user->d) == 0}
    window.onload = function () {
        $("#result").modal();
        $$.getElementById('msg').innerHTML = '您的流量已经用完或账户已经过期了，如需继续使用，请进入商店选购新的套餐~';
    };
    {/if}
    
    {if $geetest_html == null}
    var checkedmsgGE = '<p><a class="btn btn-brand disabled btn-flat waves-attach" href="#"><span class="icon">check</span>&nbsp;已签到</a></p>';
    window.onload = function () {
        var myShakeEvent = new Shake({
            threshold: 15
        });
        myShakeEvent.start();
        CountDown();
        
        window.addEventListener('shake', shakeEventDidOccur, false);
        function shakeEventDidOccur() {
            if ("vibrate" in navigator) {
                navigator.vibrate(500);
            }
            $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",{if $recaptcha_sitekey != null}
                data: {
                    recaptcha: grecaptcha.getResponse()
                },{/if}
                success: (data) => {
                    if (data.ret) {

                        $$.getElementById('checkin-msg').innerHTML = data.msg;
                        $$.getElementById('checkin-btn').innerHTML = checkedmsgGE;
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        $$.getElementById('remain').innerHTML = data.trafficInfo['unUsedTraffic'];
                        $('.bar.remain.color').css('width', (data.unflowtraffic - ({$user->u}+{$user->d})) / data.unflowtraffic * 100 + '%');
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `发生错误：${
                            jqXHR.status
                            }`;
                }
            });
        }
    };
    /*页面准备*/
    $(document).ready(function () {
    	//下面两行是弹出公告代码，删除前面的//即可启用
        //$("#result").modal();
        //$("#msg").html("这是一个公告<br />每次打开主页都会弹出的公告<br />实现方式，可以看GITHUB");
	
	
        $("#money_tips").click(function () {
            $("#result").modal();
		    $("#msg").html('<p>钱包余额可用于本站消费<br />本钱包的虚拟币解释权归{$config['appName']}所有</p>');
        });
        $("#online_tips").click(function () {
            $("#result").modal();
		    $("#msg").html('<p>在线设备/最大允许<br />(:异常请重置一下密码并更新节点订阅</p>');
        });
        $("#port_tips1").click(function () {
            $("#result").modal();
		    $("#msg").html('<p>相对于节点服务器端口通行的速率<br />(:非玩家实际最高下行速率<br/>具体能多快，还是看玩家自己宽带质量<br/>以及具体选择的哪种订阅节点</p>');
        });
        $("#port_tips2").click(function () {
            $("#result").modal();
		    $("#msg").html('<p>相对于节点服务器端口通行的速率<br />(:非玩家实际最高下行速率<br/>具体能多快，还是看玩家自己宽带质量<br/>以及具体选择的哪种订阅节点</p>');
        });
        $("#checkin").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",{if $recaptcha_sitekey != null}
                data: {
                    recaptcha: grecaptcha.getResponse()
                },{/if}
                success: (data) => {
                    if (data.ret) {
                        $$.getElementById('checkin-msg').innerHTML = data.msg;
                        $$.getElementById('checkin-btn').innerHTML = checkedmsgGE;
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        $$.getElementById('remain').innerHTML = data.trafficInfo['unUsedTraffic'];
                        $('.bar.remain.color').css('width', (data.unflowtraffic - ({$user->u}+{$user->d})) / data.unflowtraffic * 100 + '%');
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `发生错误：${
                            jqXHR.status
                            }`;
                }
            })
        })
    })
    {else}
    window.onload = function () {
        var myShakeEvent = new Shake({
            threshold: 15
        });
        myShakeEvent.start();
        window.addEventListener('shake', shakeEventDidOccur, false);
        function shakeEventDidOccur() {
            if ("vibrate" in navigator) {
                navigator.vibrate(500);
            }
            c.show();
        }
    };
    var handlerPopup = function (captchaObj) {
        c = captchaObj;
        captchaObj.onSuccess(function () {
            var validate = captchaObj.getValidate();
            $.ajax({
                url: "/user/checkin", // 进行二次验证
                type: "post",
                dataType: "json",
                data: {
                    // 二次验证所需的三个值
                    geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode
                },
                success: (data) => {
                    if (data.ret) {
                        $$.getElementById('checkin-msg').innerHTML = data.msg;
                        $$.getElementById('checkin-btn').innerHTML = checkedmsgGE;
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                        $$.getElementById('remain').innerHTML = data.trafficInfo['unUsedTraffic'];
                        $('.bar.remain.color').css('width', (data.unflowtraffic - ({$user->u}+{$user->d})) / data.unflowtraffic * 100 + '%');
                    } else {
                        $("#result").modal();
                        $$.getElementById('msg').innerHTML = data.msg;
                    }
                },
                error: (jqXHR) => {
                    $("#result").modal();
                    $$.getElementById('msg').innerHTML = `发生错误：${
                            jqXHR.status
                            }`;
                }
            });
        });
        // 弹出式需要绑定触发验证码弹出按钮
        //captchaObj.bindOn("#checkin")
        // 将验证码加到id为captcha的元素里
        captchaObj.appendTo("#popup-captcha");
        // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };
    initGeetest({
        gt: "{$geetest_html->gt}",
        challenge: "{$geetest_html->challenge}",
        product: "popup", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
        offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机，与SDK配合，用户一般不需要关注
    }, handlerPopup);
    {/if}
</script>
<script>
function DateParse(str_date) {
	var str_date_splited = str_date.split(/[^0-9]/);
	return new Date (str_date_splited[0], str_date_splited[1] - 1, str_date_splited[2], str_date_splited[3], str_date_splited[4], str_date_splited[5]);
}
/*
 *计算剩余时间
 */
function CountDown() {
    var levelExpire = DateParse("{$user->class_expire}");
    var accountExpire = DateParse("{$user->expire_in}");
    var nowDate = new Date();
    var a = nowDate.getTime();
    var b = levelExpire - a;
    var c = accountExpire - a;
    var levelExpireDays = Math.floor(b/(24*3600*1000));
    var accountExpireDays = Math.floor(c/(24*3600*1000));
    if (levelExpireDays < 0 || levelExpireDays > 315360000000) {
        document.getElementById('days-level-expire').innerHTML = "很多";
        for (var i=0;i<document.getElementsByClassName('label-level-expire').length;i+=1){
            document.getElementsByClassName('label-level-expire')[i].style.display = 'none';
        }
    } else {
        document.getElementById('days-level-expire').innerHTML = levelExpireDays;
    }
    if (accountExpireDays < 0 || accountExpireDays > 315360000000) {
        document.getElementById('days-account-expire').innerHTML = "很多";
        for (var i=0;i<document.getElementsByClassName('label-account-expire').length;i+=1){
            document.getElementsByClassName('label-account-expire')[i].style.display = 'none';
        }
    } else {
        document.getElementById('days-account-expire').innerHTML = accountExpireDays;
    }
}
</script>

{if $recaptcha_sitekey != null}
    <script src="https://recaptcha.net/recaptcha/api.js" async defer></script>
{/if}
