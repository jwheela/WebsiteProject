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
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void BtnPurchase_Click(object sender, EventArgs e)
        {
            string MyPreOrderStatement = "INSERT INTO BuyGame (SystemType, EditionType, StoreType) values('" + ddlSystemType1.SelectedItem.ToString() + "', '" + ddlGameEdition1.SelectedItem.ToString() + "', '" + ddlRetailer.SelectedItem.ToString() + "');";
            var sqlConn = ConfigurationManager.ConnectionStrings["S18_ksjwheelaConnectionString"].ConnectionString;

            SqlConnection sqlPreOrderCon = new SqlConnection(sqlConn);

            SqlCommand SqlCmd = new SqlCommand(MyPreOrderStatement, sqlPreOrderCon);

            //Move this outside the try/catch.
           

            try
            {
                sqlPreOrderCon.Open();
                SqlCmd.ExecuteNonQuery();
                Response.AppendHeader("Refresh", "5;url=Homepage.aspx");
                lblYesPurchase.Text = "Thank you.  You will now be redirected to our third party payment system.";



            }
            catch (Exception ex)
            {
                lblNoPurchase.Text = "Order could not be placed. Please try again.: " + ex.Message;
                sqlPreOrderCon.Close();

            }

           
        }
    }
}
