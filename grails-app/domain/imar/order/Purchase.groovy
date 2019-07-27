package imar.order

import imar.client.Client
import imar.utils.CargoType
import imar.utils.ShippingMethod
import static imar.utils.DateHelper.getDate

import java.time.LocalDate

class Purchase {
    String purchaseNumber
    ShippingMethod shippingMethod
    CargoType typeOfCargo
    String termsOfPayment;
    Date payedOn;
    String status;
    Date deliveredOn;
    Port portOfLoading;
    Port portOfDelivery
    String shippingStatus;
    String deliveryStatus;
    double totalCostOfDelivery = 0.0
    String pricingTerms



    static belongsTo = [client: Client]
    static hasMany = [products: Product]

    static constraints = {
        shippingMethod nullable: true
        typeOfCargo nullable: true
        payedOn nullable: true, max: new Date(), min: getDate(LocalDate.of(1900,1,1))
        deliveredOn nullable: true, max: new Date(), min: getDate(LocalDate.of(1900,1,1))
        termsOfPayment nullable: true
        shippingStatus nullable: true
        deliveryStatus nullable: true
        pricingTerms nullable: true
        status nullable: true
        purchaseNumber unique: true
    }
    static mapping = {
        shippingMethod enumType: "string"
        typeOfCargo enumType: "string"
    }

    @Override
    String toString(){
        return purchaseNumber
    }
}
