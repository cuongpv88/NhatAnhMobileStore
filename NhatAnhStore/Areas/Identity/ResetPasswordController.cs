﻿using System;
using System.Linq;
using System.Threading.Tasks;
using NhatAnhStore.Common;
using NhatAnhStore.Data;
using NhatAnhStore.Extensions;
using NhatAnhStore.Models.View;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace NhatAnhStore.Areas.Identity
{
    [Area("Identity")]
    public class ResetPasswordController : Controller
    {
        private readonly NhatAnhDbContext _mb;
        [BindProperty]
        public ResetPasswordViewModel ResetPasswordVM { get; set; }
        public ResetPasswordController(NhatAnhDbContext mb)
        {
            _mb = mb;
            ResetPasswordVM = new ResetPasswordViewModel();
        }
        public IActionResult ResetPass(string Email)
        {
            TempData["Reset"] = "Mã xác nhận đã dược gửi vào Gmail của bạn";
            TempData.Keep();
            ResetPasswordVM.Email = Email;
            return View(ResetPasswordVM);
        }
        [HttpPost, ActionName("ResetPass")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Reset()
        {
            if (ModelState.IsValid)
            {
                var Code = HttpContext.Session.GetString(CommonAdmin.Code);
                if (ResetPasswordVM.Code.Equals(Code))
                {
                    HttpContext.Session.Clear();
                    var taiKhoan = _mb.TaiKhoanAdmin.Where(tk => tk.Email.Equals(ResetPasswordVM.Email, StringComparison.Ordinal)).FirstOrDefault();
                    taiKhoan.Pass = MD5.GetMD5(ResetPasswordVM.Password) ;
                    await _mb.SaveChangesAsync();
                    return RedirectToAction("Success");
                }
                else
                {
                    ModelState.AddModelError("", "Mã xác nhận không đúng!");
                    return View("ResetPass");
                }
            }
            return View("ResetPass");

        }
        public IActionResult Success()
        {
            return View();
        }
    }
}