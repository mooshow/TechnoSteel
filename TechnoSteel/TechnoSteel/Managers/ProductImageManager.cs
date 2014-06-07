using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TechnoSteel.HelperClasses;

namespace TechnoSteel.Managers
{
    public class ProductImageManager
    {
        TechnoSteelDBEntities ctx = DbInstance.GetInstance();

        public int AddProductImage(ProductImage pImage)
        {
            if (pImage!=null)
            {
                ProductImage productImage = new ProductImage {ImageName=pImage.ImageName,
                ImageDescription=pImage.ImageDescription,ImageData=pImage.ImageData};
                pImage.Id = ctx.ProductImage.Add(productImage).Id;
                return pImage.Id;
            }
            return -1;
        }

        public byte[] GetImageDataById(int id)
        {
            return ctx.ProductImage.FirstOrDefault(i => i.Id == id).ImageData;
        }

        public ProductImage Delete(int ImageId)
        {
            ProductImage pimage = ctx.ProductImage.First(i => i.Id == ImageId);
            if (pimage!=null)
            {
                pimage = ctx.ProductImage.Remove(pimage);
                ctx.SaveChanges();
                return pimage;
            }
            return null;
        }

        public bool DoesImageInDB(int id)
        {
            if (ctx.ProductImage.First(i => i.Id == id) != null)
            {

                return true;
            }
            else
            {
                return false;
            }
        
        }
    }
}