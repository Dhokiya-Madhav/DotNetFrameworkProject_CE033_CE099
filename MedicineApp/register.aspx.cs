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
    public partial class register : System.Web.UI.Page
    {
        int userType;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Visible = false;
            lblUserEmail.Visible = false;
            lblUserCity.Visible = false;
            lblUserPassword.Visible = false;
            lblUserPno.Visible = false;
            TextBoxUserName.Visible = false;
            TextBoxUserEmail.Visible = false;
            TextBoxUserCity.Visible = false;
            TextBoxUserPassword.Visible = false;
            TextBoxUserPno.Visible = false;

            ButtonRegister.Visible = false;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButtonListUserSelection.SelectedItem.Value == "individualUser")
            {
                
                userType = 1;
                ButtonRegister.Visible = true;
                lblUser.Visible = true;
                lblUserEmail.Visible = true;
                lblUserCity.Visible = true;
                lblUserPassword.Visible = true;
                lblUserPno.Visible = true;

                TextBoxUserName.Visible = true;
                TextBoxUserEmail.Visible = true;
                TextBoxUserCity.Visible = true;
                TextBoxUserPassword.Visible = true;
                TextBoxUserPno.Visible = true;

                lblUser.Text = "Username";
                lblUserEmail.Text = "User Email";
                lblUserPassword.Text = "User Password";
                lblUserPno.Text = "Phone Number";
                lblUserCity.Text = "City";
            }
            else if (RadioButtonListUserSelection.SelectedItem.Value == "manufacturer")
            {
                userType = 10;
                ButtonRegister.Visible = true;
                lblUser.Visible = true;
                lblUserEmail.Visible = true;
                lblUserCity.Visible = true;
                lblUserPassword.Visible = true;

                TextBoxUserName.Visible = true;
                TextBoxUserEmail.Visible = true;
                TextBoxUserCity.Visible = true;
                TextBoxUserPassword.Visible = true;
  

                lblUser.Text = "Company Name";
                lblUserEmail.Text = "Company Email";
                lblUserPassword.Text = "Password";
                lblUserCity.Text = "City";

                
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
   

            if(lblUser.Text == "Username")
            {
                Random rdr = new Random();
                int id = rdr.Next(500, 700);

                SqlConnection con = new SqlConnection();

                con.ConnectionString = ConfigurationManager.ConnectionStrings["ngoConnection"].ConnectionString;
                string q = "INSERT INTO donor (Id,Name,Email,Phone_No,Password,City,Donated_To,Medicine_Name,Date) VALUES (@Id,@Name,@Email,@Phone_No,@Password,@City,@Donated_To,@Medicine_Name,@Date)";

                String uname = TextBoxUserName.Text;
                String userEmail = TextBoxUserEmail.Text;
                String userPhone = TextBoxUserPno.Text;
                String userPassword = TextBoxUserPassword.Text;
                String userCity = TextBoxUserCity.Text;
                String donatedTo = "";
                String medicineName = "";
                String medicineDonateDate = "";
                try
                {
                    using (con)
                    {
                        using (SqlCommand cmd = new SqlCommand(q, con))
                        {
                            cmd.Parameters.AddWithValue("@Id", id);
                            cmd.Parameters.AddWithValue("@Name", uname);
                            cmd.Parameters.AddWithValue("@Email", userEmail);
                            cmd.Parameters.AddWithValue("@Phone_No", userPhone);
                            cmd.Parameters.AddWithValue("@Password", userPassword);
                            cmd.Parameters.AddWithValue("@City", userCity);
                            cmd.Parameters.AddWithValue("@Donated_To", donatedTo);
                            cmd.Parameters.AddWithValue("@Medicine_Name", medicineName);
                            cmd.Parameters.AddWithValue("@Date", medicineDonateDate);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
                Session["userName"] = uname;
                Session["userId"] = id;
                Session["userEmail"] = userEmail; 
                Response.Redirect("userHome.aspx");
            }
            else
            {
                Random rdr = new Random();
                int id = rdr.Next(300,500);

                SqlConnection con = new SqlConnection();

                con.ConnectionString = ConfigurationManager.ConnectionStrings["ngoConnection"].ConnectionString;
                string q = "INSERT INTO manufacturer (Id,Company_Name,Email,Password,City,Medicine_Name,Medicine_Count,Donated_To,Date) VALUES (@Id,@Company_Name,@Email,@Password,@City,@Medicine_Name,@Medicine_Count,@Donated_To,@Date)";

                String uname = TextBoxUserName.Text;
                String userEmail = TextBoxUserEmail.Text;
                String userPassword = TextBoxUserPassword.Text;
                String userCity = TextBoxUserCity.Text;
                String donatedTo = "";
                String medicineName = "";
                String medicineDonateDate = "";
                try
                {
                    using (con)
                    {
                        using (SqlCommand cmd = new SqlCommand(q, con))
                        {
                            cmd.Parameters.AddWithValue("@Id", id);
                            cmd.Parameters.AddWithValue("@Company_Name", uname);
                            cmd.Parameters.AddWithValue("@Email", userEmail);
                            cmd.Parameters.AddWithValue("@Password", userPassword);
                            cmd.Parameters.AddWithValue("@City", userCity);
                            cmd.Parameters.AddWithValue("@Medicine_Name", medicineName);
                            cmd.Parameters.AddWithValue("@Medicine_Count", "");
                            cmd.Parameters.AddWithValue("@Donated_To", donatedTo);
                            cmd.Parameters.AddWithValue("@Date", medicineDonateDate);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
                Session["userName"] = uname;
                Session["userId"] = id;
                Session["userEmail"] = userEmail;
                Response.Redirect("userHome.aspx");
            }
            
        }



        /*protected void RadioButtonListUserSelection_SelectedIndexChanged(object sender, EventArgs e)
        {
            //String val = RadioButtonListUserSelection.SelectedItem.Value;
            Response.Write("Hello");
        }*/
    }
}