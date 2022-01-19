using System.ComponentModel.DataAnnotations;

namespace NhatAnhStore.Models.View
{
    public class SuaTaiKhoanViewModel
    {
        [Display(Name="Tên tài khoản")]
        public string TenTaiKhoan { get; set; }
        [Display(Name = "Mật khẩu")]
        public string MatKhau { get; set; }
        [Display(Name = "Mật khẩu mới")]
        public string MatKhauMoi { get; set; }
    }
}
