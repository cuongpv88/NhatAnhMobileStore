using System.Collections.Generic;

namespace NhatAnhStore.Models.View
{
    public class TrangChuViewModel
    {
        public List<ModelDienThoai> DanhSachModel { get; set; }
        public List<Hang> DanhSachHang { get; set; }
        public PagingInfo PagingInfo { get; set; }
    }
}
