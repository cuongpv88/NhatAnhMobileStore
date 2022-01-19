using System;
using System.Linq;
using NhatAnhStore.Common;
using NhatAnhStore.Data;
using NhatAnhStore.Extensions;
using NhatAnhStore.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace NhatAnhStore.Areas.Identity
{
    [Area("Identity")]
    public class LoginController : Controller
    {
        private readonly NhatAnhDbContext _mb;
        public LoginController(NhatAnhDbContext mb)
        {
            _mb = mb;
        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost, ActionName("Index")]
        [ValidateAntiForgeryToken]
        public IActionResult Login(TaiKhoanAdmin TKAdmin)
        {
            if (ModelState.IsValid)
            {
                var taiKhoan = _mb.TaiKhoanAdmin.Where(tk => (tk.User==TKAdmin.User && 
                tk.Pass.Equals(TKAdmin.Pass) )).SingleOrDefault();

                if (taiKhoan != null)
                {
                    if(!Compare.CompareString(taiKhoan.User,TKAdmin.User))
                    {
                        ModelState.AddModelError("", "Tài khoản không tồn tại.");
                        return View("Index");
                    }
                    if(!taiKhoan.TrangThai)
                    {
                        ModelState.AddModelError("", "Tài khoản đang bị khóa.");
                        return View("Index");
                    }
                    else
                    {
                        HttpContext.Session.SetString(CommonAdmin.USER_SESSION, taiKhoan.User);
                        HttpContext.Session.SetString(CommonAdmin.NAME_SESSION, taiKhoan.Name);
                        HttpContext.Session.SetString(CommonAdmin.ROLE_SESSION, taiKhoan.Role);
                        //return RedirectToAction("Index", "DonHangs", new { area = "Admin" });
                        return RedirectToAction("Index", "Home", new { area = "Admin" });
                    }  
                }
                else
                {
                    ModelState.AddModelError("", "Tài khoản không tồn tại.");
                }
            }
            return View("Index");
        }
    }
}