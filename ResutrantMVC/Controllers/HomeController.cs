using ResutrantMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ResutrantMVC.Controllers
{
    public class HomeController : Controller
    {
        ResturantSiteEntities conn = new ResturantSiteEntities();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult viewQuery()
        {
            return View(conn.Contacts.ToList());
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

        public ActionResult query()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }


        [HttpPost]
        public ActionResult SendMsg(Connection log)
        {
            //object of the feed back class that is used to passs  the record in the table by using the class of the controller or model class and using the getter setter method of the class
            Connection obj_Feed = new Connection();
            //passin the query to the controller of the main class that is used to insert the reocrd
            String query = "insert into Contact (Name,Email,Contact,Message) values('" + log.Name + "','" + log.Email + "','" + log.contact + "','" + log.Msg + "')";
            //calling the method of the model class
            obj_Feed.send(query);
            //redirecting the user to the feed back page after giving the feed back to the user 
            return View("Query");


        }

    }
}