<%-- 
    Document   : PatientRegistration
    Created on : Jul 10, 2013, 10:33:16 AM
    Author     : Lokendar Reddy Pullagurla
--%>
<%@include file="Header.jsp"%>
<div id="content">
    <div id="colOneAll" style="border: 1px solid #95BA2E">
        <div class="formheading"><h3>User Creation & Enquiry</h3></div>
        <div id="registrationform">
            <form action="Admin_UserCreationFormStore.jsp" name="Admin_UserCreationForm">
            <!--
            <table border="0">
                <tr>
                    <td class="td_labelName">User Type</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="radio" name="usertype" id="usertype" value="staff" checked=""/>Staff&nbsp;&nbsp;<input type="radio" name="usertype" id="usertype" value="doctor"/>Doctor</td>
                    <td class="td_labelName">&nbsp;</td><td>&nbsp;&nbsp;</td><td class="td_formfield">&nbsp;</td>
                    <td class="td_labelName">&nbsp;</td><td>&nbsp;&nbsp;</td><td class="td_formfield">&nbsp;</td>
                    <td class="td_labelName">&nbsp;</td><td>&nbsp;&nbsp;</td><td class="td_formfield">&nbsp;</td>
                </tr>
            </table>
           -->
            <table border="0" id="userformdetails_table_id">
                <tr>
                    <td class="td_labelName">First Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userfirstname" id="userfirstname"/></td>
                    <td class="td_labelName">Last Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userlastname" id="userlastname"/></td>
                    <td class="td_labelName">Age</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userage" id="userage"/></td>
                    <td class="td_labelName">Sex</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="radio" name="usersex" id="usersex" value="male"/>Male&nbsp;&nbsp;<input type="radio" name="usersex" id="usersex" value="female"/>Female</td>
                </tr>
                <tr>
                    <td class="td_labelName">Mobile No</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="usermobileno" id="usermobileno" /></td>
                    <td class="td_labelName">Joining Date</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userjoiningdate" id="userjoiningdate"/></td>
                    <td class="td_labelName">Designation</td><td>&nbsp;:&nbsp;</td>
                        <td class="td_formfield">
                            <select name="userdesignation" id="userdesignation">
                                <option value="Doctor" selected="">Doctor</option>
                                <option value="LabManager">Lab Manager</option>
                                <option value="LabAssistant">Lab Assistant</option>
                                <option value="Management">Management</option>
                                <option value="PharmacyManager">Pharmacy Manager</option>
                                <option value="PharmacyAssistant">Pharmacy Assistant</option>
                                <option value="Receptionist">Receptionist</option>
                            </select>
                        </td>
                    <td class="td_labelName">Address</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><textarea name="useraddress" id="useraddress" rows="2"></textarea></td>
                </tr>
                <tr id="doctordetails_tr">
                    <td class="td_labelName">Qualification</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="doctorqualification" id="doctorqualification" /></td>
                    <td class="td_labelName">Specialization</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="doctorspecialization" id="doctorspecialization" /></td>
                    <td class="td_labelName">Max Visits/month</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="maxvisitspermonth" id="maxvisitspermonth" /></td>
                    <td class="td_labelName">No of Days Valid</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="noofdaysvalid" id="noofdaysvalid" /></td>
                </tr>
               <!-- <tr>
                    <td colspan="12" style=" color: #95BA2E;font-weight: bold">Doctor Consultation Charges Details :</td>
                </tr>
                <tr>
                    <td class="td_labelName">Consultation Charges (AC-Room)</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="usermobileno" id="usermobileno" /></td>
                    <td class="td_labelName">Consultation Charges (Non-AC Room)</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userfirstname" id="userfirstname"/></td>
                    <td class="td_labelName">Consultation Charges (General Room)</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userlastname" id="userlastname"/></td>
                    <td class="td_labelName">Consultation Charges (General Ward)</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="userage" id="userage"/></td>
                </tr>-->
                <tr>
                    <td colspan="9">&nbsp;</td>
                    <td class="" colspan="2"><!--<input type="button" name="savebutton" id="savebutton111" class="button" value="Extra1"/>&nbsp;<input type="button" name="savebutton1" id="savebutton11" class="button" value="Save1"/>--></td>
                    <td class="td_formfield"><!--<input type="button" name="savebutton" id="savebutton" class="button" value="Save"/>&nbsp;--><input type="submit" name="savebutton" id="savebutton" class="button" value="Save"/></td>
                </tr>
            </table>
            </form>
        </div>
<%--
        <table id="userpreviousdetailstable" width="100%">
            <tr><td colspan="3" style="background-color: #111;color: #95BA2E"><b>User Details</b></td></tr>
            <tr>
                <td id="userpreviousdetailslisttd" style="">
                    <div id="userpreviousdetailslistdiv" style="">

                        <div id="outuserpreviousdetailslistdiv" style="height:300px;border: 1px solid rosybrown;">
                            <div style="">
                                <table style="" border="0" width="100%">
                                    <thead style="background-color: #67b086;color: #000">
                                        <tr>

                                            <th style="width:25px;border: 1px solid darkcyan">SNo</th>
                                            <th style="width:95px;border: 1px solid darkcyan">User Login ID</th>
                                            <th style="width:170px;border: 1px solid darkcyan">User Name</th>
                                            <th style="width:45px;border: 1px solid darkcyan">Age</th>
                                            <th style="width:95px;border: 1px solid darkcyan">Mobile No</th>
                                            <th style="width:105px;border: 1px solid darkcyan">Designation</th>
                                            <th style="width:105px;border: 1px solid darkcyan">Date of Joining</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <div style="overflow-y: auto">
                                <table style="" border="0" width="100%">
                                    <tbody>
                                        <%
                                            int i = 10;
                                            while (i > 0) {
                                        %>
                                        <tr style='background-color: <%=(i % 2 == 0) ? "#333" : "#555"%>'>
                                            <td style="width:25px;border: 1px solid darkcyan">SNo</td>
                                            <td style="width:95px;border: 1px solid darkcyan">User Login ID</td>
                                            <td style="width:170px;border: 1px solid darkcyan">User Name</td>
                                            <td style="width:45px;border: 1px solid darkcyan">Age</td>
                                            <td style="width:95px;border: 1px solid darkcyan">Mobile No</td>
                                            <td style="width:105px;border: 1px solid darkcyan;">Manager</td>
                                            <td style="width:105px;border: 1px solid darkcyan;">2013-07-20</td>
                                        </tr>
                                        <%
                                                i--;
                                            }
                                        %>
                                    </tbody>
                                </table>

                            </div>

                        </div>

                    </div>
                </td>

            </tr>
        </table>--%>
    
        <table id="doctorpreviousdetailstable" width="100%">
            <tr><td colspan="3" style="background-color: #111;color: #95BA2E"><b>User Details</b></td></tr>
            <tr>
                <td id="doctorpreviousdetailslisttd" style="">
                    <div id="doctorpreviousdetailslistdiv" style="">

                        <div id="doctordetailslistdiv" style="height:210px;border: 1px solid rosybrown;">
                            <div style="">
                                <table style="" border="0" width="100%">
                                    <thead style="background-color: #67b086;color: #000">
                                        <tr>
                                            <th style="width:25px;border: 1px solid darkcyan">SNo</th>
                                            <th style="width:95px;border: 1px solid darkcyan">User Login ID</th>
                                            <th style="width:170px;border: 1px solid darkcyan">User Name</th>
                                            <th style="width:45px;border: 1px solid darkcyan">Age</th>
                                            <th style="width:95px;border: 1px solid darkcyan">Mobile No</th>
                                            <th style="width:105px;border: 1px solid darkcyan">Designation</th>
                                            <th style="width:105px;border: 1px solid darkcyan">Date of Joining</th>
                                            <th style="width:105px;border: 1px solid darkcyan">Qualification</th>
                                            <th style="border: 1px solid darkcyan">Specialization</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <div style="height: 180px;overflow-y: auto">
                                <table style="" border="0" width="100%">
                                    <tbody>
                                        <%
                                            int j = 10;
                                            while (j > 0) {
                                        %>
                                        <tr style='background-color: <%=(j % 2 == 0) ? "#333" : "#555"%>'>
                                            <td style="width:25px;border: 1px solid darkcyan">SNo</td>
                                            <td style="width:95px;border: 1px solid darkcyan">User Login ID</td>
                                            <td style="width:170px;border: 1px solid darkcyan">User Name</td>
                                            <td style="width:45px;border: 1px solid darkcyan">Age</td>
                                            <td style="width:95px;border: 1px solid darkcyan">Mobile No</td>
                                            <td style="width:105px;border: 1px solid darkcyan;">City/Town</td>
                                            <td style="width:105px;border: 1px solid darkcyan;">City/Town</td>
                                            <td style="width:105px;border: 1px solid darkcyan">M.B.B.S</td>
                                            <td style="border: 1px solid darkcyan">General</td>
                                        </tr>
                                        <%
                                                j--;
                                            }
                                        %>
                                    </tbody>
                                </table>

                            </div>

                        </div>

                    </div>
                </td>

            </tr>
        </table>
    
    </div>

</div>
<%@include file="Footer.jsp" %>