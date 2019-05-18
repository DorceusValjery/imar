package imar

import grails.testing.gorm.DomainUnitTest
import imar.order.Item
import spock.lang.Specification

class ItemSpec extends Specification implements DomainUnitTest<Item> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
