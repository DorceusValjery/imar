package imar.client

import imar.utils.Person

class Prospect {

    Person person;
    boolean active;
    enum state {ACTIVE("ACTIVE"), IS_CLIENT('NOW_CLIENT'), NOT_TRACKED("NOT_TRACKED")}

    static constraints = {
    }
}
