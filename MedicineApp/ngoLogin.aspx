<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ngoLogin.aspx.cs" Inherits="MedicineApp.ngoLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NGO Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <!--Login Icon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap" rel="stylesheet">
    <style>
        .center {
            margin-left: auto;
            margin-right: auto;
        }
        .error{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                </ul>
            </div>
        </div>
    </nav>
        <div>
            <table class="center">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <center><asp:Label ID="adminTitlelbl" runat="server" CssClass="text-info" Text="NGO Login"></asp:Label></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="usrEmaillbl" runat="server" CssClass="text-info form-label" Text="Email"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ngoEmailtb" runat="server" CssClass="offset-sm-0 form-control" required></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        

                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="usrPasslbl" runat="server" CssClass="text-info form-label" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ngoPasstb" CssClass="form-control"  TextMode="Password" runat="server" required></asp:TextBox>
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
                        <center><asp:Button ID="ngoLoginBtn"  OnClick="ngoLoginEvent" CssClass="btn btn-outline-primary" runat="server" Text="Login"/></center>
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
            </table>
        </div>
        <center>
        <div>

            <asp:Label ID="errLblNgo" runat="server" CssClass="error" Text="Label" Visible="False"></asp:Label>

        </div>
        </center>
    </form>
        </div>
    </form>
</body>
</html>
