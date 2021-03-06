<%--
  Created by IntelliJ IDEA.
  User: nelsonking
  Date: 2018/8/24
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../common/tag.jsp"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SSM 项目</title>
    <%@include file="../common/head.jsp"%>
</head>
<body>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            <h2>首页使用的是Java JSP 展示</h2>
        </div>
        <div class="panel-body">
            <h3>JSP 同样是由后台输出变量，页面输出,下面罗列了些后端数据在前端的输出</h3>

            <p>字符串变量演示</p>
            <span> ${paramStr} </span>

            <p>Map 数据展示</p>
            <ul>
                <li>姓名 ：${paramMap.name} </li>
                <li>性别 ：${paramMap.sex} </li>
                <li>年龄 ：${paramMap.age} </li>
            </ul>

            <p>数组变量演示</p>
            <ul>
                <c:forEach var="paramData" items="${paramArray}">
                    <li>${paramData}</li>
                </c:forEach>
            </ul>

            <p>
                使用方式上和Laravel的方式区别不大，都在后台定好变量，直接在模板中读取，后面不在做过多解释，感兴趣的话<a href="http://www.runoob.com/jsp/jsp-syntax.html">参考这里</a>
            </p>

            <p>小技巧</p>

            <ul>
                <li>模板当中同样含有关键字，例如 在循环数组的时候我使用了 param 作为变量，数组始终不出现</li>
                <li>模板文件一般放到 WEB-INF/jsp 下，目的是外接无法访问到 jsp 模板文件,否则通过目录可以直接访问没有经过脚本处理的模板文件 </li>
                <li>mybatis需要配置的 dao,entity,map 手写很容易出现错乱，可使用 mybatis-generator-core 工具</li>
            </ul>
        </div>

        <%@include file="../common/footer.jsp"%>
    </div>
</div>
</body>
</html>
