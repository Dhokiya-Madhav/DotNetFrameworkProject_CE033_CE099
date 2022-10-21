using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineApp
{
    public partial class userHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null && Session["userId"] != null)
            {
                userNameLbl.Text = Session["userName"].ToString();
            }
            else
            {
                Response.Redirect("userLogin.aspx");
            }
        }

        protected void getRowData(object sender, EventArgs e)
        {
            //Response.Write(userSideGV.SelectedRow.Cells[3].Text);
            Session["ngoName"] = userSideGV.SelectedRow.Cells[1].Text;
            Session["ngoEmailD"] = userSideGV.SelectedRow.Cells[2].Text;
            Session["ngoPhone_NoD"] = userSideGV.SelectedRow.Cells[3].Text;
            Response.Redirect("donate.aspx");
        }

        /*protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            //Response.Write("Checked");
            GridViewRow row = userSideGV.SelectedRow;
            Response.Write(row.Cells[1].Text);
        }*/


    }
}