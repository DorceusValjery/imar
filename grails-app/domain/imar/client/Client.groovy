package imar.client

import imar.order.Purchase
import imar.utils.Person
import static imar.utils.DateHelper.getDate

import java.time.LocalDate

class Client {

    Person person
    Date becameClientOn


    @Override
    String toString(){
        return person.toString()
    }


    static hasMany = [orders: Purchase]

    int orderCount(){
        return orders?.size()
    }

    static constraints = {
        becameClientOn nullable: true, max: new Date(), min: getDate("01-01-2010")
    }
}
