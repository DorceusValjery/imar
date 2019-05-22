package imar.supplier

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class IndustryServiceSpec extends Specification {

    IndustryService industryService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Industry(...).save(flush: true, failOnError: true)
        //new Industry(...).save(flush: true, failOnError: true)
        //Industry industry = new Industry(...).save(flush: true, failOnError: true)
        //new Industry(...).save(flush: true, failOnError: true)
        //new Industry(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //industry.id
    }

    void "test get"() {
        setupData()

        expect:
        industryService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Industry> industryList = industryService.list(max: 2, offset: 2)

        then:
        industryList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        industryService.count() == 5
    }

    void "test delete"() {
        Long industryId = setupData()

        expect:
        industryService.count() == 5

        when:
        industryService.delete(industryId)
        sessionFactory.currentSession.flush()

        then:
        industryService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Industry industry = new Industry()
        industryService.save(industry)

        then:
        industry.id != null
    }
}
