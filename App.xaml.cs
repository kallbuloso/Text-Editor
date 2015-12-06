using System;
using System.IO;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace TextEditor
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public App()
        {
            AppDomain.CurrentDomain.UnhandledException += UnhandledExceptionOccurred;
        }

        private static void UnhandledExceptionOccurred(object sender, UnhandledExceptionEventArgs e)
        {
            Window win = Current.MainWindow;

            RenderTargetBitmap bmp = new RenderTargetBitmap((int)win.Width, (int)win.Height, 96, 96, PixelFormats.Pbgra32);
            bmp.Render(win);

            string errorPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "ErrorReports");

            if (!Directory.Exists(errorPath))
                Directory.CreateDirectory(errorPath);

            BitmapEncoder encoder = new PngBitmapEncoder();
            encoder.Frames.Add(BitmapFrame.Create(bmp));

            string filePath = Path.Combine(errorPath, string.Format("{0:MMddyyyyhhmmss}.png", DateTime.Now));

            using(Stream stream = File.Create(filePath))
            {
                encoder.Save(stream);
            }

        }



    }
}
