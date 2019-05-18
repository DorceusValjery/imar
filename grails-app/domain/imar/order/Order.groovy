package imar

class Order {


    static hasOne = [client:Client]
    static hasMany = [items:Item]
    static constraints = {
    }
}
