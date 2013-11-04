package com.shms.dbmodel;
// Generated Oct 30, 2013 8:55:14 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Patientregistration generated by hbm2java
 */
public class Patientregistration  implements java.io.Serializable {


     private String idPatientRegistration;
     private Userdetails userdetails;
     private String patientRegistrationFirstName;
     private String patientRegistrationLastName;
     private Integer patientRegistrationAge;
     private String patientRegistrationSex;
     private String patientRegistrationDoorNumber;
     private String patientRegistrationStreet;
     private String patientRegistrationCityOrTwon;
     private Long patientRegistrationContactNumber;
     private String patientRegistrationRelativeName;
     private String patientRegistrationRelationship;
     private Long patientRegistrationRelativeContactNumber;
     private String patientRegistrationReferralDoctorName;
     private Date patientRegistrationRegistrationDateAndTime;
     private Set opconsultanttransfordetailses = new HashSet(0);
     private Set ipregistrationdetailses = new HashSet(0);
     private Set outpatientregistrations = new HashSet(0);
     private Set oppaymenttracks = new HashSet(0);

    public Patientregistration() {
    }

	
    public Patientregistration(String idPatientRegistration) {
        this.idPatientRegistration = idPatientRegistration;
    }
    public Patientregistration(String idPatientRegistration, Userdetails userdetails, String patientRegistrationFirstName, String patientRegistrationLastName, Integer patientRegistrationAge, String patientRegistrationSex, String patientRegistrationDoorNumber, String patientRegistrationStreet, String patientRegistrationCityOrTwon, Long patientRegistrationContactNumber, String patientRegistrationRelativeName, String patientRegistrationRelationship, Long patientRegistrationRelativeContactNumber, String patientRegistrationReferralDoctorName, Date patientRegistrationRegistrationDateAndTime, Set opconsultanttransfordetailses, Set ipregistrationdetailses, Set outpatientregistrations, Set oppaymenttracks) {
       this.idPatientRegistration = idPatientRegistration;
       this.userdetails = userdetails;
       this.patientRegistrationFirstName = patientRegistrationFirstName;
       this.patientRegistrationLastName = patientRegistrationLastName;
       this.patientRegistrationAge = patientRegistrationAge;
       this.patientRegistrationSex = patientRegistrationSex;
       this.patientRegistrationDoorNumber = patientRegistrationDoorNumber;
       this.patientRegistrationStreet = patientRegistrationStreet;
       this.patientRegistrationCityOrTwon = patientRegistrationCityOrTwon;
       this.patientRegistrationContactNumber = patientRegistrationContactNumber;
       this.patientRegistrationRelativeName = patientRegistrationRelativeName;
       this.patientRegistrationRelationship = patientRegistrationRelationship;
       this.patientRegistrationRelativeContactNumber = patientRegistrationRelativeContactNumber;
       this.patientRegistrationReferralDoctorName = patientRegistrationReferralDoctorName;
       this.patientRegistrationRegistrationDateAndTime = patientRegistrationRegistrationDateAndTime;
       this.opconsultanttransfordetailses = opconsultanttransfordetailses;
       this.ipregistrationdetailses = ipregistrationdetailses;
       this.outpatientregistrations = outpatientregistrations;
       this.oppaymenttracks = oppaymenttracks;
    }
   
    public String getIdPatientRegistration() {
        return this.idPatientRegistration;
    }
    
    public void setIdPatientRegistration(String idPatientRegistration) {
        this.idPatientRegistration = idPatientRegistration;
    }
    public Userdetails getUserdetails() {
        return this.userdetails;
    }
    
    public void setUserdetails(Userdetails userdetails) {
        this.userdetails = userdetails;
    }
    public String getPatientRegistrationFirstName() {
        return this.patientRegistrationFirstName;
    }
    
    public void setPatientRegistrationFirstName(String patientRegistrationFirstName) {
        this.patientRegistrationFirstName = patientRegistrationFirstName;
    }
    public String getPatientRegistrationLastName() {
        return this.patientRegistrationLastName;
    }
    
    public void setPatientRegistrationLastName(String patientRegistrationLastName) {
        this.patientRegistrationLastName = patientRegistrationLastName;
    }
    public Integer getPatientRegistrationAge() {
        return this.patientRegistrationAge;
    }
    
    public void setPatientRegistrationAge(Integer patientRegistrationAge) {
        this.patientRegistrationAge = patientRegistrationAge;
    }
    public String getPatientRegistrationSex() {
        return this.patientRegistrationSex;
    }
    
    public void setPatientRegistrationSex(String patientRegistrationSex) {
        this.patientRegistrationSex = patientRegistrationSex;
    }
    public String getPatientRegistrationDoorNumber() {
        return this.patientRegistrationDoorNumber;
    }
    
    public void setPatientRegistrationDoorNumber(String patientRegistrationDoorNumber) {
        this.patientRegistrationDoorNumber = patientRegistrationDoorNumber;
    }
    public String getPatientRegistrationStreet() {
        return this.patientRegistrationStreet;
    }
    
    public void setPatientRegistrationStreet(String patientRegistrationStreet) {
        this.patientRegistrationStreet = patientRegistrationStreet;
    }
    public String getPatientRegistrationCityOrTwon() {
        return this.patientRegistrationCityOrTwon;
    }
    
    public void setPatientRegistrationCityOrTwon(String patientRegistrationCityOrTwon) {
        this.patientRegistrationCityOrTwon = patientRegistrationCityOrTwon;
    }
    public Long getPatientRegistrationContactNumber() {
        return this.patientRegistrationContactNumber;
    }
    
    public void setPatientRegistrationContactNumber(Long patientRegistrationContactNumber) {
        this.patientRegistrationContactNumber = patientRegistrationContactNumber;
    }
    public String getPatientRegistrationRelativeName() {
        return this.patientRegistrationRelativeName;
    }
    
    public void setPatientRegistrationRelativeName(String patientRegistrationRelativeName) {
        this.patientRegistrationRelativeName = patientRegistrationRelativeName;
    }
    public String getPatientRegistrationRelationship() {
        return this.patientRegistrationRelationship;
    }
    
    public void setPatientRegistrationRelationship(String patientRegistrationRelationship) {
        this.patientRegistrationRelationship = patientRegistrationRelationship;
    }
    public Long getPatientRegistrationRelativeContactNumber() {
        return this.patientRegistrationRelativeContactNumber;
    }
    
    public void setPatientRegistrationRelativeContactNumber(Long patientRegistrationRelativeContactNumber) {
        this.patientRegistrationRelativeContactNumber = patientRegistrationRelativeContactNumber;
    }
    public String getPatientRegistrationReferralDoctorName() {
        return this.patientRegistrationReferralDoctorName;
    }
    
    public void setPatientRegistrationReferralDoctorName(String patientRegistrationReferralDoctorName) {
        this.patientRegistrationReferralDoctorName = patientRegistrationReferralDoctorName;
    }
    public Date getPatientRegistrationRegistrationDateAndTime() {
        return this.patientRegistrationRegistrationDateAndTime;
    }
    
    public void setPatientRegistrationRegistrationDateAndTime(Date patientRegistrationRegistrationDateAndTime) {
        this.patientRegistrationRegistrationDateAndTime = patientRegistrationRegistrationDateAndTime;
    }
    public Set getOpconsultanttransfordetailses() {
        return this.opconsultanttransfordetailses;
    }
    
    public void setOpconsultanttransfordetailses(Set opconsultanttransfordetailses) {
        this.opconsultanttransfordetailses = opconsultanttransfordetailses;
    }
    public Set getIpregistrationdetailses() {
        return this.ipregistrationdetailses;
    }
    
    public void setIpregistrationdetailses(Set ipregistrationdetailses) {
        this.ipregistrationdetailses = ipregistrationdetailses;
    }
    public Set getOutpatientregistrations() {
        return this.outpatientregistrations;
    }
    
    public void setOutpatientregistrations(Set outpatientregistrations) {
        this.outpatientregistrations = outpatientregistrations;
    }
    public Set getOppaymenttracks() {
        return this.oppaymenttracks;
    }
    
    public void setOppaymenttracks(Set oppaymenttracks) {
        this.oppaymenttracks = oppaymenttracks;
    }




}

