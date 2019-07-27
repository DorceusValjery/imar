package imar.utils

import groovy.transform.CompileStatic

@CompileStatic
public enum ShippingMethod {
    AIR("AIR"),
    SEA("SEA"),
    ROAD("ROAD")

    String shippingMethod

    ShippingMethod(String method){
        this.shippingMethod = method
    }

}