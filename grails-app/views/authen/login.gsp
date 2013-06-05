<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">
    <div class="body">


        <div class="span3 frmLogin">
            <h4><g:message code="login.label.login.system" default="Login System"/></h4>

            <!-- SHOW MESSAGE ERROR -->
            <g:if test="${flash.authenticationFailure}">
                Login failed: ${message(code: "authentication.failure." + flash.authenticationFailure.result).encodeAsHTML()}
            </g:if>

            <!-- LOGIN FORM -->
            <g:form method="POST" action="login" controller="authen">
                <div class="row-fluid">
                    <div class="span5"><g:message code="login.label.username" default="Username"/></div>

                    <div class="span5"><input type="text" name="username"/></div>
                </div>

                <div class="row-fluid">
                    <div class="span5"><g:message code="login.label.password" default="Password"/></div>

                    <div class="span5"><input type="password" name="password"/></div>
                </div>
                <div class="row-fluid">
                <input class="btn btn-primary" type="submit" value="Log in"/>
                <input class="btn btn-inverse" type="reset" value="Reset"/>
                </div>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
