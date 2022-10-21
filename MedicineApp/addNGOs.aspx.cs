using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace MedicineApp
{
    public partial class addNGOs : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminname"] == null)
            {
                Response.Redirect("adminLogin.aspx");
            }
        }
        protected void adminLogoutNGO(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Remove("adminname");
            Session["adminname"] = null;
            Response.Redirect("adminLogin.aspx");
        }

        protected void addngo(object sender, EventArgs e)
        {
            Response.Write("Hello");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String ngoname = ngoNameTb.Text;
            String ngoemail = ngoEmailTb.Text;
            String ngopno = ngoPhoneNoTb.Text;
            String ngopsw = ngoPswTb.Text;
            String ngoadd = ngoAddTb.Text;
            String ngocity = ngoCityTb.Text;
            String ngodes = ngoDesTb.Text;

            Random rdr = new Random();
            int id = rdr.Next(1, 100);

            SqlConnection con = new SqlConnection();

            con.ConnectionString = ConfigurationManager.ConnectionStrings["ngoConnection"].ConnectionString;
            string q = "INSERT INTO ngo (Id,Name,Email,Phone_No,Password,Address,City,Description) VALUES (@Id,@Name,@Email,@Phone_No,@Password,@Address,@City,@Description)";

            try
            {
                using(con)
                {
                    using (SqlCommand cmd = new SqlCommand(q,con))
                    {
                        cmd.Parameters.AddWithValue("@Id", id);
                        cmd.Parameters.AddWithValue("@Name", ngoname);
                        cmd.Parameters.AddWithValue("@Email", ngoemail);
                        cmd.Parameters.AddWithValue("@Phone_No", ngopno);
                        cmd.Parameters.AddWithValue("@Password", ngopsw);
                        cmd.Parameters.AddWithValue("@Address",ngoadd);
                        cmd.Parameters.AddWithValue("@City", ngocity);
                        cmd.Parameters.AddWithValue("@Description", ngodes);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();   
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}