<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_declaration_statement
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/25
  Time(创建时间)： 13:47
  Description(描述)： JSP 声明语句用于声明一个或多个变量、方法，以供后面的 Java 代码使用。您必须先对变量和方法进行声明，才能使用它们。
JSP 声明语法如下：
<%! 声明语句 %>
等效于
<jsp:declaration>
    声明语句
</jsp:declaration>
JSP脚本和声明的区别
JSP 脚本只能声明变量，不能声明方法。JSP 声明语句可以声明变量和方法。
JSP 脚本会把包含的内容转译插入到 Servlet 的 service() 方法中，也就是 <% %> 中定义的变量是局部变量。
这也是 JSP 脚本不能声明方法的原因，因为 Java 不允许方法中嵌套方法。
JSP 声明会把包含的内容添加到 Servlet 类中（在任何方法之外），也就是 <%! %> 中定义的变量是成员变量，方法是成员方法。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%! int num = 0;%>
<%!String str = "你好！";%>
<%!int a = 45;%>
<%!int b = 456;%>
<%num = a + b;%>

<%
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter printWriter = response.getWriter();
    printWriter.println(str+"<br/>");
    printWriter.println("a=" + a + "   b=" + b+"<br/>");
    printWriter.println("num=" + num+"<br/>");
    printWriter.close();
%>

</body>
</html>
