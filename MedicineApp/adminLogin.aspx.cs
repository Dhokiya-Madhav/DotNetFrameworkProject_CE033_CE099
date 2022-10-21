using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminLoginBtn_Click(object sender, EventArgs e)
        {
            String uname = (String)adminNametb.Text;
            String psw = (String)adminPasstb.Text;

            if(uname == "Madhav" && psw == "1234567")
            {
                Session["adminname"] = "Madhav";
                Response.Redirect("adminHome.aspx");
                //Server.Transfer("adminHome.aspx");
            }
            else
            {
                errLbl.Text = "Invalid Credentials";
                errLbl.Visible = true;
            }

        }
    }
}