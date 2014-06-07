using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TechnoSteel.Managers;

namespace TechnoSteel.Controls
{
    public partial class ctrl_AddProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductCategoryManager pCatManager = new ProductCategoryManager();
                ddl_ProductCategory.DataSource = pCatManager.GetAll();
                ddl_ProductCategory.DataTextField = "Name";
                ddl_ProductCategory.DataValueField = "Id";
                ddl_ProductCategory.DataBind();
            }
        }

        protected void btn_Save_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                byte[] bb = new byte[FileUpload1.PostedFile.ContentLength];
                FileUpload1.PostedFile.InputStream.Read(bb, 0, FileUpload1.PostedFile.ContentLength);
                ProductImage pImage = new ProductImage {ImageName=FileUpload1.FileName,
                ImageData=bb};
                Product p = new Product {Name=txt_ProductName.Text,Model=txt_ProductModel.Text,Description=txt_desc.Text,
                fk_CategoryId=int.Parse(ddl_ProductCategory.SelectedValue),ShowInHomeAlbum=chk_HomeAlbum.Checked,
                ShowInHomeProducts=chk_HomeProducts.Checked,ShowInProductsAlbum=chk_ProductsAlbum.Checked
                };

                ProductManager pManager = new ProductManager();
                pManager.AddFullProduct(p, pImage);
                Response.Redirect("~/home.aspx");

            }
        }


        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string FilePath = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
            if (FilePath == ".jpg" || FilePath == ".jpeg" || FilePath == ".png" || FilePath == ".gif"  )
            {

                if (FileUpload1.FileBytes.Length > 4500000)
                {

                    vld_cstm_file.ErrorMessage = "File size exceeds maximum limit 10 MB.";

                    args.IsValid = false;

                }

                else
                {

                    args.IsValid = true;

                }

            }

            else
            {

                vld_cstm_file.ErrorMessage = "File type should be jpg,jpeg,png,gif";

                args.IsValid = false;

            }

        }

    }



}