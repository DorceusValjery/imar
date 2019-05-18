package imar.client

import imar.order.Order
import imar.utils.Person

class Client {

    Person person
    Date becameClientOn = new Date()


    static hasMany = [orders: Order]

    int orderCount(){
        return orders?.size()
    }

    static constraints = {

    }
}
