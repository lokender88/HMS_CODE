package com.shms.dbmodel;
// Generated Oct 30, 2013 8:55:14 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Ipconstranfordetails generated by hbm2java
 */
public class Ipconstranfordetails  implements java.io.Serializable {


     private Long idIpconsTranforDetails;
     private Ipregistrationdetails ipregistrationdetails;
     private Userdetails userdetails;
     private Doctordetails doctordetailsByIpconsTranforDetailsNewConsultantId;
     private Doctordetails doctordetailsByIpconsTranforDetailsPrevConsultantId;
     private String ipconsTranforDetailPatientRegistrationId;
     private Date ipconsTranforDetailsPrevConsDateAndTime;
     private Date ipconsTranforDetailsNewConsDateAndTime;

    public Ipconstranfordetails() {
    }

    public Ipconstranfordetails(Ipregistrationdetails ipregistrationdetails, Userdetails userdetails, Doctordetails doctordetailsByIpconsTranforDetailsNewConsultantId, Doctordetails doctordetailsByIpconsTranforDetailsPrevConsultantId, String ipconsTranforDetailPatientRegistrationId, Date ipconsTranforDetailsPrevConsDateAndTime, Date ipconsTranforDetailsNewConsDateAndTime) {
       this.ipregistrationdetails = ipregistrationdetails;
       this.userdetails = userdetails;
       this.doctordetailsByIpconsTranforDetailsNewConsultantId = doctordetailsByIpconsTranforDetailsNewConsultantId;
       this.doctordetailsByIpconsTranforDetailsPrevConsultantId = doctordetailsByIpconsTranforDetailsPrevConsultantId;
       this.ipconsTranforDetailPatientRegistrationId = ipconsTranforDetailPatientRegistrationId;
       this.ipconsTranforDetailsPrevConsDateAndTime = ipconsTranforDetailsPrevConsDateAndTime;
       this.ipconsTranforDetailsNewConsDateAndTime = ipconsTranforDetailsNewConsDateAndTime;
    }
   
    public Long getIdIpconsTranforDetails() {
        return this.idIpconsTranforDetails;
    }
    
    public void setIdIpconsTranforDetails(Long idIpconsTranforDetails) {
        this.idIpconsTranforDetails = idIpconsTranforDetails;
    }
    public Ipregistrationdetails getIpregistrationdetails() {
        return this.ipregistrationdetails;
    }
    
    public void setIpregistrationdetails(Ipregistrationdetails ipregistrationdetails) {
        this.ipregistrationdetails = ipregistrationdetails;
    }
    public Userdetails getUserdetails() {
        return this.userdetails;
    }
    
    public void setUserdetails(Userdetails userdetails) {
        this.userdetails = userdetails;
    }
    public Doctordetails getDoctordetailsByIpconsTranforDetailsNewConsultantId() {
        return this.doctordetailsByIpconsTranforDetailsNewConsultantId;
    }
    
    public void setDoctordetailsByIpconsTranforDetailsNewConsultantId(Doctordetails doctordetailsByIpconsTranforDetailsNewConsultantId) {
        this.doctordetailsByIpconsTranforDetailsNewConsultantId = doctordetailsByIpconsTranforDetailsNewConsultantId;
    }
    public Doctordetails getDoctordetailsByIpconsTranforDetailsPrevConsultantId() {
        return this.doctordetailsByIpconsTranforDetailsPrevConsultantId;
    }
    
    public void setDoctordetailsByIpconsTranforDetailsPrevConsultantId(Doctordetails doctordetailsByIpconsTranforDetailsPrevConsultantId) {
        this.doctordetailsByIpconsTranforDetailsPrevConsultantId = doctordetailsByIpconsTranforDetailsPrevConsultantId;
    }
    public String getIpconsTranforDetailPatientRegistrationId() {
        return this.ipconsTranforDetailPatientRegistrationId;
    }
    
    public void setIpconsTranforDetailPatientRegistrationId(String ipconsTranforDetailPatientRegistrationId) {
        this.ipconsTranforDetailPatientRegistrationId = ipconsTranforDetailPatientRegistrationId;
    }
    public Date getIpconsTranforDetailsPrevConsDateAndTime() {
        return this.ipconsTranforDetailsPrevConsDateAndTime;
    }
    
    public void setIpconsTranforDetailsPrevConsDateAndTime(Date ipconsTranforDetailsPrevConsDateAndTime) {
        this.ipconsTranforDetailsPrevConsDateAndTime = ipconsTranforDetailsPrevConsDateAndTime;
    }
    public Date getIpconsTranforDetailsNewConsDateAndTime() {
        return this.ipconsTranforDetailsNewConsDateAndTime;
    }
    
    public void setIpconsTranforDetailsNewConsDateAndTime(Date ipconsTranforDetailsNewConsDateAndTime) {
        this.ipconsTranforDetailsNewConsDateAndTime = ipconsTranforDetailsNewConsDateAndTime;
    }




}

