package imar.supplier

import grails.gorm.services.Service

@Service(Industry)
interface IndustryService {

    Industry get(Serializable id)

    List<Industry> list(Map args)

    Long count()

    void delete(Serializable id)

    Industry save(Industry industry)

}