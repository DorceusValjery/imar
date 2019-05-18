package imar
import imar.supplier.Certification

@Singleton
class CertificationInit {
    static init(){
        def certification = []
        certification.add(new Certification(isoCode: "13485",name: "Medical devices -- Quality management systems -- Requirements for regulatory purposes"))
        certification.add(new Certification(isoCode: "14001:2004", name: "Environmental management systems -- Requirements with guidance for use"))
        certification.add(new Certification(isoCode: "TS16949", name: "quality management system"))
        certification.add(new Certification(isoCode: "AS9100D", name: "quality management standard for organizations in the aerospace sector"))
        certification.add(new Certification(isoCode: "9001:2015", name: "Quality management systems -- Requirements"))
        certification.add(new Certification(isoCode: "9001", name: "Quality Management System requirements for all areas of the business"))
        certification.add(new Certification(isoCode: "13485:2003", name: "Medical devices -- Quality management systems -- Requirements for regulatory purposes"))
        certification.add(new Certification(isoCode: "IEC 17025", name: "General requirements for the competence of testing and calibration laboratories"))
        certification.add(new Certification(isoCode: "9000:2000", name: "Quality management systems -- Fundamentals and vocabulary"))
        certification.add(new Certification(isoCode: "9001:2000", name: "Quality management systems -- Requirements"))
        certification.add(new Certification(isoCode: "TS 16949:2002", name: "Quality management systems"))
        certification.each {it.save(flush:true)}
    }
}
