package imar

import grails.testing.gorm.DomainUnitTest
import imar.utils.Person
import spock.lang.Specification

class PersonSpec extends Specification implements DomainUnitTest<Person> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
