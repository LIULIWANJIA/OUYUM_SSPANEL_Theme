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
									<p class="card-heading">联系管理员</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="form-group">
										<div class="row">
											<div class="col-md-10 col-md-push-1">
												<button class="btn btn-block btn-brand waves-attach waves-light" onclick="location.href='/user/ticket/create'">创建新工单</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
                	<div class="col-lg-12 col-md-12">
						<div class="card">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-table">
										<div class="table-responsive table-user">
											{$render}
											<table class="table">
												<tr>
													<!--  <th>ID</th>   -->
													<th>发起日期</th>
													<th>工单标题</th>
													<th>工单状态</th>
													<th>操作</th>
												</tr>
												{foreach $tickets as $ticket}
													<tr>
														<!--   <td>#{$ticket->id}</td>  -->
														<td>{$ticket->datetime()}</td>
														<td>{$ticket->title}</td>
														{if $ticket->status==1}
															<td>工单服务中</td>
														{else}
															<td>工单已结束</td>
														{/if}
														<td>
															<a class="btn btn-brand"
															   href="/user/ticket/{$ticket->id}/view">查看</a>
														</td>
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
			</div>
        </div>
        </section>
    </div>
</main>

{include file='user/footer.tpl'}
