using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using _1212255_Odata.Models;

namespace _1212255_Odata.Models
{
    public class ProductsContext : DbContext
    {
        static ProductsContext()
        {
            //Database.SetInitializer(new ProductInitializer());
        }

        public DbSet<Product> Products { get; set; }
        // New code:
        public DbSet<Supplier> Suppliers { get; set; }
    }
}