package com.shms.dbmodel;
// Generated Oct 30, 2013 8:55:14 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Roomtypelist generated by hbm2java
 */
public class Roomtypelist  implements java.io.Serializable {


     private Long idRoomTypeList;
     private String roomTypeListNameOfType;
     private String roomTypeListFloorNumber;
     private String roomTypeListRoomNumber;
     private Long roomTypeListNoOfBeds;
     private Set iproomtrackdetailses = new HashSet(0);
     private Set roomwisebedstatusdetailses = new HashSet(0);
     private Set doctorconsultationpreferenceses = new HashSet(0);

    public Roomtypelist() {
    }

    public Roomtypelist(String roomTypeListNameOfType, String roomTypeListFloorNumber, String roomTypeListRoomNumber, Long roomTypeListNoOfBeds, Set iproomtrackdetailses, Set roomwisebedstatusdetailses, Set doctorconsultationpreferenceses) {
       this.roomTypeListNameOfType = roomTypeListNameOfType;
       this.roomTypeListFloorNumber = roomTypeListFloorNumber;
       this.roomTypeListRoomNumber = roomTypeListRoomNumber;
       this.roomTypeListNoOfBeds = roomTypeListNoOfBeds;
       this.iproomtrackdetailses = iproomtrackdetailses;
       this.roomwisebedstatusdetailses = roomwisebedstatusdetailses;
       this.doctorconsultationpreferenceses = doctorconsultationpreferenceses;
    }
   
    public Long getIdRoomTypeList() {
        return this.idRoomTypeList;
    }
    
    public void setIdRoomTypeList(Long idRoomTypeList) {
        this.idRoomTypeList = idRoomTypeList;
    }
    public String getRoomTypeListNameOfType() {
        return this.roomTypeListNameOfType;
    }
    
    public void setRoomTypeListNameOfType(String roomTypeListNameOfType) {
        this.roomTypeListNameOfType = roomTypeListNameOfType;
    }
    public String getRoomTypeListFloorNumber() {
        return this.roomTypeListFloorNumber;
    }
    
    public void setRoomTypeListFloorNumber(String roomTypeListFloorNumber) {
        this.roomTypeListFloorNumber = roomTypeListFloorNumber;
    }
    public String getRoomTypeListRoomNumber() {
        return this.roomTypeListRoomNumber;
    }
    
    public void setRoomTypeListRoomNumber(String roomTypeListRoomNumber) {
        this.roomTypeListRoomNumber = roomTypeListRoomNumber;
    }
    public Long getRoomTypeListNoOfBeds() {
        return this.roomTypeListNoOfBeds;
    }
    
    public void setRoomTypeListNoOfBeds(Long roomTypeListNoOfBeds) {
        this.roomTypeListNoOfBeds = roomTypeListNoOfBeds;
    }
    public Set getIproomtrackdetailses() {
        return this.iproomtrackdetailses;
    }
    
    public void setIproomtrackdetailses(Set iproomtrackdetailses) {
        this.iproomtrackdetailses = iproomtrackdetailses;
    }
    public Set getRoomwisebedstatusdetailses() {
        return this.roomwisebedstatusdetailses;
    }
    
    public void setRoomwisebedstatusdetailses(Set roomwisebedstatusdetailses) {
        this.roomwisebedstatusdetailses = roomwisebedstatusdetailses;
    }
    public Set getDoctorconsultationpreferenceses() {
        return this.doctorconsultationpreferenceses;
    }
    
    public void setDoctorconsultationpreferenceses(Set doctorconsultationpreferenceses) {
        this.doctorconsultationpreferenceses = doctorconsultationpreferenceses;
    }




}

