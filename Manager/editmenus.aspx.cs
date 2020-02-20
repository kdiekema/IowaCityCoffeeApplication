using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using icCoffee.Data;

namespace icCoffee.Manager
{
    public partial class menus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

            {
                DropDownList1.AppendDataBoundItems = true;
                DropDownList1.Items.Insert(0, new ListItem("Select Shop", String.Empty));
                DropDownList1.SelectedIndex = 0;
                
                if (DropDownList1.SelectedIndex == 0)
                { DetailsView1.Visible = false; }
                else
                { DetailsView1.Visible = true; }
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            { DetailsView1.Visible = false;
                GridView1.Visible = false; 
            }
            else
            { DetailsView1.Visible = true; }
        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();  // This updates GridView with new entry
        }


    }
}