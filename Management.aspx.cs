using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace CrafticArtProject
{
    public partial class Management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SUBMITButton1_Click(object sender, EventArgs e)
        {
          

            if (USER_NAMEtxt.Text == "admin" && PASSWORDtxt.Text == "12345" 
                || USER_NAMEtxt.Text == "shamrat" && PASSWORDtxt.Text == "12345"
                || USER_NAMEtxt.Text == "ashraf" && PASSWORDtxt.Text == "12345"
                || USER_NAMEtxt.Text == "rajib" && PASSWORDtxt.Text == "12345")
            {

                Response.Redirect("~/Dashboard/Dashboard.aspx");
            }
            else { 
            
                showPopUp("invalid  name or password");
            }
        }
        public void showPopUp(String str)
        {
            Response.Write("<script>alert('" + str + "');</script>");
        }
    }
}