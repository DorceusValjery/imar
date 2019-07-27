package imar.client

import grails.gorm.services.Service

@Service(Prospect)
interface ProspectService {

    Prospect get(Serializable id)

    List<Prospect> list(Map args)

    Long count()

    void delete(Serializable id)

    Prospect save(Prospect prospect)

}