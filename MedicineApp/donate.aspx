<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="donate.aspx.cs" Inherits="MedicineApp.donate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donate</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <!--Login Icon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap" rel="stylesheet">
    <style>
        .details{
            color:blue;
        }
        .success{
            color:green;
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
                        <asp:HyperLink NavigateUrl="userHome.aspx"  runat="server" Text="Home" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    

                    <li class="nav-item">
                        <!-- <a class="nav-link " href="#" aria-disabled="true">Donors</a> -->
                        <asp:HyperLink NavigateUrl="mydonations.aspx"  runat="server" Text="My Donations" CssClass="nav-link"></asp:HyperLink>
                    </li>

                    <li class="nav-item">
                        <!-- <a class="nav-link " href="#" aria-disabled="true">Donors</a> -->
                        <asp:HyperLink NavigateUrl="userLogout.aspx"  runat="server" Text="Logout" CssClass="nav-link"></asp:HyperLink>
                    </li>
                
                </ul>
                </nav>
            </div>
        </div>
    </nav>
        <br />
        <center>
        <div class="details">
            <div>
                Ngo :- <asp:Label ID="ngoNameDonate" runat="server" Text="Label"></asp:Label> ,

                
                
                Ngo Email Id :- <asp:Label ID="ngoEmailDonate" runat="server" Text="Label"></asp:Label> ,

                
            &nbsp;Ngo Phone No. :- <asp:Label ID="ngoPnoDonate" runat="server" Text="Label"></asp:Label> 

                
                <br />
                <br />
                
                <asp:Label ID="medicineName" runat="server" Text="Medicine Name"></asp:Label> 
                
                &nbsp;<asp:TextBox ID="medicineNameTB" runat="server"></asp:TextBox>
                
                &nbsp; 

                
                <asp:Label ID="medicineCount" runat="server" Text="Medicine Count"></asp:Label>
                <asp:TextBox ID="medicineCountTB" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="medicineExpire" runat="server" Text="Expire Date"></asp:Label>
                &nbsp;<asp:TextBox ID="medicineExpireTB" runat="server" TextMode="Date"></asp:TextBox>
                &nbsp;<asp:Button ID="medicineDonateBtn" runat="server" OnClick="medicineDonateBtn_Click" Text="Donate" />

                
                <br />
                <br />
                <asp:Label ID="successLbl" runat="server" CssClass="success" Text="Label" Visible="False"></asp:Label>

                
            </div>
        </div>
        </center>
    </form>
</body>
</html>
