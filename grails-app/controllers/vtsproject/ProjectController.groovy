package vtsproject

class ProjectController {

    def index() {}

    def detail(){
        def project = Project.findById(params.id)

        [project: project]
    }

    def apply(){
        def project = Project.findById(params.id)
        if (project){
//            project.addToUserApply(new )
        }
    }
}
