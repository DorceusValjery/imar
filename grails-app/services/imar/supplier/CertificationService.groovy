package imar.supplier

import grails.gorm.services.Service

@Service(Certification)
interface CertificationService {

    Certification get(Serializable id)

    List<Certification> list(Map args)

    Long count()

    void delete(Serializable id)

    Certification save(Certification certification)

}