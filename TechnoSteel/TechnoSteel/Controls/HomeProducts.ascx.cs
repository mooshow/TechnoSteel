using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechnoSteel.Managers;

namespace TechnoSteel.Controls
{
    public partial class HomeProducts : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductManager pMan = new ProductManager();
                rpt_HomeProducts.DataSource = pMan.GetAll();
                rpt_HomeProducts.DataBind();
            }
        }

        protected string GetImageUrl(int ImageId)
        {
            return "~/Handlers/ImageHandler.ashx?ImgId=" + ImageId;
        }
    }
}