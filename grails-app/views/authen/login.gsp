<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">
    <div class="body">
        <g:if test="${flash.authenticationFailure}">
            Login failed: ${message(code:"authentication.failure."+flash.authenticationFailure.result).encodeAsHTML()}
        </g:if>
        <auth:form authAction="login" success="[controller:'admin', action:'index']" error="[controller:'admin', action:'loginError']">
            User: <g:textField name="login"/><br/>
            Password: <input type="password" name="password"/><br/>
            <input type="submit" value="Log in"/>
        </auth:form>
    </div>
</div>
</body>
</html>