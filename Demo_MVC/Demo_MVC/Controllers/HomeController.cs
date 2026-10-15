using Demo_MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Demo_MVC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var s1=new List<student> 
            {
                new student{RollNo=1,Name="Darshan"},
                new student{RollNo=2,Name="Abhay"},
                new student{RollNo=3,Name="Khushal"}
            };
            return View(s1);
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