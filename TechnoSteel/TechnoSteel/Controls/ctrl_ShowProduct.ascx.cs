using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechnoSteel.Managers;

namespace TechnoSteel.Controls
{
    public partial class ctrl_ShowProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ProductId"]!=null)
                {
                    int pId=Convert.ToInt32( Request.QueryString["ProductId"]);
                    ProductManager pMan=new ProductManager();
                    Product p= pMan.getById(pId);
                    if (p!=null)
                    {
                        ViewState["pImageId"] = p.fk_ProductImageId;
                       parPname.InnerText = p.Name;
                       parPmodel.InnerText = p.Model;
                       parPDesc.InnerText = p.Description;
                        img_product.DataBind();
                    }
                }
            }
        }
        public string GetImageForProduct()
        {
            if (ViewState["pImageId"]!=null)
            {
                
                return "~/Handlers/ImageHandler.ashx?imgId=" + ViewState["pImageId"].ToString();
            }
            return null;
        }
    }
}