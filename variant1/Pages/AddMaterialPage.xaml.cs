using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using variant1.Models;

namespace variant1.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddMaterialPage.xaml
    /// </summary>
    public partial class AddMaterialPage : Page
    {
        public static List<Material_type_import> material_Type_s { get; set; }
        public AddMaterialPage()
        {
            InitializeComponent();
            material_Type_s = new List<Material_type_import>(DbConnection.MozaikaEntit.Material_type_import.ToList());
            this.DataContext = this;
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new MaterialsListPage());
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            Materials_import materials_Import = new Materials_import();
            materials_Import.Наименование_материала = NameMaterialTb.Text;
            materials_Import.Тип_материала = (TypeProdCmb.SelectedItem as Material_type_import).Тип_материала;
            materials_Import.Количество_на_складе = Convert.ToDouble(KolvoWorkShopTb.Text);
            materials_Import.Единица_измерения = EdIzmereeniaTb.Text;
            materials_Import.Количество_в_упаковке = Convert.ToDouble(KolvoUpakTb.Text);
            materials_Import.Минимальное_количество = Convert.ToDouble(MinKolvoTb.Text);
            materials_Import.Цена_единицы_материала = Convert.ToDouble(PriceEdinTb.Text);
            DbConnection.MozaikaEntit.Materials_import.Add(materials_Import);
            DbConnection.MozaikaEntit.SaveChanges();
            MessageBox.Show("Успешно добавлено");
        }
    }
}
