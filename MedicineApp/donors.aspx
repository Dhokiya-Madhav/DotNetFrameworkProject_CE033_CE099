<%@ Page Language="C#" AutoEventWireup="true" CodeFile="donors.aspx.cs" Inherits="MedicineApp.donors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donors List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <!--Login Icon-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400&display=swap" rel="stylesheet">
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
                        <!-- <a class="nav-link active" aria-current="page" href="#">Home</a> -->
                        <asp:HyperLink NavigateUrl="adminHome.aspx"  runat="server" Text="Home" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link" href="addNGOs.aspx">Add NGOs</a> -->
                        <asp:HyperLink NavigateUrl="addNGOs.aspx"  runat="server" Text="Add NGOs" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link " href="#" aria-disabled="true">Donors</a> -->
                        <asp:HyperLink NavigateUrl="donors.aspx"  runat="server" Text="Donors" CssClass="nav-link active"></asp:HyperLink>
                    </li>
                    
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="logout.aspx"  runat="server" Text="Logout" CssClass="nav-link"></asp:HyperLink>
                    </li>
                </ul>
                </nav>
                    
                    
            </div>
        </div>
    </nav>
        
        <br />
        <div>
            <center>
            <asp:Label ID="donorTitleLbl" runat="server" Text="Donor Details"></asp:Label>
            </center>
            <br />
        </div>
        <center>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                    <asp:BoundField DataField="userEmail" HeaderText="userEmail" SortExpression="userEmail" />
                    <asp:BoundField DataField="ngoName" HeaderText="ngoName" SortExpression="ngoName" />
                    <asp:BoundField DataField="ngoEmail" HeaderText="ngoEmail" SortExpression="ngoEmail" />
                    <asp:BoundField DataField="ngoPno" HeaderText="ngoPno" SortExpression="ngoPno" />
                    <asp:BoundField DataField="medicineName" HeaderText="medicineName" SortExpression="medicineName" />
                    <asp:BoundField DataField="medicineCount" HeaderText="medicineCount" SortExpression="medicineCount" />
                    <asp:BoundField DataField="expireDate" HeaderText="expireDate" SortExpression="expireDate" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Donation]"></asp:SqlDataSource>
        </div>
        </center>
    </form>
    </form>
</body>
</html>
