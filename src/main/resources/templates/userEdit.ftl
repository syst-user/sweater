<#import "parts/common.ftl" as c>

<@c.page>
User editor
    <form action="/user" method="post">
        <input type="text" value="${user.username}" name="userName">
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.role?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">save</button>
    </form>
</@c.page>