package imar

class Item {
    Supplier supplier;
    static belongsTo = [order:Order]


    static constraints = {
    }
}
