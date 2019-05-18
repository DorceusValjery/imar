package imar.supplier

class Certification {

    String name
    String isoCode
    Date obtainedOn
    Date expiringOn

    static constraints = {
        obtainedOn nullable: true
        expiringOn nullable: true
        isoCode unique: true, nullable: true
    }

    @Override
    String toString(){
        return "ISO: ".concat(isoCode).concat(" /").concat(name)
    }
}
