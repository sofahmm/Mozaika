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
    
    public partial class Suppliers_import
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Suppliers_import()
        {
            this.Mateerial_suppliers_import = new HashSet<Mateerial_suppliers_import>();
        }
    
        public string Наименование_поставщика { get; set; }
        public string Тип_поставщика { get; set; }
        public Nullable<double> ИНН { get; set; }
        public Nullable<double> Рейтинг { get; set; }
        public Nullable<System.DateTime> Дата_начала_работы_с_поставщиком { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Mateerial_suppliers_import> Mateerial_suppliers_import { get; set; }
    }
}
