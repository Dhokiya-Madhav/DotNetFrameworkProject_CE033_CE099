<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="MedicineApp.adminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
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
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link" href="addNGOs.aspx">Add NGOs</a> -->
                        <asp:HyperLink NavigateUrl="addNGOs.aspx"  runat="server" Text="Add NGOs" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <!-- <a class="nav-link " href="#" aria-disabled="true">Donors</a> -->
                        <asp:HyperLink NavigateUrl="donors.aspx"  runat="server" Text="Donors" CssClass="nav-link"></asp:HyperLink>
                    </li>
                    
                    <li class="nav-item">
                        
                        <asp:HyperLink NavigateUrl="logout.aspx"  runat="server" Text="Logout" CssClass="nav-link"></asp:HyperLink>
                    </li>
                </ul>
                </nav>
                    
                    <button class="btn btn-outline-primary" type="submit" runat="server" id="adminLogged">Login <i class="fa fa-sign-in"></i></button>
                    
            </div>
        </div>
    </nav>


    <center>
    <div>
        <asp:Label ID="adminWelName" runat="server" CssClass="text-info" Text="Welcome,"></asp:Label>
        <asp:Label ID="adminNameLogged" runat="server" CssClass="text-info" Visible="false"></asp:Label>
    </div>
    </center>
    <br />
    
        <center>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" SortExpression="Phone_No" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Email], [Name], [Phone_No], [Address], [City], [Description] FROM [ngo]" UpdateCommand="UPDATE [ngo] SET [Name]=@Name,[Email]=@Email,[Phone_No]=@Phone_No,[Address]=@Address,[City]=@City,[Description]=@Description WHERE [Id]=@Id" DeleteCommand="DELETE FROM [ngo] WHERE [Id]=@Id"></asp:SqlDataSource>
        </div>
        </center>
    </form>
    </form>
</body>
</html>
