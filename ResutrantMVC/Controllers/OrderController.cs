using ResutrantMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ResutrantMVC.Controllers
{
    public class OrderController : Controller
    {
        // GET: Order
        ResturantSiteEntities conn = new ResturantSiteEntities();

        public ActionResult viewOrder()
        {
            return View(conn.Orders.ToList());
        }

        // GET: Order/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Order/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Order/Create
        [HttpPost]
        public ActionResult Create(Order newOrder)
        {

            if (!ModelState.IsValid)
                return View();
            conn.Orders.Add(newOrder);
            conn.SaveChanges();
            //Response.Redirect("StudentAdmission",true);
            return RedirectToAction("viewOrder");
        }

        // GET: Order/Edit/5
        public ActionResult Edit(int id)
        {
            var orderToEdit = (from m in conn.Orders where m.id == id select m).First();
            return View(orderToEdit);
        }

        // POST: Order/Edit/5
        [HttpPost]
        public ActionResult Edit(Order orderToEdit)
        {

            var orignalRecord = (from m in conn.Orders where m.id == orderToEdit.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            conn.Entry(orignalRecord).CurrentValues.SetValues(orderToEdit);

            conn.SaveChanges();
            return RedirectToAction("viewOrder");


        }

        // GET: Order/Delete/5
        public ActionResult Delete(Order orderToDelete)
        {

            var d = conn.Orders.Where(x => x.id ==orderToDelete.id).FirstOrDefault();
            conn.Orders.Remove(d);
            conn.SaveChanges();
            return RedirectToAction("viewOrder");
        }

        // POST: Order/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
