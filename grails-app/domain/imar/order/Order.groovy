package imar.order
import imar.client.Client

class Order {

    String orderNumber;
    Date placedOn;
    String termsOfPayment;
    Date payedOn;
    String status;
    Date deliveredOn;
    Port portOfLoading;
    enum shippingMethod{ AIR('air'),SEA('sea'),ROAD('road')}
    enum typeOfCargo{ FCL('FCL'), LCL('LCL'), CONSOLIDATED('CONSOLIDATED')}
    String shippingStatus;
    String deliveryStatus;
    Currency totalCostOfDelivery;
    String pricingTerms;


    static hasOne = [client: Client]
    static hasMany = [products:Product]
    static constraints = {
    }
}
