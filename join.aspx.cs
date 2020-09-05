using icCoffee.Data;
using icCoffee.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace icCoffee
{
    public partial class Join : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)

            {
            //reset entries on reload
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtFave.Text = "";
        }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
        // Add entries to SQL database if submit button is clicked
                dbConnection.ExecuteInsertQuery("Insert kd_Network (firstName, lastName, email, phone, favorite) Values ('" + txtFirstName.Text + "', '" + txtLastName.Text + "', '" + txtEmail.Text + "', '" + txtPhone.Text + "', '" + txtFave.Text + "')");
                lbResult.Text = "You have been added!";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
        // Clear entries if cancel button is clicked
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtFave.Text = "";

        }
    }
}
