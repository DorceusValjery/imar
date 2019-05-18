package imar.order
import imar.supplier.Supplier

class Product {
    String name;
    Supplier supplier;
    Currency priceOfAcquisition;

    @Override
    public String toString(){
        return name;
    }

    static constraints = {
    }
}
