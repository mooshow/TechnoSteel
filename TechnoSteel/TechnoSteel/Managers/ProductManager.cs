using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TechnoSteel.HelperClasses;



namespace TechnoSteel.Managers
{
    public class ProductManager
    {

        TechnoSteelDBEntities ctx = DbInstance.GetInstance();

        public List<Product> GetAll()
        {
            List<Product> plist = ctx.Product.ToList().Select(p => new Product
            {
                Id=p.Id,
                Name = p.Name,
                Description = p.Description,
                Model = p.Model,
                fk_ProductImageId = p.fk_ProductImageId,
                fk_CategoryId = p.fk_CategoryId,
                ProductCategory = p.ProductCategory,
                ProductImage = new ProductImage {ImageName=p.ProductImage.ImageName }

            }).ToList();
            
            return plist;
        }

        public Product AddProduct(Product p)
        {
            if (p !=null)
            {
		        Product product = new Product {Name=p.Name,Model=p.Model,Description=p.Description,
                fk_CategoryId=p.fk_CategoryId,fk_ProductImageId=p.fk_ProductImageId,
                ShowInHomeAlbum=p.ShowInHomeAlbum,ShowInHomeProducts=p.ShowInHomeProducts,
                ShowInProductsAlbum=p.ShowInProductsAlbum
                };
                p = ctx.Product.Add(product);
                ctx.SaveChanges();
                return p;
            }
            return null;
        }

        public Product AddFullProduct(Product p,ProductImage pImage)
        {
            if (p !=null && pImage!=null)
            {
                ProductImageManager pImangeManager = new ProductImageManager();
                int imageId = pImangeManager.AddProductImage(pImage);
                if (imageId!=-1)
                {
                    p.fk_ProductImageId = imageId;
                   return AddProduct(p);

                }
                return null;
		        
                
            }
            return null;
        }


        public Product DeleteFullProduct(int productId)
        {
            Product p = ctx.Product.First(pp => pp.Id == productId);
            if (p!=null)
            {
                int ImageId = Convert.ToInt32( p.fk_ProductImageId);
                //delete product
                p = ctx.Product.Remove(p);
                ctx.SaveChanges();
                //delete Image
                (new ProductImageManager()).Delete(ImageId);
                return p;
                
            }
            return null;
        }


        public Product getById(int pId)
        {

            return ctx.Product.FirstOrDefault(p => p.Id == pId);
        }
    }
}