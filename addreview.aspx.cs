using icCoffee.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace icCoffee
{
    public partial class addreview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                ShopDDL.AppendDataBoundItems = true;
                ShopDDL.Items.Insert(0, new ListItem("Select Shop", String.Empty));
                ShopDDL.SelectedIndex = 0;

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {


            dbConnection.ExecuteInsertQuery("Insert kd_Review (shopID, rating, review) Values ('" + ShopDDL.SelectedValue + "', '" + rbReview.SelectedValue + "', '" + txtReview.Text + "')");
            lbResult.Visible = true;
            lbResult.Text = "Your review has been added!";
            
        }



        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ShopDDL.SelectedIndex= 0;
            rbReview.ClearSelection(); 
            txtReview.Text = "";
            lbResult.Visible = false; 
        }
 
    }


}