<%@ Page Language="C#" AutoEventWireup="true" Inherits="MedicineApp.addNGOs" CodeFile="addNGOs.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add NGOs</title>
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
        .auto-style1 {
            width: 120px;
        }

        .auto-style2 {
            height: 38px;
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
                        <!-- <a class="nav-link" aria-current="page" href="#">Home</a>-->
                        <asp:HyperLink NavigateUrl="adminHome.aspx"  runat="server" Text="Home" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link" href="addNGOs.aspx">Add NGOs</a> -->
                        <asp:HyperLink NavigateUrl="addNGOs.aspx"  runat="server" Text="Add NGOs" CssClass="nav-link active"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        
                        <asp:HyperLink NavigateUrl="donors.aspx"  runat="server" Text="Donors" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="logout.aspx"  runat="server" Text="Logout" CssClass="nav-link"></asp:HyperLink>
                    </li>
                </ul>
                </nav>
                    <!-- <button class="btn btn-outline-primary" type="submit" runat="server" id="adminLogged" >Logout <i class="fa fa-sign-in"></i></button>  -->
                    <!-- <asp:Button Text="Logout" CssClass="btn btn-outline-primary" runat="server" OnClick="adminLogoutNGO"/> -->
            </div>
        </div>
    </nav>
        <table class="center">
            <tr>
                <td class="auto-style2" colspan="2">
                    <center>
                        <asp:Label runat="server" CssClass="text-info" Text="Add NGO"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoName" runat="server" CssClass="text-info form-label" Text="NGO Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoNameTb" runat="server" CssClass="offset-sm-0"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoEmail" runat="server" CssClass="text-info form-label" Text="NGO Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoEmailTb" CssClass="form-control" TextMode="Email" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoPhoneNo" runat="server" CssClass="text-info form-label" Text="NGO Phone No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoPhoneNoTb" CssClass="form-control" TextMode="Number" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoPsw" runat="server" CssClass="text-info form-label" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoPswTb" CssClass="form-control" TextMode="Password" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoAdd" runat="server" CssClass="text-info form-label" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoAddTb" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoCity" runat="server" CssClass="text-info form-label" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoCityTb" CssClass="form-control" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="ngoDes" runat="server" CssClass="text-info form-label" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ngoDesTb" CssClass="form-control" TextMode="MultiLine" runat="server" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                    </center>
                </td>
            </tr>
        </table>
    </form>
    </form>
</body>
</html>
