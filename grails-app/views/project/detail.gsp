<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container" id="project-detail">
    <div class="body">
        <div class="span8">
           <!-- PROJECT DETAIL -->
           <h4>${project.getProjectName()}</h4>
           <div class="description row-fluid">
                <div class="date"><g:formatDate date="${project.getDateCreated()}" format="yyyy-MM-dd"/></div>
                <div class="author">${project.getAuthor().getUsername()}</div>
           </div>
           <div class="detail">
                ${project.getDescription()}
           </div>

            <!-- APPLY -->
            <div class="button-set">
                <button class="btn btn-primary"><g:message code="project.detail.apply.label" default="Apply"></g:message> </button>
                <button class="btn btn-inverse" id="btn-back"><g:message code="project.detail.back.label" default="Back"></g:message> </button>
            </div>
        </div>
        <g:render template="/layouts/right"/>
    </div>
</div>
</body>
</html>
<r:script>
    $('#btn-back').click(function(){
        history.go(-1);
    })
</r:script>
