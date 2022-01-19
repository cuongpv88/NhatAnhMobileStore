using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using NhatAnhStore.Data;
using NhatAnhStore.Models;

namespace NhatAnhStore.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class HangsController : Controller
    {
        private readonly NhatAnhDbContext _context;

        public HangsController(NhatAnhDbContext context)
        {
            _context = context;
        }

        // GET: Customer/Hangs
        public async Task<IActionResult> Index()
        {
            return View(await _context.Hang.ToListAsync());
        }

        // GET: Customer/Hangs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var hang = await _context.Hang
                .FirstOrDefaultAsync(m => m.MaHang == id);
            if (hang == null)
            {
                return NotFound();
            }

            return View(hang);
        }

        // GET: Customer/Hangs/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Customer/Hangs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("MaHang,TenHang,TrangThai")] Hang hang)
        {
            if (ModelState.IsValid)
            {
                _context.Add(hang);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(hang);
        }

        // GET: Customer/Hangs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var hang = await _context.Hang.FindAsync(id);
            if (hang == null)
            {
                return NotFound();
            }
            return View(hang);
        }

        // POST: Customer/Hangs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("MaHang,TenHang,TrangThai")] Hang hang)
        {
            if (id != hang.MaHang)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(hang);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!HangExists(hang.MaHang))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(hang);
        }

        // GET: Customer/Hangs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var hang = await _context.Hang
                .FirstOrDefaultAsync(m => m.MaHang == id);
            if (hang == null)
            {
                return NotFound();
            }

            return View(hang);
        }

        // POST: Customer/Hangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var hang = await _context.Hang.FindAsync(id);
            _context.Hang.Remove(hang);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool HangExists(int id)
        {
            return _context.Hang.Any(e => e.MaHang == id);
        }
    }
}
