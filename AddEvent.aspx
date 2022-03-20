<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="Project.AddEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 322px">
    <form id="form1" runat="server">
        <div>
            <table>
            <asp:Panel ID="Panel1" runat="server" Width="450px">
                <tr>
                    <th>
                        Add Event Form
                    </th>
                </tr>
                    <tr>

                    <td>
                <asp:Label ID="Label1" runat="server" Text="User Name :"></asp:Label>
                </td>
                     <td>
                        <asp:TextBox ID="uname" runat="server"></asp:TextBox>    
                        </td>
             </tr>
                  <tr>
                    <td>
                <asp:Label ID="Label3" runat="server" Text="From Date : "></asp:Label>
                        </td>

                    <td>
                        <asp:TextBox ID="fdate" runat="server"></asp:TextBox>
                        
                    
                        <asp:LinkButton ID="lnkfdate" runat="server" OnClick="lnkfdate_Click">SelectFromDate</asp:LinkButton>
                </td>
                                  <td>
                        <asp:Calendar ID="Calendar1" runat="server" Visible="false" 
                           OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                  </td>
                        </tr>

                <tr>
                    <td>
                <asp:Label ID="Label2" runat="server" Text="To Date : "></asp:Label>
                        </td>

                    <td>
                        <asp:TextBox ID="tdate" runat="server"></asp:TextBox>
                        
                    
                        <asp:LinkButton ID="lnktdate" runat="server" OnClick="lnktdate_Click">SelectToDate</asp:LinkButton>
                </td>
                                  <td>
                        <asp:Calendar ID="Calendar2" runat="server" Visible="false" 
                           OnSelectionChanged="Calendar2_SelectionChanged"></asp:Calendar>
                  </td>
                        </tr>

                <tr>
                    <td>
                       <asp:Label ID="Label4" runat="server" EnableViewState="False"
                           Text="Select City : "></asp:Label>  
                    </td>
                    <td>
                        <asp:DropDownList ID="city" runat="server" >  
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
                        <asp:Label runat="server" ID="label5" Text="Select Service : "></asp:Label>  
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
                         <asp:Label ID="Label6" runat="server" Text="Planned Budget :"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="pbudget" runat="server"></asp:TextBox>  
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Phone No : "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="phno" runat="server"></asp:TextBox>
                    </td>

                    <td>   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="phno" ErrorMessage="Please enter valid Mobile number!" 
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

        </div>
    </form>
</body>
</html>
