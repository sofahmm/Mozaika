//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace variant1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Material_product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Material_product()
        {
            this.Material_type_import = new HashSet<Material_type_import>();
        }
    
        public Nullable<double> Номер_продукции { get; set; }
        public double Номер_материала { get; set; }
    
        public virtual Product_type_import Product_type_import { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Material_type_import> Material_type_import { get; set; }
    }
}
