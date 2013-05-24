import vtsproject.Project

import vtsproject.User
import vtsproject.Project

class BootStrap {

    def init = { servletContext ->

        log.info('-- Bootstrap for user');
        User.bootstrap()

        log.info('-- Bootstrap for project');
        Project.bootstrap()
    }

    def destroy = {
    }
}
