using System.ComponentModel.DataAnnotations;

namespace NhatAnhStore.Models.View
{
    public class ForgotPasswordViewModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
       
    }
}
