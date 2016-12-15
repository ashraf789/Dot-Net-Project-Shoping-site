using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrafticArtProject
{
    public partial class CUSTOMER_ORDER : System.Web.UI.Page
    {
        CrafticArtProject ob = new CrafticArtProject();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (string.IsNullOrWhiteSpace(PRODUCT_IDtxt.Text)
                || string.IsNullOrWhiteSpace(CUSTOMER_NAMEtxt.Text)
                || string.IsNullOrWhiteSpace(CUSTOMER_ADDRESStxt.Text)
                || string.IsNullOrWhiteSpace(CUSTOMER_PHONE_NUMBERtxt.Text)
                || string.IsNullOrWhiteSpace(ORDER_DATEtxt.Text)
                || string.IsNullOrWhiteSpace(PRODUCT_QUANTITYtxt.Text)
                )
            {
                showPopUp("Datafield can,t be empty");
            }
            else
            {
                string query = @"INSERT INTO [dbo].[CUSTOMER_ORDER]
                   ([PRODUCT_ID]
                   ,[CUSTOMER_NAME]
                   ,[CUSTOMER_ADDRESS]
                   ,[CUSTOMER_PHONE_NUMBER]
                   ,[ORDER_DATE]
                   ,[PRODUCT_QUANTITY])
                    VALUES
                   ('" + PRODUCT_IDtxt.Text + "','" + CUSTOMER_NAMEtxt.Text + "','" + CUSTOMER_ADDRESStxt.Text + "','" + CUSTOMER_PHONE_NUMBERtxt.Text + "','" + ORDER_DATEtxt.Text + "','" + PRODUCT_QUANTITYtxt.Text + "')";

                if (ob.executeQuery(query) == 1)
                {
                    showPopUp("Successfully send your order request");
                }
                else
                {
                    showPopUp("Some thing is wrong please insert data carefully ");
                }
                
            }
            
        }

        public void showPopUp(String str) {
            Response.Write("<script>alert('"+str+"');</script>");
        }
    }
}