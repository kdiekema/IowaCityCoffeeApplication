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
            // Add new review to the list
                ShopDDL.AppendDataBoundItems = true;
             // Reset drop down list to empty choice
                ShopDDL.Items.Insert(0, new ListItem("Select Shop", String.Empty));
                ShopDDL.SelectedIndex = 0;

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // SQK query to add review to database if submit button clicked
            dbConnection.ExecuteInsertQuery("Insert kd_Review (shopID, rating, review) Values ('" + ShopDDL.SelectedValue + "', '" + rbReview.SelectedValue + "', '" + txtReview.Text + "')");
            // show feedback that review was added
            lbResult.Visible = true;
            lbResult.Text = "Your review has been added!";
            
        }



        protected void btnCancel_Click(object sender, EventArgs e)
        {
        //if user clickcs cancel button, reset and clear all inputs
            ShopDDL.SelectedIndex= 0;
            rbReview.ClearSelection(); 
            txtReview.Text = "";
            lbResult.Visible = false; 
        }
 
    }


}
