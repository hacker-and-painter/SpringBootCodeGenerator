import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
* @Description
* @Author ${authorName}
* @Date ${.now?string('yyyy-MM-dd HH:mm:ss')}
**/
@Data
public class ${classInfo.className}UpdateParam implements Serializable {

    private static final long serialVersionUID = 1L;

<#if classInfo.fieldList?exists && classInfo.fieldList?size gt 0>
    <#list classInfo.fieldList as fieldItem >
    <#if fieldItem.fieldName == 'id' || fieldItem.fieldName == 'createTime' || fieldItem.fieldName = 'updateTime'>
        <#continue>
    </#if>
    @ApiModelProperty("${fieldItem.fieldComment}")
    <#if fieldItem.fieldClass == 'LocalDateTime'>
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    </#if>
    private ${fieldItem.fieldClass} ${fieldItem.fieldName};

    </#list>
    public ${classInfo.className}UpdateParam() {
    }
</#if>

}
