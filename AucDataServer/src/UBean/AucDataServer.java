package UBean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.rmi.RMISecurityManager;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

/**
 *
 * @author Abhishek
 */
public class AucDataServer {

    /**
     * @param args the command line arguments
     */
    static Registry reg;
    public static void main(String[] args) {
        
        try {
                           //System.setProperty("java.rmi.server.hostname","rmi://localhost");
                           //System.setProperty("java.rmi.server.codebase","file:/D:/AucDataServer/build/classes/UBean");
                           System.setProperty("java.security.policy","file:/D:/AucDataServer/src/UBean/security.policy");
			   System.setSecurityManager(new RMISecurityManager());
 
			   DataAccess da = new DataAccess();
                           DataHandler dh=(DataHandler)UnicastRemoteObject.exportObject(da,0);
                           
                           reg=LocateRegistry.createRegistry(1099);
                           reg.rebind("Data", dh);
			   //Naming.bind("rmi://localhost/Hello", Hello1);
                           System.out.println("Data Server is ready.");
			   }catch (Exception e) {
				   System.out.println("Data Server failed: " + e);
				}
    }
    
}
