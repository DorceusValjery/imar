package imar

import imar.supplier.Industry
import imar.supplier.Specialization

@Singleton
class IndustryAndSpecializationInit {
    static init(){
        def industries = []
        Industry a
        industries.add(a= new Industry(prefix: "AVB", name: "Animal and Vegetable bi-product"))
            a.addToSpecializations(new Specialization(prefix: "IFO",name: "Inedible Fats and Oils"))
            a.addToSpecializations(new Specialization(prefix: "SBO", name: "Soybean Oil"))
            a.addToSpecializations(new Specialization(prefix: "OPVO", name: "Other Pure Vegetable Oils"))
            a.addToSpecializations(new Specialization(prefix: "STAC", name: "Stearic Acids"))
            a.addToSpecializations(new Specialization(prefix: "FSHO",name: "Fish Oil"))
            a.addToSpecializations(new Specialization(prefix: "WAX", name: "Waxes"))
            a.addToSpecializations(new Specialization(prefix: "WOGR", name: "Wool Grease"))
            a.addToSpecializations(new Specialization(prefix: "OVO", name: "Other Vegetable Oils"))
            a.addToSpecializations(new Specialization(prefix: "RAPO", name: "Rapeseed Oil"))
            a.addToSpecializations(new Specialization(prefix: "MARG",  name: "Margarine"))
            a.addToSpecializations(new Specialization(prefix: "PALO", name: "Palm Oil"))
            a.addToSpecializations(new Specialization(prefix: "GLYC", name: "Glycerol"))
            a.addToSpecializations(new Specialization(prefix: "SEDO", name: "Seed Oils"))
            a.addToSpecializations(new Specialization(prefix: "BSGF", name: "Bovine, Sheep, and Goat Fat"))
            a.addToSpecializations(new Specialization(prefix: "????", name: "Miscellaneous"))
        industries.add(a= new Industry(prefix: "AH", name: "Animal hides"))
            a.addToSpecializations(new Specialization(prefix: "TRCA", name: "Trunks and Cases"))
            a.addToSpecializations(new Specialization(prefix: "LETA", name: "Leather Apparel"))
            a.addToSpecializations(new Specialization(prefix: "SADL", name: "Saddlery"))
            a.addToSpecializations(new Specialization(prefix: "FUSA", name: "Furskin Apparel"))
            a.addToSpecializations(new Specialization(prefix: "????", name: "Miscellaneous"))
        industries.add(a= new Industry(prefix: "AP", name: "Animal Products"))
            a.addToSpecializations(new Specialization(prefix: "FSFI", name: "Fish Fillets"))
            a.addToSpecializations(new Specialization(prefix: "MOLK", name: "Mollusks"))
            a.addToSpecializations(new Specialization(prefix: "NFFF", name: "Non-Fillet Frozen Fish"))
            a.addToSpecializations(new Specialization(prefix: "ANOR", name: "Animal Organs"))
            a.addToSpecializations(new Specialization(prefix: "CRTC", name: "Crustaceans"))
            a.addToSpecializations(new Specialization(prefix: "PLMT", name: "Poultry Meat"))
            a.addToSpecializations(new Specialization(prefix: "LVFS", name: "Live Fish"))
            a.addToSpecializations(new Specialization(prefix: "BFTS", name: "Bird Feathers and Skins"))
        industries.add(a= new Industry(prefix: "AA", name: "Arts and Antiques"))
        industries.add(a= new Industry(prefix: "CP", name: "Chemical Products"))
        industries.add(a= new Industry(prefix: "FO", name: "Foodstuffs"))
        industries.add(a= new Industry(prefix: "FH", name: "Footwear and Headgear"))
        industries.add(a= new Industry(prefix: "IN", name: "Instruments"))
        industries.add(a= new Industry(prefix: "MA", name: "Machines"))
        industries.add(a= new Industry(prefix: "ME", name: "Metals"))
        industries.add(a= new Industry(prefix: "MP", name: "Minimal Products"))
        industries.add(a= new Industry(prefix: "??", name: "Miscellaneous"))
        industries.add(a= new Industry(prefix: "PG", name: "Paper Goods"))
        industries.add(a= new Industry(prefix: "PR", name: "Plastic and Rubbers"))
        industries.add(a= new Industry(prefix: "PM", name: "Precious Metals"))
        industries.add(a= new Industry(prefix: "SG", name: "Stone and Glass"))
        industries.add(a= new Industry(prefix: "TX", name: "Textiles"))
        industries.add(a= new Industry(prefix: "TP", name: "Transportation"))
        industries.add(a= new Industry(prefix: "VP", name: "Vegetable Product"))
        industries.add(a= new Industry(prefix: "WE", name: "Weapons"))
        industries.add(a= new Industry(prefix: "WP", name: "Wood Products"))

        industries.each {
            it.save(flush: true, failOnError: true)
            it.specializations.each{it.save(flush: true, failOnError: true)}
        }

    }
}
