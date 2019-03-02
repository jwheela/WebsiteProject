using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void BtnNewsImage_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/News.aspx");
        }
    }
}