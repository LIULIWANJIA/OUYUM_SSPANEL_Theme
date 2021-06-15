{include file='admin/main.tpl'}

<main class="content">
	<div class="container">
		<section class="content-inner margin-top-no">
			<div class="ui-card-wrap">
				<div class="row">
				    <div class="col-lg-12 col-sm-12 card-top">
						<div class="card">
							<div class="card-main">
							    
							</div>
						</div>
					</div>
                    <div class="col-xx-12 col-sm-4">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">用户详情</p><hr/>
							        <p><strong>本站总注册用户 : {$user->count()} 人 </strong></p>
							        <p><strong>付费用户 : {$user->paidUserCount()} 人 </strong></p>
							        <p><strong>总转换率 : {round($user->paidUserCount()/$user->count()*100,2)}% </strong></p>
								    <br />
								    <p>今日签到&nbsp;&nbsp;&nbsp; : <strong><code>{$sts->getTodayCheckinUser()}</code> 人 </strong></p>
								    <p>全部签到过的 : <strong><code>{$sts->getCheckinUser()}</code> 人 </strong></p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">经营报告</p><hr/>
							        <p><strong>总共流水 : {$user->calIncome("total")} Coin </strong></p>
							        <p><strong>上月流水 : {$user->calIncome("last month")} Coin </strong></p>
							        <p><strong>当月流水 : {$user->calIncome("this month")} Coin </strong></p>
								    <br />
								    <p>今日流水&nbsp;&nbsp;&nbsp; : {$user->calIncome("today")} Coin </strong></p>
								    <p>昨日流水&nbsp;&nbsp;&nbsp; : {$user->calIncome("yesterday")} Coin </strong></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xx-12 col-sm-4">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">在线记录</p><hr/>
								    <p><strong>十分钟内在线&nbsp;&nbsp;&nbsp; : {($sts->getOnlineUser(600))} 人 </strong></p>
								    <p><strong>三十分内在线&nbsp;&nbsp;&nbsp; : {($sts->getOnlineUser(1800))} 人 </strong></p>
								    <p><strong>一小时内在线&nbsp;&nbsp;&nbsp; : {($sts->getOnlineUser(3600))} 人 </strong></p>
								    <p><strong>一天内在线&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : {($sts->getOnlineUser(86400))} 人 </strong></p>
								    <br />
								    <p>三天内在线&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <code><strong>{($sts->getOnlineUser(259200))}</code> 人 </strong></p>
								    <p>本月总在线&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <code><strong>{($sts->getOnlineUser(2592000))}</code> 人 </strong></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xx-12 col-sm-4">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">节点概况 {($sts->getTotalNodes())} 个</p><hr/>
								    {if {$sts->getTotalNodes()} == {$sts->getAliveNodes()}}
									    <p><strong>全站节点正常</strong></p>
								    {else}
									    <p><strong>正常节点&nbsp;&nbsp;&nbsp; : {($sts->getAliveNodes())} </strong></p>
									    <p><strong>异常节点&nbsp;&nbsp;&nbsp; : <span style="color:red;">{($sts->getTotalNodes())-($sts->getAliveNodes())}<span> </strong></p>
								    {/if}
								    <br />
								    <p>今日流量&nbsp;&nbsp;&nbsp; : <strong>{($sts->getTodayTrafficUsage())} </strong></p>
								    <p>用户总流量&nbsp;&nbsp;&nbsp; : <strong>{($sts->getTotalTraffic())} </strong></p>
								    <p>累计流量&nbsp;&nbsp;&nbsp; : <strong>{($sts->getTrafficUsage())} </strong></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>

{include file='admin/footer.tpl'}
