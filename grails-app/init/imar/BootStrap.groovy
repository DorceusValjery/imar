package imar

class BootStrap {

    def init = { servletContext ->
        CertificationInit.init()
        IndustryAndSpecializationInit.init()
        ClientInit.init()
    }
    def destroy = {
    }

}
