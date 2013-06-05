package vtsproject

class AuthenController {

    static allowedMethods = [login:'POST']

    def index() {}

    /**
     * method post
     * @author  tien.nguyen
     */
    def login(){
        if (request.method == 'POST'){
            def username = params.username;
            def password = params.password;

            /** Get user **/
            password = springSecurityService.encodePassword(password)
            def user = User.findByUsernameAndPasswordAndIsActive(username, password, true)
            if (user){
                session.user  = user;
                redirect(controller: "admin")
            }
        }
    }
}
