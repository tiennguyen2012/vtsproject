package vtsproject

class IndexController {

    def index() {
        def projects = Project.findAll([max:20, offset:0])
        [projects: projects]
    }
}
