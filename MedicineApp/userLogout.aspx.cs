using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class userLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Remove("userName");
            Session.Remove("userId");
            Session["userName"] = null;
            Session["userId"] = null;
            Response.Redirect("userLogin.aspx");
        }
    }
}