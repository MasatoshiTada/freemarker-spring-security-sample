<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
<html>
<head>
    <title>Secret</title>
    <meta charset="UTF-8">
</head>
<body>
<h1>Secret</h1>
<p>Hello, <@security.authentication property="principal.username"/>!</p>
<p><a href="/">Back to index page</a></p>
<form action="/logout" method="post">
    <input type="submit" value="Logout">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</body>
</html>
