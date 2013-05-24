<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">
    <div class="body">
        <div class="span8">
            <!-- LIST PROJECT-->
            <div class="projects">
                <g:each in="${projects}" var="project">
                    <g:link controller="project" action="detail" params="[id: project.getId()]">
                        <div class="item">
                            <div class="row-fluid">
                                <div class="project-name span10">${project.getProjectName()}</div>

                                <div class="project-date span2"><g:formatDate date="${project.getDateCreated()}"
                                                                              format="yyyy-MM-dd"/></div>
                            </div>
                            <div class="row-fluid">
                                <div class="project-description span10">${project.getDescription()}</div>

                                <div class="author span2">${project.author.getUsername()}</div>
                            </div>

                        </div>
                    </g:link>
                </g:each>
            </div>

        </div>
        <g:render template="/layouts/right"/>
    </div>
</div>
</body>
</html>
