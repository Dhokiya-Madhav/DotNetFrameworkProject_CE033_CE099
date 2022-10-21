using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class ngoLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Remove("ngoName");
            Session.Remove("ngoId");
            Session.Remove("ngoEmail");
            Session["ngoName"] = null;
            
            Response.Redirect("ngoLogin.aspx");
        }
    }
}