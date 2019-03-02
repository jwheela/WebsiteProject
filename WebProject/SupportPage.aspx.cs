using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebProject
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGetHelp_Click(object sender, EventArgs e)
        {
            string MySupportStatement = "INSERT INTO FixGame_Table (VidSystemType, GameVersionType, IssueExperiencedType) values('" + ddlSystemType.SelectedItem.ToString() + "', '" + ddlGameVersion.SelectedItem.ToString() + "', '" + ddlIssueExperienced.SelectedItem.ToString() + "')";
            var sqlConn = ConfigurationManager.ConnectionStrings["S18_ksjwheelaConnectionString"].ConnectionString;

            SqlConnection sqlFixGameCon = new SqlConnection(sqlConn);


            SqlCommand SqlCmd = new SqlCommand(MySupportStatement, sqlFixGameCon);

            try
            {
                sqlFixGameCon.Open();
                SqlCmd.ExecuteNonQuery();
                lblIssueSubmitted.Text = "Thank you for your report.  Your ticket has been submitted.";


            }
            catch (Exception ex)
            {
                sqlFixGameCon.Close();
                lblNoSubmitted.Text = "You need to specifiy the issue." + ex.Message;
            }
        }
    }
}