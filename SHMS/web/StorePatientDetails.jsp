<%-- 
    Document   : StorePatientDetails
    Created on : 5 Nov, 2013, 12:26:24 PM
    Author     : Satyaprasad
--%>

<%@page import="com.shms.dbmodel.Userdetails"%>
<%@page import="java.util.Date"%>
<%@page import="com.shms.dbmodel.Patientregistration"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="info.common.CommonDBConnection"%>
<%@page import="org.hibernate.Session"%>
<%@page import="info.common.IdGeneratorFunctions"%>
<%
// Getting form details from Patient Registration
    String str_patientfirstname = "";
    String str_patientlastname = "";
    String str_patientage = "";
    Integer int_patientage = null;
    String str_patientsex = "";
    String str_patientdoorno  = "";
    String str_patientstreet  = "";
    String str_patientcitytown  = "";
    String str_patientphoneno  = "";
    Long long_patientphoneno = null;
    String str_patientrelativename  = ""; 
    String str_patientrelation  = "";
    String str_patientcontactno  = "";
    Long long_patientcontactno = null;
    String str_patientreferraldoctor  = "";
    
    if(request.getParameter("patientfirstname")!=null&&request.getParameter("patientfirstname")!=""){
        str_patientfirstname = request.getParameter("patientfirstname");
    }
    
    if(request.getParameter("patientlastname")!=null&&request.getParameter("patientlastname")!=""){
        str_patientlastname = request.getParameter("patientlastname");
    }
    
    if(request.getParameter("patientage")!=null&&request.getParameter("patientage")!=""){
        str_patientage = request.getParameter("patientage");
        int_patientage = Integer.valueOf(str_patientage);
    }
    
    if(request.getParameter("patientsex")!=null&&request.getParameter("patientsex")!=""){
        str_patientsex = request.getParameter("patientsex");
    }
    
    if(request.getParameter("patientdoorno")!=null&&request.getParameter("patientdoorno")!=""){
        str_patientdoorno = request.getParameter("patientdoorno");
    }
    
    if(request.getParameter("patientstreet")!=null&&request.getParameter("patientstreet")!=""){
        str_patientstreet = request.getParameter("patientstreet");
    }
    
    if(request.getParameter("patientcitytown")!=null&&request.getParameter("patientcitytown")!=""){
        str_patientcitytown = request.getParameter("patientcitytown");
    }
    
    if(request.getParameter("patientphoneno")!=null&&request.getParameter("patientphoneno")!=""){
        str_patientphoneno = request.getParameter("patientphoneno");
        long_patientphoneno = Long.valueOf(str_patientphoneno);
    }
    
    if(request.getParameter("patientrelativename")!=null&&request.getParameter("patientrelativename")!=""){
        str_patientrelativename = request.getParameter("patientrelativename");
    }
    
    if(request.getParameter("patientrelation")!=null&&request.getParameter("patientrelation")!=""){
        str_patientrelation = request.getParameter("patientrelation");
    }
    
    if(request.getParameter("patientcontactno")!=null&&request.getParameter("patientcontactno")!=""){
        str_patientcontactno = request.getParameter("patientcontactno");
        long_patientcontactno = Long.valueOf(str_patientcontactno);
    }
    
    if(request.getParameter("patientreferraldoctor")!=null&&request.getParameter("patientreferraldoctor")!=""){
        str_patientreferraldoctor = request.getParameter("patientreferraldoctor");
    }
    
    
    // Getting Login User Id
    String str_loginUserId = "";
    if(session.getAttribute("session_userId")!=null){
        str_loginUserId = (String)session.getAttribute("session_userId");
    }
    Session hsession = null;
    Transaction tx = null;
    try {
        hsession = CommonDBConnection.getSessionFactory().getCurrentSession();
        if (hsession != null && hsession.isOpen()) {
            tx = hsession.beginTransaction();
            String str_newPatientRegistrationId = IdGeneratorFunctions.getNewPatientRegistrationId(hsession);
            Patientregistration patientregistrationObj = new Patientregistration();
            patientregistrationObj.setIdPatientRegistration(str_newPatientRegistrationId);
            patientregistrationObj.setPatientRegistrationFirstName(str_patientfirstname);
            patientregistrationObj.setPatientRegistrationLastName(str_patientlastname);
            patientregistrationObj.setPatientRegistrationAge(int_patientage);
            patientregistrationObj.setPatientRegistrationSex(str_patientsex);
            patientregistrationObj.setPatientRegistrationDoorNumber(str_patientdoorno);
            patientregistrationObj.setPatientRegistrationStreet(str_patientstreet);
            patientregistrationObj.setPatientRegistrationCityOrTwon(str_patientcitytown);
            patientregistrationObj.setPatientRegistrationContactNumber(long_patientphoneno);
            patientregistrationObj.setPatientRegistrationRelativeName(str_patientrelativename);
            patientregistrationObj.setPatientRegistrationRelationship(str_patientrelation);
            patientregistrationObj.setPatientRegistrationRelativeContactNumber(long_patientcontactno);
            patientregistrationObj.setPatientRegistrationReferralDoctorName(str_patientreferraldoctor);
            patientregistrationObj.setPatientRegistrationRegistrationDateAndTime(new Date());
            Userdetails userdetailsObj = new Userdetails();
            userdetailsObj.setIdUserDetails(str_loginUserId);
            patientregistrationObj.setUserdetails(userdetailsObj);
            
            hsession.save(patientregistrationObj);
            tx.commit();
                
            response.sendRedirect("PatientRegistration.jsp");
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