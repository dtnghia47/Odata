using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace _1212255.Models
{
    public class ProductsContext : DbContext
    {
        public ProductsContext()
                : base("name=ODataEntities1")
        {
        }
        public DbSet<Product> Products { get; set; }
    }
}