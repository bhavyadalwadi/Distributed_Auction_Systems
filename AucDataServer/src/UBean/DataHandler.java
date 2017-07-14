/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UBean;

import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.ArrayList;

/**
 *
 * @author Abhishek
 */
public interface DataHandler extends Remote{
    public int executeUpdate(String sql) throws RemoteException;
    public ArrayList execute(String sql) throws RemoteException;
    public ArrayList verifyUser(String s1,String s2) throws RemoteException;
    public ArrayList searchItem(String s1,String s2,String s3) throws RemoteException;
    public ArrayList getItems(String s1) throws RemoteException;
    public ArrayList getHosted(String s1) throws RemoteException;
    public ArrayList getItemDetails(String s1) throws RemoteException;
    public ArrayList getUserDetails(String s1) throws RemoteException;
    public boolean putBid(String s1,String s2,String s3,long l) throws RemoteException;
}
