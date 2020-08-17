using ResutrantMVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ResutrantMVC.Controllers
{
    public class ProductItemController : Controller
    {
        // GET: ProductItem
        ResturantSiteEntities conn = new ResturantSiteEntities();

        public ActionResult viewProduct()
        {
            return View(conn.items.ToList());
        }

        // GET: ProductItem/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: ProductItem/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ProductItem/Create
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "Id")] item itemToCreate)
        {
            if (!ModelState.IsValid)
                return View();
            conn.items.Add(itemToCreate);
            conn.SaveChanges();
            //Response.Redirect("StudentAdmission",true);
            return RedirectToAction("viewProduct");
        }

        // GET: ProductItem/Edit/5
        public ActionResult Edit(int id)
        {
            var itemToEdit = (from m in conn.items where m.id == id select m).First();
            return View(itemToEdit);
        }

        // POST: ProductItem/Edit/5
        [HttpPost]
        public ActionResult Edit(item itemToEdit)
        {

            var orignalRecord = (from m in conn.items where m.id == itemToEdit.id select m).First();

            if (!ModelState.IsValid)
                return View(orignalRecord);
            conn.Entry(orignalRecord).CurrentValues.SetValues(itemToEdit);

            conn.SaveChanges();
            return RedirectToAction("viewProduct");

        }

        // GET: ProductItem/Delete/5
        public ActionResult Delete(item itemToDelete)
        {

            var d = conn.items.Where(x => x.id == itemToDelete.id).FirstOrDefault();
            conn.items.Remove(d);
            conn.SaveChanges();
            return RedirectToAction("viewProduct");
        }

        // POST: ProductItem/Delete/5
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
