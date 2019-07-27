package imar.utils

import java.time.LocalDate
import static imar.utils.DateHelper.getDate

class Person {

    String firstname;
    String lastname;
    String secondName;
    Date dateOfBirth
    String email;

    @Override
    String toString(){
        return lastname.toUpperCase().concat(", ").concat(firstname)
    }

    static constraints = {
        email email:true, nullable: true
        dateOfBirth nullable: true, min: getDate(LocalDate.of(1900,1,1)), max:getDate( LocalDate.now().minusYears(18))
        secondName nullable: true
        lastname blank: false
        firstname blank: false
    }
}
