using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace icCoffee
{
    public partial class reviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            DropDownList1.Visible = true;
            if (!IsPostBack)
            {
            //clear previously viewed selections on reload
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

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
        //show prooer database table when selected by user
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
