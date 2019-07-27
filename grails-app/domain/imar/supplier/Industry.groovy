package imar.supplier

class Industry {
    String prefix
    String name
    static hasMany = [specializations:Specialization]
    static constraints = {
        name blank: false
        prefix blank: false
    }
    @Override
    String toString(){
        return prefix?.concat(":")?.concat(name)
    }
}
