package imar.utils

class Person {

    String firstname;
    String lastname;
    String secondName;
    Date dateOfBirth = new Date()
    String email;

    static constraints = {
        email email:true, nullable: true
        dateOfBirth nullable: true
        secondName nullable: true
        lastname blank: false
        firstname blank: false
    }
}
