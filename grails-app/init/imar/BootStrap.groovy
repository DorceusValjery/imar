package imar
import imar.client.*
import imar.supplier.*;
import imar.order.*
import imar.utils.*
import static imar.utils.DateHelper.getDate

import java.time.LocalDate

class BootStrap {

    def init = { servletContext ->
        CertificationInit.init()
        IndustryAndSpecializationInit.init()
        ClientInit.init()

        def albert = new Person(firstname: "Albert",lastname: "Camus",dateOfBirth: getDate(LocalDate.now().minusYears(44)), email: "albert.camus@imarbg.com").save(flush:true, failOnError:true)
        def bertrand = new Person(firstname: "Bertrand", lastname: "Joseph", dateOfBirth:getDate( LocalDate.now().minusYears(32)), email: "bertrand.joseph@imarbg.com").save(flush:true, failOnError:true)
        def camille = new Person(firstname: "Camille", lastname: "Hubert",dateOfBirth: getDate(LocalDate.now().minusYears(34)), email: "camille.hubert@fuji.com").save(flush:true, failOnError:true)
        def donald = new Person(firstname: "Donald", lastname: "Trump", dateOfBirth: getDate(LocalDate.now().minusYears(56)), email: "donald.trump@usa.com").save(flush:true, failOnError:true)
        def elon = new Person(firstname: "Elon", lastname: "Musk", dateOfBirth: getDate(LocalDate.now().minusYears(45)), email: "elon.musk@tesla.com").save(flush:true, failOnError:true)

        def portA = new Port(name:"Shenghai",rating: 3, pointOfContact: albert).save(flush:true, failOnError:true)
        def portB = new Port(name: "Miami", rating: 4, pointOfContact: bertrand).save(flush:true, failOnError:true)

        def supplierA = new Supplier(name: "FUJI", address: "3 summit road 75000 Pekin, China", website: "fuji.com",pointOfContact: camille,acquiredOn: getDate(LocalDate.now()),
                        sizeOfCompany: 150, acquisitionProcess: "n/a", doingBusinessSince: getDate(LocalDate.now()), businessHistoric: "n/a",visitedFactory: false,
                        haveMetRepresentative: false, backgroundCheck: false, speakEnglish: true, afterSaleService: false).save(flush:true, failOnError:true)
        def clientA = new Client(becameClientOn: getDate(LocalDate.now()), person: donald).save(flush:true, failOnError:true)
        def prospectA = new Prospect(person: elon, active: true, state: ProspectState.ACTIVE).save(flush:true, failOnError:true)

        def productA = new Product(name: "Iron", supplier: supplierA, priceOfAcquisition: 1000).save(flush:true, failOnError:true)

        /*def orderA = new Order(client: clientA, placedOn: new Date(),status: "n/a", deliveredOn: new Date(), portOfLoading: portA,  portOfDelivery: portB,
                    shippingStatus: "n/a", deliveryStatus: "n/a", totalCostOfDelivery: 15000, pricingTerms: "n/a", orderNumber: "OD-1234",
                    payedOn: new Date(),termsOfPayment: "n/a").addToProducts(productA).save(flush:true, failOnError:true)
*/
/*
        */def p = new Purchase(purchaseNumber: "PN-12345" , portOfLoading: portA, portOfDelivery: portB);
        clientA.addToOrders(p).save(flush: true, failOnError: true)


    }
    def destroy = {
    }

}
