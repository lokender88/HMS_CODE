<%@page import="java.math.BigDecimal"%>
<%@page import="java.lang.Integer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>.::Sravani Hospital::.</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="Styles/stylesheet.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="Scripts/scripts.js"></script>
        <script type="text/javascript" src="Scripts/DatePicker.js"></script>
    </head>

    <body>
        <%
            String session_userId = (String) session.getAttribute("session_userId");
            String session_userFirstName = (String) session.getAttribute("session_userFirstName");
            String session_userLastName = (String) session.getAttribute("session_userLastName");
            String session_userDesignation = (String) session.getAttribute("session_userDesignation");
        %>
        <div id="header">
            <div id="title"><img src="images/sravani_logo_title.png" /></div>
            <div style="margin-left: -40px" >

                <ul id="menu">
                    <li><a href="index.jsp" accesskey="1" title="">Home</a></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
                <%
                    if(session_userId != null && !session_userId.equals("")){
                %>
                <div style="float:right;">
                    <table>
                        <tr>
                            <td align="left" style="color: midnightblue">
                                Welcome &nbsp;&nbsp;
                            </td>
                            <td style="color: navy">
                                <%=session_userFirstName%>&nbsp;<%=session_userLastName%>,
                            </td>
                            <td align="right" width="50px" >
                                <a href="LogoutAuthentication" style="color: darkmagenta;font-weight: bold">Logout</a>
                            </td>
                        </tr>
                    </table>

                </div>
               <%}%>
            </div>
        </div>