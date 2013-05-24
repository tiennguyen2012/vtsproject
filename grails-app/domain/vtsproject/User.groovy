package vtsproject

class User {
    String username
    String password

    static constraints = {
    }


    def beforeInsert() {
//        encodePassword()
    }

//    def void encodePassword(){
//        password = springSecurityService.encodePassword(password)
//    }

    static void bootstrap(){
        new User(username: 'admin', password: "123456").save(flush: true)
        new User(username: 'myxuyen', password: "123456").save(flush: true)
    }
}
