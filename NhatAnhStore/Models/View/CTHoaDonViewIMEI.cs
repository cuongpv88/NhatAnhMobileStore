using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NhatAnhStore.Models.View
{
    public class CTHoaDonViewIMEI
    {
        public ChiTietHoaDon chiTietHoaDon { get; set; }
        public IEnumerable<IMEI_DienThoai> iMEI_DienThoais { get; set; }
    }
}
