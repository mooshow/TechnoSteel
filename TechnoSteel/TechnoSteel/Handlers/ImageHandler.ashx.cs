using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using TechnoSteel.Managers;

namespace TechnoSteel.Handlers
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.Clear();
            context.Response.ContentType = "image/jpeg";
            if (context.Request.QueryString["ImgId"] != null)
            {

                int imgId = 0;
                imgId = Convert.ToInt16(context.Request.QueryString["imgId"]);
                MemoryStream memoryStream = new MemoryStream(GetImageFromDB(imgId), false);
                System.Drawing.Image imgFromDataBase = System.Drawing.Image.FromStream(memoryStream);
                imgFromDataBase.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);


            }
        }

        private byte[] GetImageFromDB(int imgId)
        {
            ProductImageManager pImageMan = new ProductImageManager();
            return pImageMan.GetImageDataById(imgId);
        }
        private bool DoesImageInDb(int imgId)
        {
            ProductImageManager pImageMan = new ProductImageManager();
            return pImageMan.DoesImageInDB(imgId);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}