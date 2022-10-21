using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class ngoHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ngoName"] != null)
            {
                ngoNameLbl.Text = Session["ngoName"].ToString();
            }
            else
            {
                Response.Redirect("ngoLogin.aspx");
            }
        }
    }
}