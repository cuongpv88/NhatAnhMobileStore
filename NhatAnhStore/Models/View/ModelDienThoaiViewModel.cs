using System.Collections.Generic;

namespace NhatAnhStore.Models.View
{
    public class ModelDienThoaiViewModel
    {
        public ModelDienThoai ModelDienThoais { get; set; }
        public IEnumerable<Hang> Hangs { get; set; }
    }
}
