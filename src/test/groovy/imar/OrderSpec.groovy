package imar

import grails.testing.gorm.DomainUnitTest
import imar.order.Order
import spock.lang.Specification

class OrderSpec extends Specification implements DomainUnitTest<Order> {

    def setup() {
    }

    def cleanup() {
    }

    void "test something"() {
        expect:"fix me"
            true == false
    }
}
