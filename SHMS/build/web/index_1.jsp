<%@include file="Header.jsp"%>
<div id="content">
    <div id="colOne" style='width: 720px'>
        <div id="welcome">
            <h2>Welcome to Sravani Hospital</h2>
            <img src="images/sravani_logo_sub.jpeg" alt="" width="109" height="109" class="image" />
            <p><strong>Welcome to Sravani Hospital</strong> web site. 
        </div>
    </div>
    
    <div id="colTwo" >
        <div id="right">

            <div style="padding: 5px 5px 5px 5px;">
                <form action="LoginAuthentication" method="POST">
                    <table>
                        <tr>
                            <td colspan="2" style="font-weight: bold;color: #35a0d7">
                                Provide Login Credentials
                            </td>
                        </tr>
                        <tr>
                            <td>User Name :</td><td><input type="text" name="username" id="username" maxlength="20"/></td>
                        </tr>
                        <tr>
                            <td>Password :</td><td><input type="password" name="pwd" id="pwd" maxlength="20"/></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td><td align="center"><input type="submit" name="submit" class="button"  value="Login"/> &nbsp;&nbsp;&nbsp;<input type="reset" name="reset1" class="button"  value="Reset"/></td>
                        </tr>
                        <tr><td colspan="2" style="font-size: 10px;color: #f25217" align="center">
    
                        &nbsp;</td></tr>
                    </table>
                </form>
            </div>
                        
            <div style="padding-top: 10px;border-bottom: 1px solid #95BA2E"></div>
            <div style="padding: 5px 5px 5px 5px;">

            </div>
            
        </div>
    </div>
    
</div>
<%@include file="Footer.jsp" %>