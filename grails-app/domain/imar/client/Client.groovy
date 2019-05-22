package imar.client

import imar.order.Purchase
import imar.utils.Person

class Client {

    Person person
    Date becameClientOn = new Date()


    static hasMany = [orders: Purchase]

    int orderCount(){
        return orders?.size()
    }

    static constraints = {

    }
}
