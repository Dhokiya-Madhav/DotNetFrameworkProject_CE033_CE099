using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["adminname"] = "Madhav";

            Session.Clear();
            Session.Remove("adminname");
            Session["adminname"] = null;
            Response.Redirect("adminLogin.aspx");
        }
    }
}