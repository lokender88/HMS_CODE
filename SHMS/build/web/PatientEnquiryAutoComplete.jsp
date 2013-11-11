<%-- 
    Document   : PatientEnquiryAutoComplete
    Created on : 10 Nov, 2013, 5:08:57 PM
    Author     : Satyaprasad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
    String countries[] = {
    "Afghanistan",
    "Albania",
    "Zambia",
    "Zimbabwe"
    };
    String query = (String)request.getParameter("patientfirstname1");
    System.out.println("1"+request.getParameterNames().nextElement());
    response.setHeader("Content-Type", "text/html");
    for(int i=0;i<countries.length;i++)
    {
    if(countries[i].toUpperCase().startsWith(query.toUpperCase()))
    out.print(countries[i]+"\n");
    //System.out.print(countries[i]+"\n");
    }
    %>