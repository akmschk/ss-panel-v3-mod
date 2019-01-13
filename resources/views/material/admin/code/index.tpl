 {include file='admin/main.tpl'}







<main class="content">
	<div class="content-header ui-content-header">
		<div class="container">
			<h1 class="content-heading">支出{if $config['enable_donate']=='true'}与捐赠{/if}管理</h1>
		</div>
	</div>
	<div class="container">
		<div class="col-lg-12 col-md-12">
			<section class="content-inner margin-top-no">

				<div class="card">
					<div class="card-main">
						<div class="card-inner">
							<p>系统中金额流转记录。</p>
							<p>显示表项:
								{include file='table/checkbox.tpl'}
							</p>
						</div>
					</div>
				</div>

				<div class="table-responsive">
					{include file='table/table.tpl'}
				</div>


				<div class="fbtn-container">
					<div class="fbtn-inner">
						<a class="fbtn fbtn-lg fbtn-brand-accent waves-attach waves-circle waves-light" href="/admin/donate/create">+</a>

					</div>
				</div>




		</div>



	</div>
</main>






{include file='admin/footer.tpl'}

<script>
{include file='table/js_1.tpl'}

$(document).ready(function(){
	{include file='table/js_2.tpl'}
});
</script>
