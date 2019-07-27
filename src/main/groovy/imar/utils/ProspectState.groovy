package imar.utils

import groovy.transform.CompileStatic

@CompileStatic
public enum ProspectState {
    ACTIVE("ACTIVE"),
    IS_CLIENT("IS A CLIENT"),
    NOT_TRACKED("NOT BEING TRACKED")

    String state;
    ProspectState(String state){
        this.state = state
    }
}