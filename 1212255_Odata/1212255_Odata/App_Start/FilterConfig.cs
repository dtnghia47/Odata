﻿using System.Web;
using System.Web.Mvc;

namespace _1212255_Odata
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}