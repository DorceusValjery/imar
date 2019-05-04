package imar

class Client {

    Person person;
    Date becameClientOn;


    static hasMany = [orders:Order]

    static constraints = {
    }
}
