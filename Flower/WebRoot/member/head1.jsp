<%@ page language="java" import="java.util.*,entity.*,util.*" pageEncoding="UTF-8"%>
<%@page import="util.ConfigUtil"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<script>
window.setInterval("getShopNum()", 1000);//定时器 
function getShopNum(){
	$.post("MemberShopServlet",{type:"getNum"},function(data){
		$("#shopNum").html("("+data+")");
	});
}


</script>

<div class="ntop">
<div class="ntop_top">
<div class="logo"><a href="IndexPage"><img src="Images/lihelogo.gif" alt="励合鲜花网" border="0" width="216" height="68" /></a></div>
      <div class="top_txtbox"> 
        <div class="top_toolbox"> 
          <div class="inbox"><a href="memberCenter.jsp" rel="nofollow" target="_blank">我的账户</a> 
           
            <%-- | <a href="/help/" rel="nofollow" target="_blank">帮助中心</a> | <a href="ShoppingCarServlet?cmd=list&log=1&userId=${sessionScope.loginMember.memberId}" rel="nofollow" target="_blank">购物车</a><font color="red" id="shopNum">(<%=session.getAttribute(FlowerUtil.SESSION_SHOPPING)==null?0:((HashMap<Integer,ShoppingItem>)session.getAttribute(FlowerUtil.SESSION_SHOPPING)).size() %>)</font> --%>
            | <a href="/help/" rel="nofollow" target="_blank">帮助中心</a> | <a href="ShoppingCarServlet?cmd=list&log=1&userId=${sessionScope.loginMember.memberId}" rel="nofollow" target="_blank">购物车</a>
            | <a href="http://www.hua.com/" onclick="window.external.addFavorite(this.href,this.title);return false;" title='励合鲜花礼品网 www.hua.com - 销量稳居行业第一' rel="sidebar">收藏本站</a> 
            <span class="color_666"><font color="#FF9900">●</font> 中国鲜花礼品网,领先的中国鲜花网</span> 
          </div>
        </div>
        <div class="helloinfo">
        <span class="tserver">
        <a target=blank href=tencent://message/?uin=<%=ConfigUtil.getConfig("客服QQ").get(0).getConfigValue() %>&Site=&Menu=yes><img border="0" SRC=http://wpa.qq.com/pa?p=1:<%=ConfigUtil.getConfig("客服QQ").get(0).getConfigValue() %>:7alt="点击这里给我发消息"></a>
        </span> 
    <%//判断是否已经登陆并保存布尔变量到isLogin %>
	<c:if test="${sessionScope.loginMember!=null}" var="isLogin">
	</c:if>
	<%//如果已经登陆了 %>
	<c:if test="${isLogin}" >
			励合鲜花网欢迎您：
			<%//判断是否已经设置昵称并保存布尔变量到isSetName %>
			<c:if test="${sessionScope.loginMember.nickName!=null}" var="isSetName">
			</c:if>
			
			<a href="memberCenter.jsp">
			
			<%//设置显示的字为红色 %>
			<font color="red">
			
			<%//如果已经设置了昵称就显示昵称 %>
			<c:if test="${isSetName}">
				${sessionScope.loginMember.nickName}
			</c:if>
			
			<%//如果还没设置昵称就显示邮箱 %>
			<c:if test="${!isSetName}">
				${sessionScope.loginMember.memberEmail}
			</c:if>
			</font>
			</a> |
			<input id="userId"  type="hidden" value="${sessionScope.loginMember.memberId}">
			<a href="loginOut.jsp">退出登录！</a>
	</c:if>
	<%//如果还没登陆 %>
	<c:if test="${!isLogin}">
			励合鲜花网欢迎您!
			<span class="rl_text"> <a href="login.jsp" rel="nofollow">登录</a> |
			<a href="register.jsp" rel="nofollow">注册</a></span> 
	</c:if>
        </div>
      </div>
</div>






</div>