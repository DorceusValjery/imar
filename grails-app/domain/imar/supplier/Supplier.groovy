package imar.supplier

import imar.utils.Person

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
    }
}
