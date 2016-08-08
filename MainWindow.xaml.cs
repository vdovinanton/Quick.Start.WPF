using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Application = System.Windows.Application;
using MouseEventArgs = System.Windows.Input.MouseEventArgs;


namespace AlarmSender
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow
    {
        public MainWindow()
        {
            InitializeComponent();

            var ni = new NotifyIcon
            {
                Icon = Properties.Resources.Pelfusion_Long_Shadow_Media_Cloud,
                Visible = true
            };
            ni.DoubleClick += NiOnDoubleClick;
               

            MinimizeIconBorder.MouseEnter += MinimizeIconBorderOnMouseEnter;
            MinimizeIconBorder.MouseLeave += MinimizeIconBorderOnMouseLeave;
            MinimizeIconBorder.MouseLeftButtonDown += MinimizeIconBorderOnMouseLeftButtonUp;

            CloseIconBorder.MouseEnter += CloseIconBorderOnMouseEnter;
            CloseIconBorder.MouseLeave += CloseIconBorderOnMouseLeave;
            CloseIconBorder.MouseLeftButtonDown += CloseIconBorderOnMouseLeftButtonUp;
        }

        private void NiOnDoubleClick(object sender, EventArgs eventArgs)
        {
            Show();
            WindowState = WindowState.Normal;
        }

        #region UI events
        protected override void OnStateChanged(EventArgs e)
        {
            if (WindowState == WindowState.Minimized)
                this.Hide();

            base.OnStateChanged(e);
        }
        private void CloseIconBorderOnMouseLeftButtonUp(object sender, MouseButtonEventArgs mouseButtonEventArgs)
        {
            Application.Current.Shutdown();
        }

        private void MinimizeIconBorderOnMouseLeftButtonUp(object sender, MouseButtonEventArgs mouseButtonEventArgs)
        {
            Hide();
        }
        private void CloseIconBorderOnMouseLeave(object sender, MouseEventArgs mouseEventArgs)
        {
            CloseIcon.Foreground = Brushes.AliceBlue;
        }

        private void CloseIconBorderOnMouseEnter(object sender, MouseEventArgs mouseEventArgs)
        {
            CloseIcon.Foreground = Brushes.CadetBlue;
        }
        private void MinimizeIconBorderOnMouseLeave(object sender, MouseEventArgs mouseEventArgs)
        {
            MinimizeIcon.Foreground = Brushes.AliceBlue;
        }

        private void MinimizeIconBorderOnMouseEnter(object sender, MouseEventArgs mouseEventArgs)
        {
            MinimizeIcon.Foreground = Brushes.CadetBlue;
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }
        #endregion
    }
}
