<!DOCTYPE html>
<html lang="en">
<#include "head.ftl">
<body>
<#include "navbar.ftl">

<#assign found = false>
<#list pages as page>
    <#if found>
        <#assign next = page>
        <#break>
    </#if>
    <#if (page.status == "published" && page.title == content.title)>
        <#assign found = true>
    <#else>
        <#assign previous = page>
    </#if>
</#list>

<div class="container">
    <div class="row row-paging row-paging-top">
        <p>
        <#if previous??><a href="${previous.uri}" class="pull-left">${previous.title} &lt;&lt;</a></#if>
        <#if next??><a href="${next.uri}" class="pull-right">&gt;&gt; ${next.title}</a></#if>
        </p>
    </div>

    <div id="content">
        <h1>${content.title}</h1>

    ${content.body}
    </div>

    <div class="row row-paging row-paging-bottom">
        <p>
        <#if previous??><a href="${previous.uri}" class="pull-left">${previous.title} &lt;&lt;</a></#if>
        <#if next??><a href="${next.uri}" class="pull-right">&gt;&gt; ${next.title}</a></#if>
        </p>
    </div>
</div>

<#include "footer.ftl">
</body>
</html>
