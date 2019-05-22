package imar.order
import imar.supplier.Supplier

class Product {
    String name;
    Supplier supplier;
    double priceOfAcquisition;



    @Override
    public String toString(){
        return name;
    }

    static constraints = {
    }
}
