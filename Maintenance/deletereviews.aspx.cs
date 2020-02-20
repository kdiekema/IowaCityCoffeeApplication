using icCoffee.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace icCoffee.Maintenance
{
    public partial class reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DropDownList1.Visible = true;
            if (!IsPostBack)
            {

                DropDownList1.AppendDataBoundItems = true;
                DropDownList1.Items.Insert(0, new ListItem("Select Shop", String.Empty));
                DropDownList1.SelectedIndex = 0;
                if (DropDownList1.SelectedIndex == 0)
                { GridView2.Visible = true; }
                else
                {
                    GridView1.Visible = true;
                    GridView2.Visible = false;
                }
            }   
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            { GridView2.Visible = true; }
            else
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
            }
        }

    }
}