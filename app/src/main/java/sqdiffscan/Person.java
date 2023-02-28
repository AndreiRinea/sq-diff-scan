package sqdiffscan;

import java.io.Serializable;

public class Person implements Serializable {
    private Address address;

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}
