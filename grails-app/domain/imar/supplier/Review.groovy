package imar.supplier

class Review {
    String tag
    double value;
    String problemDescription;
    boolean resolved;

    static constraints = {
    }

    @Override
    String toString(){
        return tag
    }
}
