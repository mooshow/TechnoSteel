using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechnoSteel.Managers;

namespace TechnoSteel.Controls
{
    public partial class ctrl_ManageProducts : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Product> pList=(new ProductManager()).GetAll();
                ViewState["Products"] = pList;
                grd_Products.DataSource = pList;
                grd_Products.DataBind();
            }
        }

        protected void grd_Products_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productId =Convert.ToInt32( e.Keys["Id"]);
            List<Product> pList =(List<Product>) ViewState["Products"];
            Product p = pList.First(pp => pp.Id == productId);
            if (p!=null)
            {
                ProductManager pMan = new ProductManager();
                pMan.DeleteFullProduct(p.Id);
                pList.Remove(p);
                ViewState["Products"] = pList;
                grd_Products.DataSource = pList;
                grd_Products.DataBind();
                
            }
            
            
        }
    }
}