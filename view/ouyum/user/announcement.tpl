{include file='user/main.tpl'}

<main class="content">
	<div class="container">
		<section class="content-inner margin-top-no">
			<div class="ui-card-wrap">
				<div class="row">
				    <div class="col-lg-12 col-sm-12 card-top">
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">请经常查看公告，以免无法正常使用!</p>
								</div>
							</div>
						</div>
					</div>
                	<div class="col-xx-12 col-sm-8">
						<div class="card">
							<div class="card-main">
								<div class="card-inner margin-bottom-no">
									<p class="card-heading">公告</p>
									<div class="card-table">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<!--<th>ID</th>
													<th>日期</th>
													<th>内容</th>-->
												</tr>
												{foreach $anns as $ann}
													<tr>
														<!--<td>#{$ann->id}</td>
														<td>{$ann->date}</td>-->
														<td>{$ann->content}</td>
													</tr>
												{/foreach}
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--如果开启管理员联系则显示-->
					{if $config["enable_admin_contact"] == 'true'}
					<div class="col-xx-12 col-sm-4">
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
					</div>
					{/if}
				</div>
            </div>
        </section>
        {include file='dialog.tpl'}
    </div>
</main>

{include file='user/footer.tpl'}