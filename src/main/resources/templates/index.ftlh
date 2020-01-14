<#assign security=JspTaglibs["http://www.springframework.org/security/tags"]/>
<html>
<head>
    <title>Index</title>
    <meta charset="UTF-8">
</head>
<body>
<h1>Index</h1>
<@security.authorize access="isAuthenticated()">
    <p>Hello, <@security.authentication property="principal.username"/>!</p>
</@security.authorize>
<p><a href="/secret">Go to secret page</a></p>
<form action="/logout" method="post">
    <input type="submit" value="Logout">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>
</body>
</html>
