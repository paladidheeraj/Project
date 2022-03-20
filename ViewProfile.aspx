<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="Project.ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>  
            <table>
               
            <asp:Panel ID="Panel1" runat="server" Width="450px">
                <tr>
                    <th>
                        Edit Profile
                    </th>
                </tr>
                 <tr>

                    <td>
                <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                </td>
                     <td>
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>  
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ErrorMessage="First Name is mandatory" ControlToValidate="fname" ForeColor="red"></asp:RequiredFieldValidator>
                        </td>              
             </tr>
                <tr>
                    <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name : "></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="lname" runat="server"></asp:TextBox>  
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ErrorMessage="Last Name is mandatory" ControlToValidate="lname" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
                        </tr>
                <tr>
                    <td>
                <asp:Label ID="Label3" runat="server" Text="DOB : "></asp:Label>
                        </td>
                    <td>
                        <asp:TextBox ID="dob" runat="server"></asp:TextBox>                 
                        <asp:LinkButton ID="lnkpickdate" runat="server" OnClick="lnkpickdate_Click" 
                            CausesValidation="false">SelectDate</asp:LinkButton>

                        <asp:Calendar ID="Calendar1" runat="server" Visible="false" 
                            OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
       </td>
                        </tr>
                <tr>
                    <td>
                    <asp:Label runat="server" id="genderId" Text="Gender : "></asp:Label>
                        </td>
        <td>
            <asp:RadioButton ID="male" runat="server" Text="Male" GroupName="gender" />  
    <asp:RadioButton ID="female" runat="server" Text="Female" GroupName="gender" /> 
                        </td>
                </tr>
<tr>
    <td>
<asp:Label ID="Label4" runat="server" Text="Phone No : "></asp:Label>
      </td>  
    <td>   
<asp:TextBox ID="phno" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                             ErrorMessage="Phone Number is mandatory" ControlToValidate="phno" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="phno" ErrorMessage="Please enter valid Mobile number!" 
        ValidationExpression="^([7-9]{1})([0-9]{9})$" ForeColor="Red" ValidateEmptyText="true" />
        </td> 
</tr>
                <tr>
            <td>   
                <asp:Label ID="Label12" runat="server" Text="User ID :"></asp:Label>
                </td>
<td>
                        <asp:TextBox ID="uid" runat="server"></asp:TextBox>    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                             ErrorMessage="User Id is mandatory" ControlToValidate="uid" 
             ForeColor="red"></asp:RequiredFieldValidator>
    </td>
    </tr>
<tr>
    <td>
   <asp:Label ID="Label5" runat="server" Text="Password : "></asp:Label>      
    </td>
     <td>       
<asp:TextBox ID="pass" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ErrorMessage="Password is mandatory" ControlToValidate="pass" 
             ForeColor="red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="Regex2" runat="server" ControlToValidate="pass"
    ValidationExpression="^(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{6,}$"
    ErrorMessage="Minimum 6 characters atleast 1 Special Character" 
    ForeColor="Red" ValidateEmptyText="true" />
         </td> 
               </tr>

<tr>
    <td>
      <asp:Label ID="Label6" runat="server" Text="Address : "></asp:Label>       
        </td>
          </tr>
    <tr>
        <td>
       <asp:Label ID="Label7" runat="server" Text="Flat No : "></asp:Label>   
            </td>
        <td>
                    <asp:TextBox ID="flno" runat="server" ></asp:TextBox>
            </td>
 </tr>
                <tr>
                    <td>
                <asp:Label ID="Label8" runat="server" Text="Street Name : "></asp:Label>
                        </td>
                    <td>
                    <asp:TextBox ID="stno" runat="server"></asp:TextBox>
                        </td>
 </tr>
                <tr>
                    <td>
                <asp:Label ID="Label9" runat="server" Text="Landmark : "></asp:Label>
                        </td>
                    <td>
                    <asp:TextBox ID="lm" runat="server"></asp:TextBox>
                        </td>
       </tr>
                <tr>
                    <td>
                <asp:Label ID="Label10" runat="server" Text="City : "></asp:Label>
                        </td>
                    <td>
                    <asp:TextBox ID="city" runat="server"></asp:TextBox>
                        </td>
                 </tr>
                <tr>
                    <td>
                <asp:Label ID="Label11" runat="server" Text="State : "></asp:Label>
                        </td>
                    <td>
        <asp:TextBox ID="state" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                            <td>
                        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" 
                            CausesValidation ="true"/>  
                        <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click" 
                            CausesValidation ="true"/>  
                            </td>
                                </tr>
                </asp:Panel>
                </table>
        </div>
    </form>
</body>
</html>
