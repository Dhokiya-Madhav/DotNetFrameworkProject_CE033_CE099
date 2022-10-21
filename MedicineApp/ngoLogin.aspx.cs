using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class ngoLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ngoLoginEvent(object sender, EventArgs e)
        {
            //Response.Write("Hello");

            string ngoEmail = ngoEmailtb.Text;
            string ngoPsw = ngoPasstb.Text;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ngoConnection"].ConnectionString;

            try
            {
                using (con)
                {
                    string command = ("select Id,Name,Email,Password from ngo where Email = @Email and Password = @Password");

                    using (SqlCommand cmd = new SqlCommand(command, con))
                    {
                        cmd.Parameters.AddWithValue("@Email", ngoEmail);
                        cmd.Parameters.AddWithValue("@Password", ngoPsw);
                        con.Open();

                        SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read())
                        {
                            //Response.Write(rdr.GetString(1));
                            if (rdr.GetString(2).Equals(ngoEmail) && rdr.GetString(3).Equals(ngoPsw))
                            {
                                Session["ngoName"] = rdr.GetString(1);
                                Session["ngoId"] = Convert.ToString(rdr.GetInt32(0));
                                Session["ngoEmail"] = rdr.GetString(2);
                                Response.Redirect("ngoHome.aspx");
                                //Response.Write("Correct User");
                            }
                        }
                        else
                        {
                            errLblNgo.Visible = true;
                            errLblNgo.Text = "Invalid Credentials";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}