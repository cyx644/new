<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@page import="entity.Article"%>
<%@page import="dao.ArticleDao"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
<title>配置管理</title>
<script language="javascript">
function DeleteArticle(configId){
<%--
	$.post("转发的地址", { 变量名: "变量值", 变量名: "变量值" },function(data){
	alert("Data Loaded: " + data);
	});
	$("#divInfo").css("color","black");
	$("#divInfo").html("<img src='Images/loading5.gif'/>正在提交数据，请稍候...");
  	--%> 
  	<%--
	点击删除文章按钮的处理方法
	--%> 
	$.post("ConfigManagerServlet",{id:configId,type:1},function(ISOK){
 		if(ISOK=="SUCCESS"){
			location="ConfigManagerServlet?txtName=1";
		}else{
			alert("删除失败");
		}
		});
}
</script> 
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	height: 100%;
}
.STYLE1 {font-size: 14px}
.STYLE3 {font-size: 16px; font-weight: bold; }
.txt{
	border:solid 1px black;
	}
a{
	color:black;
	text-decoration: none;
}
-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}



</script>

<script src="../JS/jquery.js"></script>
<script language="javascript" src="../JS/edit/xheditor-1.1.10-zh-cn.min.js"></script>
<script>
$(document).ready(function(){						
	$.post("ServletAjaxType",function(data){		//将ServletAjaxType输出的信息发送（get也行）到spanType（ID）对应的标签下
		$("#spanType").html(data);
	});
});
</script>
<script type="text/javascript" language="javascript" src="js/jquery.js"></script>
<script type="text/javascript" language="javascript">
$(document).ready(function(){
	var str='${param.txtName}';
	$("#configType option").each(function(){
		if($(this).val()==str){
			$(this).attr("selected","selected");
		}
	});
});


function selectByType(obj){
	location="ConfigManagerServlet?txtName="+obj.value;

}
function selectall(id){ //用id区分  
	var tform=document.forms['form1'];  
	for(var i=0;i<tform.length;i++){  
	var e=tform.elements[i];  
	if(e.type=="checkbox" && e.name==id) e.checked=!e.checked;  
	}  
	} 
	
function updateByid(configId,configName,configValue){
	$("#txtId").html("<input type='text' id='txtConfigId' name='txtConfigId'  value='"+configId+"'  />");
	$("#txtName").html("<input type='text' id='txtConfigName' name='txtConfigName'  value='"+configName+"'  />");
	$("#txtValue").html("<input type='text' id='txtConfigValue' name='txtConfigValue'  value='"+configValue+"'  />");
}



</script>

  </head> 
</head>

<body>
<form action="ConfigManagerServlet?type=2" id="form2" name="form2" method="post" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="tab/images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="tab/images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="tab/images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[系统管理]-[配置管理]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="tab/images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  
  <tr>
    <td>

    <table width="100%" border="0" cellspacing="" cellpadding="0">
      <tr>
        <td width="8" background="tab/images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="1" cellspacing="10" bgcolor="b5d6e6">
         <tr>
            			<td width="14%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="right"><span class="STYLE1">配置ID：&nbsp;</span></div> </td>
            			<td colspan="5" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1" id="txtId">
            			<input type="text" id="txtConfigId" name="txtConfigId"  class="txt" />
            			</span></div> </td>
          			</tr>
        			<tr>
            			<td width="14%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="right"><span class="STYLE1">配置名称：&nbsp;</span></div> </td>
            			<td colspan="5" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1" id="txtName">
            			<input type="text" id="txtConfigName" name="txtConfigName"  class="txt"  />
            			</span></div> </td>
          			</tr>
          			<tr>
            			<td width="14%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="right"><span class="STYLE1">配置的值：&nbsp;</span></div> </td>
            			<td colspan="5" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1" id="txtValue">
            			<input type="text" id="txtConfigValue" name="txtConfigValue"  class="txt" />
            			</span></div> </td>
          			</tr>
          			<tr>
            			<td width="14%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="right"><span class="STYLE1">&nbsp;</span></div> </td>
            			<td colspan="5" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
            			<input type="submit" value="修改" />
            			</span></div> </td>
          			</tr>
          			 <tr>
            <td width="14%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="right"><span class="STYLE1">选择配置名称：&nbsp;</span></div> </td>
            <td colspan="5" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="left"><span class="STYLE1">
            <select id="configType" onchange="selectByType(this)" style="width:200px;" />
            	<option value="0"selected="selected">请选择</option>
    			<option value="1">选择全部</option>
    			<option value="2">花材</option>
    			<option value="3">花类</option>
    			<option value="4">节日专题</option>
    			<option value="5">价格筛选</option>
    			<option value="6">网站关键字</option>	
    		</select></span></div> </td>
           
          </tr>
          <tr>
            <td width="14%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">
              <input type="checkbox" name="checkbox1" value="checkbox" onclick="selectall('checkbox')"/>全选/反选
            </div></td>
            <td width="10%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">系统配置ID</span></div></td>
            <td width="28%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">系统配置名称</span></div></td>
            <td width="28%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">系统配置的值</span></div></td>
            <td width="20%" height="22" background="tab/images/bg.gif" bgcolor="#FFFFFF" class="STYLE1" colspan="2"><div align="center">基本操作</div></td>
          </tr>
         
          <c:forEach items="${requestScope.configList}" var="config" varStatus="status">
            <tr>
          	<td width="14%" height="22" bgcolor="#FFFFFF" class="STYLE1"><div align="center">
              <input type="checkbox" name="checkbox" value="${config.configId}"/>
            </div></td>
            <td width="12%" height="22" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${config.configId}</span></div></td>
            <td width="20%" height="22" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${config.configName}</span></div></td>
            <td width="10%" height="22" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${config.configValue}</span></div></td>
            <td width="10%" height="22" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="#" onclick="updateByid('${config.configId}','${config.configName}','${config.configValue}')">修改</a></span></div></td>
            <td width="10%" height="22" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><a href="javascript:void(0);" onclick="DeleteArticle(${config.configId});"  >删除</a></span></div></td>
          </tr>
        </c:forEach>
          			
        </table></td>
        <td width="8" background="tab/images/tab_15.gif">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  
  
  <tr>
    <td height="35" background="tab/images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="tab/images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        

        </table></td>
        <td width="16"><img src="tab/images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
  
  
</table>
</form>
</body>
</html>
