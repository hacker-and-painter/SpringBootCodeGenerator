/**
*  ${classInfo.classComment}
* @author ${authorName} ${.now?string('yyyy-MM-dd')}
*/

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
<#list classInfo.fieldList as fieldItem>
    // ${fieldItem.fieldComment}
    ${fieldItem.fieldClass} ${fieldItem.fieldName} = ${classInfo.className?uncap_first}.get${fieldItem.fieldName?cap_first}();
</#list>

<#list classInfo.fieldList as fieldItem>
    // ${fieldItem.fieldComment}
    ${classInfo.className?uncap_first}.set${fieldItem.fieldName?cap_first}();
</#list>
</#if>
