/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

/**
 *
 * @author shubham
 */
public class Userdetails {

    static private String name;
    static private String email;
    static private String activity;

    public static void setEmail(String em) {
        email = em;
    }

    public static String getEmail() {
        return email;
    }

    public static void setActivity(String ac) {
        activity = ac;
    }

    public static String getActivity() {
        return activity;
    }
    

    static public void setName(String na) {
        name = na;
    }

    static public String getName() {
        return name;
    }

}
