using System;
using System.Collections.Generic;
using System.IO;
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
using Microsoft.Win32;
using Spire.Doc;

namespace WordExel
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Word word = new Word();
            word.Show();
            Close();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {

            OpenFileDialog dlg = new OpenFileDialog();

            dlg.Filter = "Документы Word (*.docx)|*.docx";

            if (dlg.ShowDialog() == true)
            {
                string filename = dlg.FileName;
                WordEmail email = new WordEmail(filename);
                email.Show();
                Close();
            }
            
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            Exel exel = new Exel();
            exel.Show();
            Close();
        }
    }
}
