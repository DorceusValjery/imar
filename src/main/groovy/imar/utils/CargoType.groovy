package imar.utils

import groovy.transform.CompileStatic

@CompileStatic
 public enum CargoType {
    FCL("FCL"),
    LCL("LCL"),
    CONSOLIDATED("CONSOLIDATED")

     String cargoType

     CargoType(String cargoType){
        this.cargoType = cargoType
    }
}