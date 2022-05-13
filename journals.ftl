<!DOCTYPE html>
<html lang="zh-cn">
<#include "layouts/partials/head.ftl">
<@head title="动态 · ${blog_title!}" canonical="${journals_url!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content" id="wrpper-container">
        <#list journals.content as journal>
            <section class="journal animated fadeInDown">
                <div class="journal-left">
                    <span class="journal-node"></span>
                </div>
                <div class="journal-right">
                    <div class="journal-date">${journal.createTime?string('yyyy年MM月dd日 · a')}</div>
                    <div class="journal-content">
                        ${journal.content}
                    </div>
                </div>
            </section>
        </#list>
        <#if journals.totalPages gt 1>
            <div class="pagination" id="pagination">
                <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="3">
                    <#if pagination.hasNext>
                        <span class="more_btn" role="button" data-url="${pagination.nextPageFullPath!}">加载更多</span>
                        <#else>
                        <span>已经到底了～</span>
                    </#if>
                </@paginationTag>
            </div>
        </#if>
    </div>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>