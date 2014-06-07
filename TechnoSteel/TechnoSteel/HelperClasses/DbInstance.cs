using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TechnoSteel.HelperClasses
{
    public class DbInstance
    {
        static TechnoSteelDBEntities Entities = new TechnoSteelDBEntities();
        public static TechnoSteelDBEntities GetInstance()
        {
            return Entities;
        }
    }
}