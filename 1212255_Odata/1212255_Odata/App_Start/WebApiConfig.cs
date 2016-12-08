using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web.Http;
using Microsoft.Owin.Security.OAuth;
using Newtonsoft.Json.Serialization;
using _1212255_Odata.Models;
using System.Web.OData.Builder;
using System.Web.OData.Extensions;

namespace _1212255_Odata
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            ODataModelBuilder builder = new ODataConventionModelBuilder();
            builder.EntitySet<Product>("Products");
            // New code:
            builder.EntitySet<Supplier>("Suppliers");
            config.MapODataServiceRoute("ODataRoute", null, builder.GetEdmModel());
        }
    }
}
