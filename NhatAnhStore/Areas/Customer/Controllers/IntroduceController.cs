using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NhatAnhStore.Areas.Customer.Identity;

namespace NhatAnhStore.Areas.Customer.Controllers
{
    public class IntroduceController : Controller
    {
        [Area("Customer")]
        public IActionResult Index()
        {
            return View();
        }
    }
}