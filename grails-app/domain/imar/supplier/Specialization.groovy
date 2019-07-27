package imar.supplier

class Specialization {
    String prefix
    String name;
    static belongsTo = [industry:Industry]
    static constraints = {
        name blank: false
        prefix blank: false
    }
    @Override
    String toString(){
        return prefix?.concat(":")?.concat(name)
    }
}
