using NhatAnhStore.Data;
using NhatAnhStore.Models;
using NhatAnhStore.Models.View;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace NhatAnhStore.Extensions
{
    public static class News
    {
        public static KhachHangAndDonHang SendName(NhatAnhDbContext _mb)
        {
            var lst = _mb.DonHang.Include(dh=>dh.KhachHang).Where(dh => dh.TrangThai.Equals("Chưa duyệt")).ToList();
            KhachHangAndDonHang khachHangAndDonHang = new KhachHangAndDonHang();
            khachHangAndDonHang.TenKH = new List<string>();
            khachHangAndDonHang.MaDH = new List<int>();
            foreach (var name in lst)
            {
                khachHangAndDonHang.TenKH.Add(name.KhachHang.TenKH);
                khachHangAndDonHang.MaDH.Add(name.MaDH);
            }
            return khachHangAndDonHang;
        }
    }
}
