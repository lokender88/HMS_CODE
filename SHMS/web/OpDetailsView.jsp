<%-- 
    Document   : OpDetailsView
    Created on : 7 Nov, 2013, 1:53:42 PM
    Author     : Satyaprasad
--%>

<%@page import="java.util.Calendar"%>
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.Date"%>
<%@page import="com.shms.dbmodel.Patientregistration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="info.common.CommonDBConnection"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  // Getting result from jsp
    String str_result = request.getParameter("result");
  Session hsession = null;
    Transaction tx = null;
    try {
        hsession = CommonDBConnection.getSessionFactory().getCurrentSession();
        if (hsession != null && hsession.isOpen()) {
            %>
            <div style="">
                <table style="" border="0" width="100%">
                    <thead style="background-color: #67b086;color: #000">
                        <tr>
                            <th style="width:15px;border: 1px solid darkcyan">&nbsp;</th>
                            <th style="width:25px;border: 1px solid darkcyan">SNo</th>
                            <th style="width:95px;border: 1px solid darkcyan">Registration No</th>
                            <th style="width:170px;border: 1px solid darkcyan">Patient Name</th>
                            <th style="width:25px;border: 1px solid darkcyan">Sex</th>
                            <th style="width:25px;border: 1px solid darkcyan">Age</th>
                            <th style="width:105px;border: 1px solid darkcyan">City/Town</th>
                            <th style="border: 1px solid darkcyan">Action</th>
                        </tr>
                    </thead>
                </table>
            </div>


            <%
            tx = hsession.beginTransaction();
            // Creating Date objects
            Date today = new Date();
            Date lastSeventhDay = new Date();   
            lastSeventhDay.setTime(today.getTime() - 6 * 24 * 60 * 60 * 1000);
            lastSeventhDay.setHours(0);
            lastSeventhDay.setMinutes(0);
            lastSeventhDay.setSeconds(0);
            
            String str_query = null;
            if(str_result.equalsIgnoreCase("registration")){
                str_query = "from Patientregistration where patientRegistrationRegistrationDateAndTime > :param order by patientRegistrationRegistrationDateAndTime desc";
            }
            Query query = hsession.createQuery(str_query);
            query.setParameter("param",lastSeventhDay );
            List list = query.list();
                if (list != null && !list.isEmpty()) {
                    Iterator it_list = list.iterator();
                    String str_regNo = null;
                    String str_patientName = null;
                    String str_sex = null;
                    String str_age = null;
                    String str_cityortown = null;
                    
                    %>
                            <div style="height:135px;overflow-y: auto">
                                <table style="" border="0" width="100%">
                                    <tbody>
                                        <%
                                            int i = 1;
                                            while (it_list.hasNext()) {
                                                Patientregistration patientregistration = (Patientregistration)it_list.next();
                                                str_regNo = patientregistration.getIdPatientRegistration();
                                                str_patientName = patientregistration.getPatientRegistrationFirstName();
                                                str_sex = patientregistration.getPatientRegistrationSex();
                                                str_age = patientregistration.getPatientRegistrationAge().toString();
                                                str_cityortown = patientregistration.getPatientRegistrationCityOrTwon();
                                        %>
                                        <tr style='background-color: <%=(i % 2 == 0) ? "#333" : "#555"%>'>
                                            <td style="width:15px;border: 1px solid darkcyan" align="center"><div style="border:1px solid #aaa;background-color: #fff;width: 6px;height: 6px"></div></td>
                                            <td style="width:25px;border: 1px solid darkcyan"><%=i%></td>
                                            <td style="width:95px;border: 1px solid darkcyan"><%=str_regNo%></td>
                                            <td style="width:170px;border: 1px solid darkcyan"><%=str_patientName%></td>
                                            <td style="width:25px;border: 1px solid darkcyan"><%=str_sex%></td>
                                            <td style="width:25px;border: 1px solid darkcyan"><%=str_age%></td>
                                            <td style="width:105px;border: 1px solid darkcyan;"><%=str_cityortown%></td>
                                            <td style="border: 1px solid darkcyan">Action</td>
                                        </tr>
                                        <%
                                                i++;
                                            }
                                        %>
                                    </tbody>
                                </table>

                            </div>
                    <%
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