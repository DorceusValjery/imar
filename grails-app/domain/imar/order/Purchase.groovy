package imar.order

import imar.client.Client
import imar.utils.CargoType
import imar.utils.ShippingMethod

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
        payedOn nullable: true
        deliveredOn nullable: true
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
