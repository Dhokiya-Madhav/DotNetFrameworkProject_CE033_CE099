using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class userLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void loginUser(object sender, EventArgs e)
        {
            String userEmail = usrEmailtb.Text;
            String userPsw = usrPasstb.Text;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ngoConnection"].ConnectionString;

            if (selectUser.SelectedValue == "user")
            {
                //Response.Write("User");

                //Response.Write(userPsw);
                try
                {
                    using(con)
                    {
                        string command = ("select Id,Email,Name,Password from donor where Email = @Email and Password = @Password");

                        using(SqlCommand cmd = new SqlCommand(command,con))
                        {
                            cmd.Parameters.AddWithValue("@Email", userEmail);
                            cmd.Parameters.AddWithValue("@Password", userPsw);
                            con.Open();

                            SqlDataReader rdr = cmd.ExecuteReader();

                            if(rdr.Read())
                            {
                                //Response.Write(rdr.GetString(1));
                                if (rdr.GetString(1).Equals(userEmail) && rdr.GetString(3).Equals(userPsw))
                                {
                                    Session["userName"] = rdr.GetString(2);
                                    Session["userId"] = Convert.ToString(rdr.GetInt32(0));
                                    Session["userEmail"] = rdr.GetString(1);
                                    Response.Redirect("userHome.aspx");
                                    //Response.Write("Correct User");
                                }
                            }
                            else 
                            {
                                errLblUser.Visible = true;
                                errLblUser.Text = "Invalid Credentials";
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                //Response.Write("Manufacturer");

                try
                {
                    using (con)
                    {
                        string command = ("select Id,Email,Company_Name,Password from manufacturer where Email = @Email and Password = @Password");

                        using (SqlCommand cmd = new SqlCommand(command, con))
                        {
                            cmd.Parameters.AddWithValue("@Email", userEmail);
                            cmd.Parameters.AddWithValue("@Password", userPsw);
                            con.Open();

                            SqlDataReader rdr = cmd.ExecuteReader();

                            if (rdr.Read())
                            {
                                //Response.Write(rdr.GetString(1));
                                if (rdr.GetString(1).Equals(userEmail) && rdr.GetString(3).Equals(userPsw))
                                {
                                    Session["userName"] = rdr.GetString(2);
                                    Session["userId"] = Convert.ToString(rdr.GetInt32(0));
                                    Session["userEmail"] = rdr.GetString(1);
                                    Response.Redirect("userHome.aspx");
                                    //Response.Write("Correct Manufacturer");
                                }
                            }
                            else
                            {
                                errLblUser.Visible = true;
                                errLblUser.Text = "Invalid Credentials";
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
}