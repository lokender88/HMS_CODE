/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.common;

import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author lpullagurla
 */
public class IdGeneratorFunctions {
    
    
    public static String getNewUserDetailsId(Session hsession){
      String str_newUserId = "SH1000";
      if(hsession != null && hsession.isOpen())  {
          
          List userDetailsList = hsession.createSQLQuery("select Max(idUserDetails) from Userdetails").list();
          if(userDetailsList != null && !userDetailsList.isEmpty()){
             String str_existedUserId = (String)userDetailsList.get(0);
             int int_userId = Integer.parseInt(str_existedUserId.substring(2,str_existedUserId.length()));
             int_userId +=1;
             str_newUserId = "SH"+int_userId;
          }else{
             str_newUserId = "SH1000";   
          }
          
      }
        return str_newUserId;
    }
    
    public static String getNewDoctorDetailsId(Session hsession){
        String str_newDoctorId = "SHD1000";
      if(hsession != null && hsession.isOpen())  {
          
          List userDetailsList = hsession.createSQLQuery("select Max(idDoctorDetails) from Doctordetails").list();
          if(userDetailsList != null && !userDetailsList.isEmpty()){
             String str_existedUserId = (String)userDetailsList.get(0);
             int int_userId = Integer.parseInt(str_existedUserId.substring(2,str_existedUserId.length()));
             int_userId +=1;
             str_newDoctorId = "SHD"+int_userId;
          }else{
             str_newDoctorId = "SHD1000";   
          }
          
      }
        return str_newDoctorId;
    }
    
    public static String getNewPatientRegistrationId(Session hsession){
        
        
        return "";
    }
    
    public static String getNewInPatientRegistrationId(Session hsession){
        
        
        return "";
    }
    
    public static String getNewPharmacyPaymentId(Session hsession){
        
        
        return "";
    }
    
    public static String getNewLabPaymentId(Session hsession){
        
        
        return "";
    }
    
    
}
