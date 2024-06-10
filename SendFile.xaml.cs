using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
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
using ImapX;
using Spire.Doc;

namespace WordExel
{
    /// <summary>
    /// Логика взаимодействия для SendFile.xaml
    /// </summary>
    public partial class SendFile : Window
    {

        private string filename1;
        public SendFile(string filename)
        {
            InitializeComponent();
            this.filename1 = filename;
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Document doc = new Document();
            doc.LoadFromFile(filename1);
            doc.SaveToFile(filename1, FileFormat.Docx);
            doc.Close();
            Send(filename1);
            MessageBox.Show("Файл отправлен");
            Close();

        }

        private void Send(string filename)
        {
            MailMessage message = new MailMessage(LoginBx.Text, To.Text, Theme.Text, null);

            SmtpClient smtpClient = new SmtpClient(CheckMail());


            System.Net.Mail.Attachment attachment = new System.Net.Mail.Attachment(filename);

            message.Attachments.Add(attachment);

            smtpClient.Credentials = new NetworkCredential(LoginBx.Text, PasswordBx.Text);
            smtpClient.EnableSsl = true;
            smtpClient.Send(message);

        }


        private string CheckMail()
        {
            if (Combo.SelectedIndex == 1)
            {
                return "smtp.mail.ru";
            }
            else if (Combo.SelectedIndex == 2)
            {
                return "993";
            }
            else if (Combo.SelectedIndex == 3)
            {
                return "imap.gmail.com";
            }
            else if (Combo.SelectedIndex == 0)
            {
                return "imap.rambler.ru";
            }

            return null; 
        }
    }
}
