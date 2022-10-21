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
    public partial class donate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ngoName"] != null)
            {
                ngoNameDonate.Text = Session["ngoName"].ToString();
                ngoEmailDonate.Text = Session["ngoEmailD"].ToString();
                ngoPnoDonate.Text = Session["ngoPhone_NoD"].ToString();
                //Response.Write(Session["ngoEmailD"].ToString());
                /*ngoEmailDonate.Text = Session["ngoEmail"].ToString();
                ngoPnoDonate.Text = Session["ngoPhone_No"].ToString();*/
            }
        }

        protected void medicineDonateBtn_Click(object sender, EventArgs e)
        {
            
            string userId = Session["userId"].ToString();
            string userName = Session["userName"].ToString();
            string userEmail = Session["userEmail"].ToString();
            string ngoName = Session["ngoName"].ToString();
            string ngoEmail = Session["ngoEmailD"].ToString();
            string ngoPno = Session["ngoPhone_NoD"].ToString();
            string medicineName = medicineNameTB.Text;
            string medicineCount = medicineCountTB.Text;
            string expireDate = medicineExpireTB.Text;

            SqlConnection con = new SqlConnection();

            con.ConnectionString = ConfigurationManager.ConnectionStrings["ngoConnection"].ConnectionString;
            string q = "INSERT INTO Donation (Id,userName,userEmail,ngoName,ngoEmail,ngoPno,medicineName,medicineCount,expireDate) VALUES (@Id,@userName,@userEmail,@ngoName,@ngoEmail,@ngoPno,@medicineName,@medicineCount,@expireDate)";

            try 
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(q, con))
                    {
                        cmd.Parameters.AddWithValue("@Id", userId);
                        cmd.Parameters.AddWithValue("@userName", userName);
                        cmd.Parameters.AddWithValue("@userEmail", userEmail);
                        cmd.Parameters.AddWithValue("@ngoName", ngoName);
                        cmd.Parameters.AddWithValue("@ngoEmail", ngoEmail);
                        cmd.Parameters.AddWithValue("@ngoPno", ngoPno);
                        cmd.Parameters.AddWithValue("@medicineName", medicineName);
                        cmd.Parameters.AddWithValue("@medicineCount", medicineCount);
                        cmd.Parameters.AddWithValue("@expireDate", expireDate);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                successLbl.Text = "Medicine Donated Successfully!!";
                successLbl.Visible = true;
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}