package vtsproject

class User {
    String username
    String password
    Boolean isActive = true

    static constraints = {
        username nullable: false
        password nullable: false
    }


    def beforeInsert() {
        encodePassword()
    }

    def void encodePassword(){
        password = springSecurityService.encodePassword(password)
    }

    static void bootstrap(){
        new User(username: 'admin', password: "123456").save(flush: true)
        new User(username: 'myxuyen', password: "123456").save(flush: true)
    }
}
