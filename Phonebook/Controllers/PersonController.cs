using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Phonebook.Models;

namespace Phonebook.Controllers
{
  public class PersonController : Controller
  {
    public IActionResult Index(string lastName="", int page=1)
    {
      var source =  new SourceManager();

      var idStartRecord = (page - 1) * SourceManager.perPage + 1;
      var peopleList = source.Get2(idStartRecord, SourceManager.perPage, lastName);

      ViewData["Page"] = page;
      ViewData["Start"] = idStartRecord;
      ViewData["Name"] = lastName;

      var rec = source.GetNumberOfRecords2(lastName);
      var perpage = SourceManager.perPage;

      if (rec % perpage == 0)
      {
        ViewData["Pages"] = rec / perpage;
      }
      else
      {
        ViewData["Pages"] = rec / perpage + 1;
      }
      return View(peopleList);
    }

    [HttpGet]
    public IActionResult Add()
    {
      return View();
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult Add(PeopleModel record)
    {
      if (ModelState.IsValid)
      {
        var source =  new SourceManager();
        source.Add(record);

        return RedirectToAction("Index");
      }

      return View(record);
    }

    [HttpGet]
    public IActionResult Edit(int id)
    {
      var source = new SourceManager();
      var record = source.GetById(id);

      return View(record);
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult Edit(PeopleModel record)
    {
      var source = new SourceManager();
      source.Update(record);

      return RedirectToAction("Index");
    }

    [HttpGet]
    public IActionResult Remove(int id)
    {
      var source = new SourceManager();
      var record = source.GetById(id);

      return View(record);
    }

    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult Remove(PeopleModel record)
    {
      var source = new SourceManager();
      source.Remove(record.Id);

      return RedirectToAction("Index");
    }
  }
}