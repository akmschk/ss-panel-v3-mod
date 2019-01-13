








{include file='user/main.tpl'}







	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">众筹明细</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="row">
				

					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<p>总收入：<font color="#FF3E96"> {$total_in} </font>元</p>
									
									<p>总支出：<font color="#FF3E96"> {$total_out} </font>元</p>
								</div>
							</div>
						</div>
					</div>
				
					<div class="col-lg-12 col-md-12">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="card-table">
											<div class="table-responsive">
												{$codes->render()}
												<table class="table table-hover">
													<tr>
														<th>ID</th>
														<th>类型</th>
														<th>操作</th>
														<th>备注</th>
														<th>时间</th>
														
													</tr>
													{foreach $codes as $code}
														<tr>
															<td>{$code->id}</td>
															{if $code->type == -1}
															<td>众筹收入</td>
															{/if}
															{if $code->type == -2}
															<td>财务支出</td>
															{/if}
															{if $code->type == -1}
															<td>众筹 {$code->number} 元</td>
															{/if}
															{if $code->type == -2}
															<td>支出 {$code->number} 元</td>
															{/if}
															<td>{$code->code}</td>
															<td>{$code->usedatetime}</td>
														</tr>
													{/foreach}
												</table>
												{$codes->render()}
											</div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
					
					{include file='dialog.tpl'}
				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}

<script>
    $(document).ready(function () {
        $("#hide-update").click(function () {
            $.ajax({
                type: "POST",
                url: "hide",
                dataType: "json",
                data: {
                    hide: $("#hide").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
