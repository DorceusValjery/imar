package imar.supplier

import grails.gorm.services.Service

@Service(Specialization)
interface SpecializationService {

    Specialization get(Serializable id)

    List<Specialization> list(Map args)

    Long count()

    void delete(Serializable id)

    Specialization save(Specialization specialization)

}