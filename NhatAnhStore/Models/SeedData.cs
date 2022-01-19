using NhatAnhStore.Data;
using NhatAnhStore.Extensions;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Linq;


namespace NhatAnhStore.Models
{
    public static class SeedData
    {
        public static void Initialize(IServiceProvider serviceProvider)
        {
            using (var context = new NhatAnhDbContext(
                serviceProvider.GetRequiredService<
                    DbContextOptions<NhatAnhDbContext>>()))
            {
                // Look for any movies.
                if (context.TaiKhoanAdmin.Any())
                {
                    return;   // DB has been seeded
                }

                context.TaiKhoanAdmin.AddRange(
                    new TaiKhoanAdmin
                    {
                        User = "SuperAdmin",
                        Pass = MD5.GetMD5("SuperAdmin"),
                        Name = "Nhật Anh",
                        Email = "Admin@gmail.com",
                        PhoneNumber = "0947902015",
                        Role = "Super Admin",
                        TrangThai = true
                    }
                );
                context.SaveChanges();
            }
        }
    }
}
