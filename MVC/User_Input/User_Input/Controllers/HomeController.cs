using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using User_Input.Models;

namespace User_Input.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index() 
        {
            return View(new UserInput());
        }
        [HttpPost]

        public ActionResult Index(UserInput u)
        {
            if (!ModelState.IsValid)
            {
                return View(u);
            }
            return View("Details",u);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}