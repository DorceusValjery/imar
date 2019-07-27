package imar.supplier

import java.time.LocalDate
import static imar.utils.DateHelper.getDate

class Certification {

    String name
    String isoCode
    Date obtainedOn
    Date expiringOn

    static constraints = {
        obtainedOn nullable: true, min: getDate(LocalDate.of(1900,1,1)) , max: new Date()
        expiringOn nullable: true
        isoCode unique: true, nullable: true
    }

    @Override
    String toString(){
        return "ISO: "+ isoCode+ " /"+name
    }
}
