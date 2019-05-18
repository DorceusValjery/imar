package imar.supplier

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CertificationServiceSpec extends Specification {

    CertificationService certificationService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Certification(...).save(flush: true, failOnError: true)
        //new Certification(...).save(flush: true, failOnError: true)
        //Certification certification = new Certification(...).save(flush: true, failOnError: true)
        //new Certification(...).save(flush: true, failOnError: true)
        //new Certification(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //certification.id
    }

    void "test get"() {
        setupData()

        expect:
        certificationService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Certification> certificationList = certificationService.list(max: 2, offset: 2)

        then:
        certificationList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        certificationService.count() == 5
    }

    void "test delete"() {
        Long certificationId = setupData()

        expect:
        certificationService.count() == 5

        when:
        certificationService.delete(certificationId)
        sessionFactory.currentSession.flush()

        then:
        certificationService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Certification certification = new Certification()
        certificationService.save(certification)

        then:
        certification.id != null
    }
}
