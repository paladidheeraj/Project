<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dob.aspx.cs" Inherits="Project.Dob" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.1/css/bootstrap-datepicker.css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.1/js/bootstrap-datepicker.min.js"></script>
    <style type="text/css">
        .table-condensed
        {
            width: 200px;
            height: 10px;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <br />
    <div>
        <div class="row">
            <div class="col-md-4">
                <div id='datepicker' class="input-group date datepicker col-md-6" data-date="" data-link-field="dtp_input2"
                    style="max-width: 220px">
                    <asp:TextBox ID="txtDobDate" runat="server" CssClass="form-control" size="16" type="text"
                        value="" AutoPostBack="true" />
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:CustomValidator ID="CvAgeValidation" ErrorMessage="Age must be Greater than equal to 18"
                    ForeColor="Red" ClientValidationFunction="AgeValidation" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:Button ID="btnSubmit" Text="Submit" runat="server" CssClass="btn"/><br />
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            SetDatePicker();
            $('#txtDobDate').change(function () {
                var age = CalculateAge();
                if (age < 18) {
                    alert("Age must be Greater than equal to 18");
                }
            });
        });
 
        function CalculateAge() {
            var dob = $("#txtDobDate").val();
            dob = new Date(dob);
            var today = new Date();
            var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));
            return age;
        }
 
        function AgeValidation(sender, args) {
            var age = CalculateAge();
            if (age >= 18) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
 
        function SetDatePicker() {
            $("#datepicker").datepicker();
            if ($("#txtDobDate").val() == "") {
                var dateNow = new Date();
                $('#datepicker').datepicker("setDate", dateNow);
            }
        }        
    </script>
    </form>
</body>
</html>