<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome2.aspx.cs" Inherits="Project.UserHome2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
     <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("The old values will be retained")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "No";
            }
            document.forms[0].appendChild(confirm_value);
        }
     </script>
</head>
<body>
    <form id="form1" runat="server">
 <table align="center" width="80%" >
     <tr>
         <th>
             Welcome Username
         </th>
     </tr>
      <tr>
        <td>
          
          <asp:Button Text="Request Quotation" BorderStyle="None" ID="rquo" runat="server" OnClick="rquo_Click" CausesValidation="false"
               />
          <asp:Button Text="View Quotation" BorderStyle="None" ID="vquo" runat="server" OnClick="vquo_Click" CausesValidation="false"
              />
          <asp:Button Text="View Profile" BorderStyle="None" ID="vpro" runat="server" OnClick="vpro_Click" CausesValidation="false"
             />
          <asp:Button Text="Logout" BorderStyle="None" ID="logout" runat="server" OnClick="logout_Click" CausesValidation="false"
               />
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server" >
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid;">
<asp:Panel ID="Panel2" runat="server" Width="450px">
                <tr>
                    <th>
                        Add Event Form
                    </th>
                </tr>
                    <tr>

                    <td>
                <asp:Label ID="Label13" runat="server" Text="User Name :"></asp:Label>
                </td>
                     <td>
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>    
                        </td>
             </tr>
                  <tr>
                    <td>
                <asp:Label ID="Label14" runat="server" Text="From Date : "></asp:Label>
                        </td>

                    <td>
                        <asp:TextBox ID="fdate" runat="server"></asp:TextBox>
                        
                    
                        <asp:LinkButton ID="lnkfdate" runat="server" OnClick="lnkfdate_Click" CausesValidation="false">SelectFromDate</asp:LinkButton>
                        <asp:Calendar ID="Calendar1" runat="server" Visible="false" 
                           OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                  </td>
                        </tr>

                <tr>
                    <td>
                <asp:Label ID="Label15" runat="server" Text="To Date : "></asp:Label>
                        </td>

                    <td>
                        <asp:TextBox ID="tdate" runat="server"></asp:TextBox>
                        
                    
                        <asp:LinkButton ID="lnktdate" runat="server" OnClick="lnktdate_Click" CausesValidation="false">SelectToDate</asp:LinkButton>
                        <asp:Calendar ID="Calendar2" runat="server" Visible="false" 
                           OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                  </td>
                        </tr>

                <tr>
                    <td>
                       <asp:Label ID="Label16" runat="server" EnableViewState="False"
                           Text="Select City : "></asp:Label>  
                    </td>
                    <td>
                        <asp:DropDownList ID="city2" runat="server" >  
            <asp:ListItem Value="">City</asp:ListItem>  
            <asp:ListItem Value="Amaravathi">Amaravathi </asp:ListItem>  
            <asp:ListItem Value="Hyderabad">Hyderabad</asp:ListItem>  
            <asp:ListItem Value="Kurnool">Kurnool</asp:ListItem>  
            <asp:ListItem Value="Bangalore">Bangalore</asp:ListItem>  
            <asp:ListItem Value="Chennai">Chennai</asp:ListItem>  
	    <asp:ListItem Value="New Delhi">New Delhi</asp:ListItem> 
	    <asp:ListItem Value="Mumbai">Mumbai</asp:ListItem> 
        </asp:DropDownList>  
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="label17" Text="Select Service : "></asp:Label>  
                    </td>
                    <td>
<asp:Panel runat="server" ID="service" >
    <asp:CheckBox ID="dec" runat="server" Text="Decoration" />
    <br />
    <asp:CheckBox ID="cat" runat="server" Text="Catering" />
    <br />
    <asp:CheckBox ID="ps" runat="server" Text="Photo Shoot" />
    <br />
    <asp:CheckBox ID="photo" runat="server" Text="Photo" />
    <br />
    <asp:CheckBox ID="video" runat="server" Text="Video" />
</asp:Panel>
<br />                  

                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label18" runat="server" Text="Planned Budget :"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="pbudget" runat="server"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="Phone No : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="phno2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                             ErrorMessage="Phone Number is mandatory" ControlToValidate="phno2" ForeColor="red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
        ControlToValidate="phno2" ErrorMessage="Please enter valid Mobile number!" 
        ValidationExpression="^([7-9]{1})([0-9]{9})$" ForeColor="Red" ValidateEmptyText="true" />
  
        </td>
                </tr>
            <tr>
                <td>
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" 
                        CausesValidation ="true"/>
                </td>
                 <td>
                    <asp:Button ID="Reset" runat="server" Text="Reset" OnClick="Reset_Click" 
                        CausesValidation ="false" />
                </td>
            </tr>
            </asp:Panel>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid;">
                <tr>
                  <td>
                    <h3>
                      View 2
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">

              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid;">
                                 
            <asp:Panel ID="Panel1" runat="server" Width="450px">
                <tr>
                    <td>

                    </td>
                    <td> 
                        Edit Profile
                        <asp:Button ID="Edit" runat="server" Text="Edit" OnClick="Edit_Click" CausesValidation="false"/>  
                        </td>
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
                                         
  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ControlToValidate="dob" ValidationExpression="((19|20)\d\d)\/(0[1-9]|1[0-2])\/((0|1)[0-9]|2[0-9]|3[0-1])" 
      ErrorMessage="Enter a Valid Date (yyyy/mm/dd)" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
<br />
   &nbsp;&nbsp;&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="dob"  ForeColor="red" ErrorMessage="Age is below 18 "></asp:RangeValidator>
       </td>
                        </tr>
                <tr>
                    <td>
                    <asp:Label runat="server" id="genderId" Text="Gender : "></asp:Label>
                        </td>
        <td>
  <asp:RadioButtonList ID="gender" runat="server" DataTextField="ans"   
                    DataValueField="ans">  
                    <asp:ListItem ID="male">Male</asp:ListItem>  
                    <asp:ListItem Id="female">Female</asp:ListItem>  
                </asp:RadioButtonList>                          </td>
                </tr>
<tr>
    <td>
<asp:Label ID="Label4" runat="server" Text="Phone No : "></asp:Label>
      </td>  
    <td>   
<asp:TextBox ID="phno" runat="server" ></asp:TextBox>
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
                        <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" 
                            CausesValidation ="true"/>  
                        
                        <asp:Button ID="Reset2" runat="server" Text="Reset" OnClick="Reset2_Click" OnClientClick="Confirm()" 
                            CausesValidation ="false"/>  
                            </td>
                                </tr>
                </asp:Panel>

              </table>
            </asp:View>
                          <asp:View ID="View4" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid; " >
                <tr>
                  <td>
                    <h3>
                      Log out session
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
    </form>
</body>
</html>
