using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TechnoSteel.HelperClasses;

namespace TechnoSteel.Managers
{
    public class ProductCategoryManager
    {
        TechnoSteelDBEntities ctx = DbInstance.GetInstance();
        public List<ProductCategory> GetAll()
        {
            
            return ctx.ProductCategory.ToList();
        }
    }
}