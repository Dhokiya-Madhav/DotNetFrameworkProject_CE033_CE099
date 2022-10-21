<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" CodeFile="register.aspx.cs" Inherits="MedicineApp.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registeration</title>
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
            width: 120px;
        }
        .auto-style2 {
            width: 100px;
        }
        
        .center {
            margin-left: auto;
            margin-right: auto;
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
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link" href="addNGOs.aspx">Add NGOs</a> -->
                        <asp:HyperLink NavigateUrl="/"  runat="server" Text="About Us" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link " href="#" aria-disabled="true">Donors</a> -->
                        <asp:HyperLink NavigateUrl="/"  runat="server" Text="Contact Us" CssClass="nav-link"></asp:HyperLink>
                    </li>
                </ul>
                </nav>
            </div>
        </div>
    </nav>
        <div>

            <table class="center">
                <tr>
                    <td colspan="2">
                        <center><asp:Label ID="accCreateLbl" runat="server" Text="Create Account"></asp:Label></center>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:RadioButtonList ID="RadioButtonListUserSelection" runat="server">
                            <asp:ListItem Value="individualUser">Individual User</asp:ListItem>
                            <asp:ListItem Value="manufacturer">Manufacturer</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <center><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="btn btn-outline-primary" Text="Submit" /></center>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>


        <table class="center">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUserName"  runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUserEmail" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUserEmail" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUserPassword" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUserPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUserCity" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUserCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblUserPno" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxUserPno" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                        <asp:Button ID="ButtonRegister" runat="server" OnClick="Button2_Click" CssClass="btn btn-outline-primary" Text="Register" />
                    </center>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
