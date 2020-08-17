using ResutrantMVC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ResutrantMVC.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Login()
        {
            return View();
        }

        // GET: Login
        public ActionResult DashBoard()
        {
            return View();
        }

        // GET: Login
        public ActionResult Invalid()
        {
            return View();
        }

        //this method is used to validte the user name or password of the user after verfiying the both the control will  transfer to another page 
        [HttpPost]
        public ActionResult LoginCheck(AdminLogin log)
        {

            AdminLogin obj_Login = new AdminLogin();
            String query = "select * from Admin where Email='" + log.Name + "' and Password='" + log.Password + "'";
            DataTable tbl = new DataTable();
            tbl = obj_Login.SrchLogin(query);

            if (tbl.Rows.Count > 0)
            {

                return View("DashBoard");
            }
            else
            {
                return View("Invalid");
            }

        }
    }
}