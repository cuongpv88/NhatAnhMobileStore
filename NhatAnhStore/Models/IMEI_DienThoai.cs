using System.ComponentModel.DataAnnotations;


namespace NhatAnhStore.Models
{
    public class IMEI_DienThoai
    {
        [Key]

        public string IMEI { get; set; }
        public int MaDT { get; set; }
        public int MaHD { get; set; }
        public ChiTietHoaDon ChiTietHoaDon { get; set; }

    }
}
