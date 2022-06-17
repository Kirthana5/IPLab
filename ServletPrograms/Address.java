/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPrograms;

/**
 *
 * @author Kirthana Balasubramanian
 */
public class Address {
    String firstname,designation, address1, address2, City, State,emailid;

    public Address(String firstname, String designation, String address1, String address2, String City, String State, String emailid) {
        this.firstname = firstname;
        this.designation = designation;
        this.address1 = address1;
        this.address2 = address2;
        this.City = City;
        this.State = State;
        this.emailid = emailid;
    }
    
}
