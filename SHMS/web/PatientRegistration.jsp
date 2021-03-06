<%-- 
    Document   : PatientRegistration
    Created on : Jul 10, 2013, 10:33:16 AM
    Author     : Lokendar Reddy Pullagurla
--%>
<%@include file="Header.jsp"%>
<script type="text/javascript">
    function selectReg(){
        document.getElementById('registrationform').style.display='block';
        document.getElementById('enquiryform').style.display='none';
        document.getElementById('registrationTab').className='highlight';
        document.getElementById('enquiryTab').className='';
        
        // Calling ajax to get Op details
        var xmlhttp;
        if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp=new XMLHttpRequest();
        }else{// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function(){
          if (xmlhttp.readyState==4 && xmlhttp.status==200){
            document.getElementById("outpatientpreviousdetailslistdiv").innerHTML=xmlhttp.responseText;
          }
        }
        xmlhttp.open("GET","./OpDetailsView.jsp?result=registration",true);
        xmlhttp.send();
        }

        
    function selectEnq(){
        document.getElementById('enquiryform').style.display='block';
        document.getElementById('registrationform').style.display='none';
        document.getElementById('enquiryTab').className='highlight';
        document.getElementById('registrationTab').className='';
       // enquiryPopulate();
    }
    
    function enquiryPopulate(){
        //var fnameValue = 
       // var lnameValue = 
        // Calling ajax to get Op details
        var xmlhttp;
        if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp=new XMLHttpRequest();
        }else{// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function(){
          if (xmlhttp.readyState==4 && xmlhttp.status==200){
            document.getElementById("outpatientpreviousdetailslistdiv").innerHTML=xmlhttp.responseText;
          }
        }
        xmlhttp.open("GET","./OpDetailsView.jsp?result=enquiry",true);
        xmlhttp.send();
        }
        

//JQuery Auto Suggestion related code
	jQuery(function(){
		$("#patientfirstname1").autocomplete("PatientEnquiryAutoComplete.jsp");
		$("#patientfirstname1").focusout(function(){
                    alert("u can write ajax call to reload patient details list");
                });
	});
</script>
<body onload="selectReg()">
<div id="content">
    <div id="colOneAll" style="border: 1px solid #95BA2E">
        <div class="formheading">
            <table border="0" width="100%">
                <tr>
                    <td><h3>Patient Registration & Enquiry</h3></td>
                    <td align="right">
                        <div class="nav">
                            <a class="highlight" id="registrationTab" href="javascript:void(0);" onclick="selectReg()">Registration</a> 
                                <a href="javascript:void(0);" id="enquiryTab" onclick="selectEnq()">Enquiry</a> 
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="registrationform">
            <form action="./StorePatientDetails.jsp" method="POST">
            <table border="0">
                <tr>
                    <td class="td_labelName">First Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientfirstname" id="patientfirstname"/></td>
                    <td class="td_labelName">Last Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientlastname" id="patientlastname"/></td>
                    <td class="td_labelName">Age</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientage" id="patientage"/></td>
                    <td class="td_labelName">Sex</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="radio" name="patientsex" id="patientsex" value="male"/>Male&nbsp;&nbsp;<input type="radio" name="patientsex" id="patientsex" value="female"/>Female</td>
                </tr>
                <tr>
                    <td class="td_labelName">Door Number</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientdoorno" id="patientdoorno"/></td>
                    <td class="td_labelName">Street</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientstreet" id="patientstreet"/></td>
                    <td class="td_labelName">City/Town</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientcitytown" id="patientcitytown"/></td>
                    <td class="td_labelName">Phone No</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientphoneno" id="patientphoneno"/></td>
                </tr>
                <tr>
                    <td class="td_labelName">Relative Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientrelativename" id="patientrelativename"/></td>
                    <td class="td_labelName">Relation</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientrelation" id="patientrelation"/></td>
                    <td class="td_labelName">Contact No</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientcontactno" id="patientcontactno"/></td>
                    <td class="td_labelName">Referral Doctor</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientreferraldoctor" id="patientreferraldoctor"/></td>
                </tr>
                <tr>
                    <td colspan="9">&nbsp;</td>
                    <td class="" colspan="2"><!--<input type="button" name="savebutton" id="savebutton111" class="button" value="Extra1"/>&nbsp;<input type="button" name="savebutton1" id="savebutton11" class="button" value="Save1"/>--></td>
                    <td class="td_formfield"><!--<input type="button" name="savebutton" id="savebutton" class="button" value="Save"/>&nbsp;-->
                        <input type="submit" name="savebutton" id="savebutton" class="button" value="Save"/></td>
                </tr>
            </table>
            </form>
        </div>
        <div id="enquiryform" style="display: none">
            <table border="0">
                <tr>
                    <td class="td_labelName">First Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientfirstname1" id="patientfirstname1"/></td>
                    <td class="td_labelName">Last Name</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientlastname1" id="patientlastname1"/></td>
                    <td class="td_labelName">Age</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientage1" id="patientage1"/></td>
                    <td class="td_labelName">City/Town</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientcitytown1" id="patientcitytown1"/></td>
                </tr>
                <tr>
                    <td class="td_labelName">Patient Id</td><td>&nbsp;:&nbsp;</td><td class="td_formfield"><input type="text" name="patientid1" id="patientid1"/></td>
                </tr>
                <tr>
                    <td colspan="9">&nbsp;</td>
                    <td class="" colspan="2"><!--<input type="button" name="savebutton" id="savebutton111" class="button" value="Extra1"/>&nbsp;<input type="button" name="savebutton1" id="savebutton11" class="button" value="Save1"/>--></td>
                    <td class="td_formfield"><!--<input type="button" name="savebutton" id="savebutton" class="button" value="Save"/>&nbsp;-->
                        </td>
                </tr>
                
            </table>
        </div>


        <table id="patientpreviousdetailstable" width="100%">
            <tr><td colspan="3" style="background-color: #111;color: #95BA2E"><b>Patient Enquiry Details</b></td></tr>
            <tr>
                <td id="patientpreviousdetailslisttd" style="width:50%">
                    <div id="patientpreviousdetailslistdiv" style="">
                        <div id="outpatientpreviousdetailslistdiv" style="height:180px;border: 1px solid rosybrown;">
                        
                       </div>

                        <div id="inpatientpreviousdetailslistdiv" style="height:180px;border: 1px solid rosybrown">
                            <div>
                                <table style="" border="0" width="100%">
                                    <thead style="background-color: #67b086;color: #000">
                                        <tr style="">
                                            <th style="width:15px;border: 1px solid darkcyan">&nbsp;</th>
                                            <th style="width:25px;border: 1px solid darkcyan">SNo</th>
                                            <th style="width:95px;border: 1px solid darkcyan">Registration No</th>
                                            <th style="width:140px;border: 1px solid darkcyan">Patient Name</th>
                                            <th style="width:25px;border: 1px solid darkcyan">Sex</th>
                                            <th style="width:75px;border: 1px solid darkcyan">Contact No</th>
                                            <th style="width:85px;border: 1px solid darkcyan">Bed No</th>
                                            <th style="border: 1px solid darkcyan">Action</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                            <div style="height:156px;overflow-y: auto">
                                <table style="" border="0" width="100%">
                                    <tbody>
                                        <%
                                            int j = 10;
                                            while (j > 0) {
                                        %>
                                        <tr style='background-color: <%=(j % 2 == 0) ? "#333" : "#555"%>'>
                                            <td style="width:15px;border: 1px solid darkcyan" align="center"><div style="border:1px solid #aaa;background-color: #fff;width: 6px;height: 6px"></div></td>
                                            <td style="width:25px;border: 1px solid darkcyan">SNo</td>
                                            <td style="width:95px;border: 1px solid darkcyan">55M5559844</td>
                                            <td style="width:140px;border: 1px solid darkcyan">Patient Name</td>
                                            <td style="width:25px;border: 1px solid darkcyan">Sex</td>
                                            <td style="width:75px;border: 1px solid darkcyan">09999999999</td>
                                            <td style="width:85px;border: 1px solid darkcyan;">Bed No</td>
                                            <td style="border: 1px solid darkcyan">Action</td>
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
                <td id="optionslisttd" width='5%' style='vertical-align: top'>
                    <div><input type="button" class="button1" name="button" value="OP Adminssion"/></div>
                    <div><input type="button" class="button1" name="button" value="IP Adminssion"/></div>
                    <div><input type="button" class="button1" name="button" value="IP Transfor"/></div>
                    <div><input type="button" class="button1" name="button" value="Lab Order"/></div>

                </td>
                <td id="patientpreviousdetailsprocesstd" style="vertical-align: top">
                    <div id="patientpreviousdetailsprocessdiv" style="border: 1px solid rosybrown;">
                        <table style="" width="100%">
                            <tr><td colspan="6"><div style="margin-top: -26px;color: #95BA2E"><b>OP Admission Details</b></div></td></tr>
                            <tr>
                                <td>Appointment Date</td><td>&nbsp;:&nbsp;</td><td><input type="text" name="l"/></td><td>Appointment Date</td><td>&nbsp;:&nbsp;</td><td><input type="text" name="l"/></td>
                            </tr>
                            <!-- <tr>
                                 <td><div>Appointment Date :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td><td><div>Consultant Name :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td>
                             </tr>
                             <tr>
                                 <td><div>Serial number :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td><td><div>Payment Type :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td>
                             </tr>
                             <tr>
                                 <td><div>Payment Type :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td><td><div>Credit Type :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td>
                             </tr>
                             <tr>
                                 <td><div>Amount :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td><td><div>Discount Amount :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td>
                             </tr>
                             
                             <tr>
                                 <td><div>Discount Reason :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td><td><div>Net Amount :</div><div style="margin-top: -10px"><input type="text" name="l"/></div></td>
                             </tr>-->
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>

</div>
</body>
<%@include file="Footer.jsp" %>