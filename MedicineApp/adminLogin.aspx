<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="MedicineApp.adminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <!--Login Icon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap" rel="stylesheet">
    <style type="text/css">

        .auto-style1 {
            width: 118px;
        }

        .auto-style2 {
            height: 38px;
        }
        .navB,#form1{
            font-family:'Poppins', 'sans-serif';
        }
        .center {
            margin-left: auto;
            margin-right: auto;
        }
        .frm{
            background-color: whitesmoke;
            width: 500px;
            margin: 10px auto 0px auto;
            border: 1px solid blue;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light bg-light border border-primary navB">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <img src="images/icon2.png" height="50" width="50"/>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Add NGOs</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="#" aria-disabled="true">Donors</a>
                    </li>
                    
                </ul>
            </div>
        </div>
    </nav>

    <div class="frm">
    <form id="form1" runat="server">
        <div>
            <table class="center">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <center><asp:Label ID="adminTitlelbl" runat="server" CssClass="text-info" Text="Admin Login"></asp:Label></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="adminNamelbl" runat="server" CssClass="text-info form-label" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="adminNametb" runat="server" CssClass="offset-sm-0 form-control" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="adminPasslbl" runat="server" CssClass="text-info form-label" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="adminPasstb" CssClass="form-control"  TextMode="Password" runat="server" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                            
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center><asp:Button ID="adminLoginBtn" CssClass="btn btn-outline-primary" runat="server" Text="Login" OnClick="adminLoginBtn_Click" /></center>
                    </td>
                </tr>
            </table>
        </div>
       
    </form>
    </div>
    <center>
    <div>

        <asp:Label ID="errLbl" runat="server" Visible="false" Text="Label"></asp:Label>

    </div>
    </center>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
