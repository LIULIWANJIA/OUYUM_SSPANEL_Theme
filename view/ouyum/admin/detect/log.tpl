{include file='admin/main.tpl'}

<main class="content">
    <div class="container">
        <div class="col-lg-12 col-md-12 card-top">
            <section class="content-inner margin-top-no">
                <div class="card">
                    <div class="card-main">
                        <div class="card-inner">
                            <p>系统中所有审计记录。</p>
                            <p>显示表项:
                                {include file='table/checkbox.tpl'}
                            </p>
                        </div>
                    </div>
                </div>
                <div class="table-responsive">
                    {include file='table/table.tpl'}
                </div>
        </div>
    </div>
</main>

{include file='admin/footer.tpl'}

<script>
    {include file='table/js_1.tpl'}

    $(document).ready(function () {
        {include file='table/js_2.tpl'}
    });
</script>