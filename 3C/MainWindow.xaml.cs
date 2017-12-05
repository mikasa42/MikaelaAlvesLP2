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

namespace JogoDaForca
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        string palavra;
        int num;
        string s;
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Enviar_Click(object sender, RoutedEventArgs e)
        {
            palavra = Palavra.Text;
            num = palavra.Length;

            s = "";
            for (int i = 0; i < num; i++)
            {
                s= s+"*";
               
            }



                MessageBox.Show(s);
        }
    }
}
