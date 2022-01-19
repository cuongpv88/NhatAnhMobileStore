using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NhatAnhStore.Models.View
{
    public class ChiTietHoaDonViewModel
    {
        public HoaDon HoaDon { get; set; }
        public IEnumerable<ChiTietHoaDon> ChiTietHoaDons { get; set; }
    }
}
