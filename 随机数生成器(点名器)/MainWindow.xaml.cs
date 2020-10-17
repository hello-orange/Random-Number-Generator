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
using System.IO;

namespace 随机数生成器_点名器_
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Random NumberGenerator = new Random(Seed.Text.GetHashCode() + 11);
                Result.Text = (NumberGenerator.Next(int.Parse(Range.Text)) + 1).ToString();
            }
            catch (FormatException)
            {
                Result.Text = "请输入正确的Range值";
            }
        }

        private void RadomNumberButton_Click(object sender, RoutedEventArgs e)
        {
            Random NumberGenerator = new Random();
            try
            {
                Result.Text = (NumberGenerator.Next(int.Parse(Range.Text)) + 1).ToString();
            }
            catch (FormatException)
            {
                Result.Text = "请输入正确的Range值";
            }
            catch (Exception Ex)
            {
                MessageBox.Show(Ex.Message);
            }
        }

        private void SettingsButton_Click(object sender, RoutedEventArgs e)
        {
            SettingsWindow settingsWindow = new SettingsWindow();
            settingsWindow.ShowDialog();
            LoadSettings();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)        //窗口加载时载入数据
        {
            LoadSettings();
        }

        private void LoadSettings()
        {
            try
            {
                string memory = File.ReadAllText("Settings.rng");
                checked
                {
                    int DefeatRange = int.Parse(memory);
                    Range.Text = DefeatRange.ToString();
                }
                IsOnTheTop.IsChecked = File.ReadAllText("OnTheTop.rng") == "1" ? true : false;
            }
            catch (FileNotFoundException)
            {

            }
            catch (Exception Ex)
            {
                MessageBox.Show(Ex.Message);
            }
        }

        private void IsOnTheTop_Checked(object sender, RoutedEventArgs e)
        {
            this.Topmost = true;
            File.WriteAllText("OnTheTop.rng", "1");
        }

        private void IsOnTheTop_Unchecked(object sender, RoutedEventArgs e)
        {
            this.Topmost = false;
            File.WriteAllText("OnTheTop.rng", "0");
        }
    }
}
