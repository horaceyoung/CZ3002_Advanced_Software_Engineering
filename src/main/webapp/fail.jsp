<%--
  Created by IntelliJ IDEA.
  User: hao.yong
  Date: 08/04/2021
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>CZ3002 Login Website</title>
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>

    <style type="text/css">
        .errorMessage {
            font-weight: bold;
            color: red;
            list-style: none;
            padding: 0;
        }
        html, body {
            height: 100%;
        }
        html {
            display: table;
            margin: auto;
        }
        body {
            display: table-cell;
            vertical-align: middle;
        }
    </style>

</head>
<body>
<div style="text-align: center">
    <h1>Login</h1>
    <h2>Previous Login Failed. Please try again.</h2>
    <s:form action="login" method="post" theme="css_xhtml">
        <div>
            Username:
            <s:textfield name="user.username" size="30"/>
            <br>
        </div>

        <div>
            Password:
            <s:password name="user.password" size="30"/>
            <br>
        </div>

        <div>
            <s:submit value="Login"/>
        </div>
    </s:form>
    <br>
    <s:actionerror/>
</div>
</body>

</html>
