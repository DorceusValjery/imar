package imar.client


import imar.utils.Person
import imar.utils.ProspectState

class Prospect {

    Person person;
    boolean active;
    ProspectState state

    static constraints = {
        state nullable: true
    }
    static mapping = {
        state enumType: "string"
    }

    @Override
    String toString(){
        return person.toString()
    }
}
