package imar

import imar.client.Client
import imar.utils.Person


@Singleton
class ClientInit {
    static init(){
        def clients = []
        clients.add(new Client(person: new Person(firstname: "Valjery", secondName: "Welinghton",lastname: "Dorceus")));

        clients.each {it -> it.save(flush: true, failOnError:true)}
    }
}
