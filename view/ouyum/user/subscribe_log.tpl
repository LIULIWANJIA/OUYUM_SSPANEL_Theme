{include file='user/main.tpl'}

<main class="content">
    <!--<div class="content-header ui-content-header">-->
		<div>
			<div class="container">
				<!--<h2 class="content-heading" style="color:#FF8247">公告公告，有事先看公告，没事也康康</h2>-->
				<br /><br />
			</div>
		</div>
    <div class="container">
        <div class="col-lg-12 col-md-12">
            <section class="content-inner margin-top-no">
                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>您可在此查询您账户最近 {$config['subscribeLog_keep_days']} 天的订阅记录，确保您的账户没有被盗用。</p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <div class="card-table">
                                <div class="table-responsive table-user">
                                    {$render}
                                    <table class="table">
                                        <tr>
                                            <th>ID</th>
                                            <th>订阅类型</th>
                                            <th>IP</th>
                                            <th>归属地</th>
                                            <th>时间</th>
                                            <th>User-Agent</th>
                                        </tr>
                                        {foreach $logs as $log}
                                            <tr>
                                                <td>#{$log->id}</td>
                                                <td>{$log->subscribe_type}</td>
                                                <td>{$log->request_ip}</td>
                                                {assign var="location" value=$iplocation->getlocation($log->request_ip)}
                                                <td>{iconv("gbk", "utf-8//IGNORE", $location.country)} {iconv("gbk", "utf-8//IGNORE", $location.area)}</td>
                                                <td>{$log->request_time}</td>
                                                <td>{$log->request_user_agent}</td>
                                            </tr>
                                        {/foreach}
                                    </table>
                                    {$render}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</main>

{include file='user/footer.tpl'}
