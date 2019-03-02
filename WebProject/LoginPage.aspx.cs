using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblLoginError.Text = "Please enter your credentials".ToString();
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=tcp:139.78.8.180,22;Initial Catalog=S18_ksjwheela;Persist Security Info=True;User ID=ksjwheela;Password=ABCD123!"))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM LoginInfo_Table WHERE UserName=@UserName AND PassWord=@PassWord";
                SqlCommand SqlCmd = new SqlCommand(query, sqlCon);
                SqlCmd.Parameters.AddWithValue("@UserName",tbusername.Text.Trim());
                SqlCmd.Parameters.AddWithValue("@PassWord",tbpassword.Text.Trim());
                int count = Convert.ToInt32(SqlCmd.ExecuteScalar());
                if(count == 1)
                {
                    Session["userName"] = tbusername.Text.Trim();
                    Session["LoggedOn"] = Session["userName"].ToString() + " is logged in";
                    Response.Redirect("~/Homepage.aspx");
                }
                else
                {
                    lblLoginError.Text = "Your credentials were invalid.  Please try again".ToString();
                    
;                }
                sqlCon.Close();
            }
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AccountCreationPage.aspx");
        }
    }
}