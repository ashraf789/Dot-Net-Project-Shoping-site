using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrafticArtProject
{
    public partial class Home : System.Web.UI.Page
    {
        CrafticArtProject ob = new CrafticArtProject();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadGrid();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CUSTOMER_ORDER.aspx");
        }

        public void loadGrid()
        {

            string query = @"SELECT * FROM PRODUCT_DETAILS";
            PRODUCTGRIDVIEW.DataSource = ob.getDataTable(query);
      
            PRODUCTGRIDVIEW.DataBind();
        }

    }
}