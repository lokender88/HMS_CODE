/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.common;

import java.util.Calendar;
import java.util.HashMap;
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
        String str_newPatientRegistrationId = "";
        // Creating HashMap object to store days & alphabets
       HashMap hashMap = new HashMap();
       hashMap.put("1", "A0");
       hashMap.put("2", "B0");
       hashMap.put("3", "C0");
       hashMap.put("4", "D0");
       hashMap.put("5", "E0");
       hashMap.put("6", "F0");
       hashMap.put("7", "G0");
       hashMap.put("8", "H0");
       hashMap.put("9", "I0");
       hashMap.put("10", "J0");
       hashMap.put("11", "K0");
       hashMap.put("12", "L0");
       hashMap.put("13", "M0");
       hashMap.put("14", "N0");
       hashMap.put("15", "O0");
       hashMap.put("16", "P0");
       hashMap.put("17", "Q0");
       hashMap.put("18", "R0");
       hashMap.put("19", "S0");
       hashMap.put("20", "T0");
       hashMap.put("21", "U0");
       hashMap.put("22", "V0");
       hashMap.put("23", "W0");
       hashMap.put("24", "X0");
       hashMap.put("25", "Y0");
       hashMap.put("26", "Z0");
       hashMap.put("27", "A1");
       hashMap.put("28", "B1");
       hashMap.put("29", "C1");
       hashMap.put("30", "D1");
       hashMap.put("31", "E1");
       
       // Getting Current Day, Month, Year
        Calendar cal = Calendar.getInstance();
        String str_day = ""+cal.get(Calendar.DATE);
        String str_month = ""+(cal.get(Calendar.MONTH)+1);
        String str_year = ""+cal.get(Calendar.YEAR);
        str_year = str_year.substring(2);
        
        // Getting HashMap key value for day
        str_day = (String)hashMap.get(str_day);
        
        if(str_month.length()==1){
            str_month = "0"+str_month;
        }
        
        if(hsession != null && hsession.isOpen())  {
          String str_query = "select idPatientRegistration from Patientregistration where idPatientRegistration like '"+str_month+str_day+"%"+str_year+"' order by PatientRegistrationRegistrationDateAndTime DESC";
          //List patientDetailsList = hsession.createSQLQuery("select idPatientRegistration from Patientregistration").list();
          List patientDetailsList = hsession.createSQLQuery(str_query).list();
            System.out.println("SIZE:::"+patientDetailsList.size());
          if(patientDetailsList != null && !patientDetailsList.isEmpty()){
             String str_existedPatientId = (String)patientDetailsList.get(0);
             int int_existedPatientId = Integer.parseInt(str_existedPatientId.substring(4,7));
             int_existedPatientId++;
             String str_newPatientId = ""+int_existedPatientId;
             if(str_newPatientId.length()==1){
                 str_newPatientId = "00"+str_newPatientId;
             }else if(str_newPatientId.length()==2){
                 str_newPatientId = "0"+str_newPatientId;
             } 
              System.out.println("str_newPatientId: "+str_newPatientId); 
              // Setting new Patient Id
              str_newPatientRegistrationId = str_month+str_day+str_newPatientId+str_year;
          }else{
             str_newPatientRegistrationId = str_month+str_day+"001"+str_year;   
          }
        }
        return str_newPatientRegistrationId;
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
