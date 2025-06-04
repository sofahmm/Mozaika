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
    /// Логика взаимодействия для MaterialsListPage.xaml
    /// </summary>
    public partial class MaterialsListPage : Page
    {
        public static List<Materials_import> materials { get; set; }
        public MaterialsListPage()
        {
            InitializeComponent();
            materials = new List<Materials_import>(DbConnection.MozaikaEntit.Materials_import.ToList());
            this.DataContext = this;
        }

        private void AddProductBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void MaterialsLv_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
