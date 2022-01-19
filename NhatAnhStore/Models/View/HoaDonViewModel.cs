using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NhatAnhStore.Models.View
{
    public class HoaDonViewModel
    {
        public List<HoaDon> ListHoaDon { get; set; }
        public PagingInfo PagingInfo { get; set; }
    }
}
