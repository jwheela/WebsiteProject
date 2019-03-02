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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=tcp:139.78.8.180,22;Initial Catalog=S18_ksjwheela;Persist Security Info=True;User ID=ksjwheela;Password=ABCD123!";
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void BtnAccountCreate_Click(object sender, EventArgs e)
        {
            if (tboxUsernameCreate.Text == "" || tboxPasswordCreate.Text == "")
                lblErrorMessage.Text = "Please fill the required fields";
            else if (tboxPasswordCreate.Text != tboxPasswordConfirm.Text)
                lblErrorMessage.Text = "Password does not match";
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("@Email", tboxEmailCreate.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@UserName", tboxUsernameCreate.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@PassWord", tboxPasswordCreate.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    lblSuccessMessage.Text = "Submitted successfully";
                    tboxUsernameCreate.Text = tboxEmailCreate.Text = tboxPasswordCreate.Text = tboxPasswordConfirm.Text = "";
                    hfUserID.Value = "";
                    sqlCon.Close();
                }
            }

        }

        protected void BtnAccountReset_Click(object sender, EventArgs e)
        {
            tboxUsernameCreate.Text = tboxEmailCreate.Text = tboxPasswordCreate.Text = tboxPasswordConfirm.Text = "";
            hfUserID.Value = "";
            lblErrorMessage.Text = "";
        }
    }
}
