package imar.supplier

import imar.utils.DateHelper
import imar.utils.Person
import static imar.utils.DateHelper.getDate
import java.time.LocalDate

class Supplier {

    Date acquiredOn;
    String name;
    String address;
    String website;
    Person pointOfContact;
    int sizeOfCompany;
    String acquisitionProcess;
    transient Date doingBusinessSince;
    String businessHistoric;
    //relationship and performance
    boolean visitedFactory;
    boolean haveMetRepresentative;
    boolean backgroundCheck;
    boolean speakEnglish;
    boolean afterSaleService;

    @Override
    String toString(){
        return name
    }
    static hasMany = [specializations:Specialization, certifications:Certification, reviews: Review]
    static constraints = {
        acquiredOn nullable: false, min: getDate(LocalDate.of(2010,1,1)), max: new Date()
        doingBusinessSince min: getDate(LocalDate.of(1900,1,1)), max: new Date()
    }
}
