using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        private string currentYear = DateTime.Today.Year.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblYear.Text = currentYear;
            if(Session["LoggedOn"] != null)
            {
                lblUserIsLoggedIn.Text = Session["LoggedOn"].ToString();
                LogOut.Visible = true;
                LogIn.Visible = false;
                CreateAccount.Visible = false;
                
            }
            else
            {
                lblUserIsLoggedIn.Text = "User has not logged in";
                LogOut.Visible = false;
            }
           
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Logout.aspx");
        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void CreateAccount_click(object sender, EventArgs e)
        {
            Response.Redirect("~/AccountCreationPage.aspx");
        }
    }
}