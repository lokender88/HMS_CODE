<%-- 
    Document   : PatientRegistration
    Created on : Jul 10, 2013, 10:33:16 AM
    Author     : Lokendar Reddy Pullagurla
--%>
<%@page import="com.shms.dbmodel.Doctordetails"%>
<%@page import="info.common.IdGeneratorFunctions"%>
<%@page import="java.util.Date"%>
<%@page import="com.shms.dbmodel.Userdetails"%>
<%@page import="info.common.UserTypes"%>
<%@page import="info.common.CommonDBConnection"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%

    String userFirstName = request.getParameter("userfirstname");
    String userLastName = request.getParameter("userlastname");
    String userAge = request.getParameter("userage");
    String userSex = request.getParameter("usersex");
    String userMobileNo = request.getParameter("usermobileno");
    String userJoiningDate = request.getParameter("userjoiningdate");
    String userDesignation = request.getParameter("userdesignation");
    String userAddress = request.getParameter("useraddress");

    Session hsession = null;
    Transaction tx = null;
    try {
        hsession = CommonDBConnection.getSessionFactory().getCurrentSession();
        if (hsession != null && hsession.isOpen()) {
            tx = hsession.beginTransaction();
            if(userDesignation != null && !userDesignation.equals(UserTypes.DOCTOR)){
                Userdetails userDetailsObj = new Userdetails();
                
                userDetailsObj.setUserDetailsFirstName(userFirstName);
                userDetailsObj.setUserDetailsLastName(userLastName);
                userDetailsObj.setUserDetailsAge(Integer.valueOf(userAge));
                userDetailsObj.setUserDetailsSex(userSex);
                userDetailsObj.setUserDetailsContactNumber(Long.valueOf(userMobileNo));
                userDetailsObj.setUserDetailsDateOfJoining(new Date(userJoiningDate));
                userDetailsObj.setUserDetailsDesignation(userDesignation);
                userDetailsObj.setUserDetailsAddress(userAddress);
                String str_userId = IdGeneratorFunctions.getNewUserDetailsId(hsession);
                userDetailsObj.setIdUserDetails(str_userId);
                userDetailsObj.setUserDetailsPassword(str_userId);
                hsession.save(userDetailsObj);
                tx.commit();
                
                response.sendRedirect("Admin_UserCreationForm.jsp");
            }else{
               Doctordetails doctorDetailsObj = new Doctordetails();
               doctorDetailsObj.setDoctorDetailsFirstName(userFirstName);
               doctorDetailsObj.setDoctorDetailsLastName(userLastName);
               doctorDetailsObj.setDoctorDetailsAge(Integer.valueOf(userAge));
               doctorDetailsObj.setDoctorDetailsSex(userFirstName);
 
               doctorDetailsObj.setDoctorDetailsContactNumber(Long.valueOf(userMobileNo));
               doctorDetailsObj.setDoctorDetailsDateOfJoining(new Date(userJoiningDate));
               doctorDetailsObj.setDoctorDetailsDesignation(userDesignation);
               doctorDetailsObj.setDoctorDetailsAddress(userAddress);
               
               if(request.getParameter("maxvisitspermonth") != null){
                       doctorDetailsObj.setDoctorDetailsMaxVisits(Integer.valueOf(request.getParameter("maxvisitspermonth")));
               }
               if(request.getParameter("noofdaysvalid") != null){
               doctorDetailsObj.setDoctorDetailsNoOfDaysValid(Integer.valueOf(request.getParameter("noofdaysvalid")));
               }
               if(request.getParameter("doctorspecialization") != null){
               doctorDetailsObj.setDoctorDetailsSpecialization(request.getParameter("doctorspecialization"));
               }
               if(request.getParameter("doctorqualification") != null){
               doctorDetailsObj.setDoctorDetailsQualification(request.getParameter("doctorqualification"));
               }
               
               String str_userId = IdGeneratorFunctions.getNewUserDetailsId(hsession);
               doctorDetailsObj.setIdDoctorDetails(str_userId);
               doctorDetailsObj.setDoctorDetailsPassword(str_userId);
               hsession.save(doctorDetailsObj);
                tx.commit();
                
                response.sendRedirect("Admin_UserCreationForm.jsp");
                
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
        tx.rollback();
        session.setAttribute("session_loginmessage", "Cannot establish connection with DB");
        response.sendRedirect("index.jsp");
    } finally {
        if (hsession != null && hsession.isOpen()){
            try {
                hsession.close();
            } catch (Exception e){
                
            }
            out.close();
        }
    }


%>