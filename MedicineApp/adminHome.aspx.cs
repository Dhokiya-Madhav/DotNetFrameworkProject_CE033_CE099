using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace MedicineApp
{
    public partial class adminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] != null)
            {
                adminLogged.Visible = false;
                //adminLoggedOut.Visible = true;
                adminNameLogged .Visible = true;
                adminWelName.Visible = true;
                adminNameLogged.Text = Session["adminname"].ToString();
            }
            else
            {
                Response.Redirect("adminLogin.aspx");
            }

            /*SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\WAD\MedicineApp\App_Data\Medicine.mdf;Integrated Security=True";
            try
            {
                using(con)
                {
                    string command = "select Id,Name,Email,Phone_No,Address,City,Description from ngo";
                    SqlCommand cmd = new SqlCommand(command,con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    ngoDataDisplay.DataSource = rdr;
                    ngoDataDisplay.DataBind();
                    rdr.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("Errors: " + ex.Message);
            }*/
        }

        protected void adminLogoutBtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Remove("adminname");
            Session["adminname"] = null;
            Response.Redirect("adminLogin.aspx");
        }
    }
}