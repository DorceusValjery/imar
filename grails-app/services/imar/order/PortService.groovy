package imar.order

import grails.gorm.services.Service

@Service(Port)
interface PortService {

    Port get(Serializable id)

    List<Port> list(Map args)

    Long count()

    void delete(Serializable id)

    Port save(Port port)

}