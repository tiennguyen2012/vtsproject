package vtsproject
import java.util.Date;

import vtsproject.User

class Project {
    String projectName
    String description

    Date dateCreated
    Date lastUpdated

    Date startDate
    Date endDate

    User author

    static hasMany = [userApply: User]

    static constraints = {
        startDate nullable: true
        endDate nullable: true
        userApply nullable: true
    }

    static void bootstrap(){
        new Project(projectName: '4impact Sale App in Iphone', description: 'We need create a project for 4impact',  author: User.findByUsername('admin')).save(flush: true)
        new Project(projectName: 'Vts, I need make some website', description: 'We need create a project for 4impact', author: User.findByUsername('myxuyen')).save(flush: true)
    }
}
