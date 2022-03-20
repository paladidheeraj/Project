<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uauthentication.aspx.cs" Inherits="Project.Uauthentication" %>

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
            <tr >
                <th>
                    Login Page
                </th>
                    </tr>
                <tr>
                    <td>
                <asp:Label ID="Label1" runat="server" Text="UserId :"></asp:Label>
                </td>
                     <td>
                        <asp:TextBox ID="uid" runat="server"></asp:TextBox>    
                        </td>
             </tr>
                <tr>
    <td>
   <asp:Label ID="Label5" runat="server" Text="Password : "></asp:Label>      
    </td>
     <td>       
<asp:TextBox ID="pass" runat="server"></asp:TextBox>
         </td> 
               </tr>
               <tr>
                <td>
                        <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" 
                            CausesValidation ="true"/>  
                            </td>
                                </tr>

                </asp:Panel>
            </table>
        </div>
    </form>
</body>
</html>
