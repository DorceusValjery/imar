package imar.order

import imar.utils.Person

class Port {
    String name
    double longitude
    double latitude
    int rating=1;
    String comments;
    Person pointOfContact;

    @Override
    public String toString(){
        return name;
    }

    static constraints = {
        rating min: 0, max: 5
        comments nullable: true, minSize: 10, blank: true
        pointOfContact nullable: true
        longitude nullable: true
        latitude nullable: true
    }
}
