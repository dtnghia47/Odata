using _1212255.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.OData;
using System.Data.Entity;

namespace _1212255.Controllers
{
    public class ProductsController : Controller
    {
        ODataEntities db = new ODataEntities();
        // GET: Products
        public ActionResult Index()
        {
            return View(db.Product);
        }
        //Post
        public async Task<IHttpActionResult> Post(Product product)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            db.Product.Add(product);
            await db.SaveChangesAsync();
            return Created(product);
        }

        private IHttpActionResult Created(Product product)
        {
            throw new NotImplementedException();
        }

        //update
        public async Task<IHttpActionResult> Patch([FromODataUri] int key, Delta<Product> product)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            var entity = await db.Product.FindAsync(key);
            if (entity == null)
            {
                return NotFound();
            }
            product.Patch(entity);
            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProductExists(key))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            return Updated(entity);
        }

        private IHttpActionResult Updated(Product entity)
        {
            throw new NotImplementedException();
        }

        public async Task<IHttpActionResult> Put([FromODataUri] int key, Product update)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            if (key != update.id)
            {
                return BadRequest();
            }
            db.Entry(update).State = EntityState.Modified;
            try
            {
                await db.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ProductExists(key))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }
            return Updated(update);
        }

        private IHttpActionResult BadRequest(ModelStateDictionary modelState)
        {
            throw new NotImplementedException();
        }

        private bool ProductExists(int key)
        {
            throw new NotImplementedException();
        }

        private IHttpActionResult NotFound()
        {
            throw new NotImplementedException();
        }

        private IHttpActionResult BadRequest()
        {
            throw new NotImplementedException();
        }

        public async Task<IHttpActionResult> Delete([FromODataUri] int key)
        {
            var product = await db.Product.FindAsync(key);
            if (product == null)
            {
                return NotFound();
            }
            db.Product.Remove(product);
            await db.SaveChangesAsync();
            return StatusCode(HttpStatusCode.NoContent);
        }

        private IHttpActionResult StatusCode(HttpStatusCode noContent)
        {
            throw new NotImplementedException();
        }
    }
}