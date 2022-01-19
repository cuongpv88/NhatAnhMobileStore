using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NhatAnhStore.Models.View
{
    public class DonHangViewChiTiet
    {
        public DonHang DonHangs { get; set; }
        public IEnumerable<ChiTietDonHang> ChiTietDonHangs { get; set; }
    }
}
