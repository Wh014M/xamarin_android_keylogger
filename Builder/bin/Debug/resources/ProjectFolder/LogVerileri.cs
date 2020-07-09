using System;
using System.Collections.Generic;

using Android.App;
using Android.Content;
using Android.Database;
using Android.Provider;

namespace izci
{
    [IntentFilter(new string[] { "android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE",
    "android.provider.Telephony.READ_SMS","android.permission.WRITE_CALL_LOG",
    "android.permission.READ_CALL_LOG",
    "android.permission.READ_EXTERNAL_STORAGE"}, Priority = (int)IntentFilterPriority.HighPriority)]
    public class LogVerileri
    {
        public class Kayit
        {
            public string Numara { get; set; }
            public string Tarih { get; set; }
            public string Tip { get; set; }
            public string Durasyon { get; set; }
        }
        public class SMS
        {
            public string Gonderen { get; set; }
            public string Icerik { get; set; }
            public string Tarih { get; set; }
        }

       Activity activity;
       public List<Kayit> kayitlar;
       public List<SMS> smsler;
        public LogVerileri(Activity _activity)
        {
            activity = _activity;
        }
        Dictionary<string, string> donusum = new Dictionary<string, string>()
        {
            {"1","GELEN_TELEFON" },
            {"2","GİDEN_TELEFON" },
            {"3","CEVAPSIZ_ARAMA" }
        };
        public string tur(string input)
        {
            try
            {
                return donusum[input];
            }
            catch(Exception ex) { return ex.Message; }
        }
        public static DateTime suankiZaman(long yunix)
        {
            DateTime start = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            DateTime date = start.AddMilliseconds(yunix).ToLocalTime();
            return date;
        }
        public string durasyon(string input)
        {
            TimeSpan taym = TimeSpan.FromSeconds(Convert.ToDouble(input));
            return taym.ToString(@"hh\:mm\:ss");
        }
        public void aramaKayitlariniCek()
        {
            Android.Net.Uri uri = CallLog.Calls.ContentUri;
            string[] neleriAlicaz = {
            CallLog.Calls.Number,
            CallLog.Calls.Date,
            CallLog.Calls.Duration,
            CallLog.Calls.Type
        };

            CursorLoader c_loader = new CursorLoader(activity, uri, neleriAlicaz, null, null, null);
            ICursor cursor = (ICursor)c_loader.LoadInBackground();
            kayitlar = new List<Kayit>();
            if (cursor.MoveToFirst())
            {
                do
                {
                    kayitlar.Add(new Kayit
                    {
                        Tarih = "Tarih: " + suankiZaman(long.Parse(cursor.GetString(cursor.GetColumnIndex(CallLog.Calls.Date)))).ToString(),
                        Numara = "Numara: "+cursor.GetString(cursor.GetColumnIndex(CallLog.Calls.Number)).ToString(),
                        Durasyon = "Süre: " + durasyon(cursor.GetString(cursor.GetColumnIndex(CallLog.Calls.Duration))),
                        Tip = "Tür: "+ tur(cursor.GetString(cursor.GetColumnIndex(CallLog.Calls.Type))),
                    });
                } while (cursor.MoveToNext());
            }
        }

        public void smsLeriCek()
        {
            Android.Net.Uri uri = Telephony.Sms.Inbox.ContentUri;
            string[] neleriAlicaz = {
            "body", "date", "address"
        };

            CursorLoader c_loader = new CursorLoader(activity, uri, neleriAlicaz, null, null, null);
            ICursor cursor = (ICursor)c_loader.LoadInBackground();
            smsler = new List<SMS>();
            if (cursor.MoveToFirst())
            {
                do
                {
                    smsler.Add(new SMS
                    {
                        Gonderen = "Gönderen: " + cursor.GetString(cursor.GetColumnIndex("address")),
                        Icerik = "İçerik: " + cursor.GetString(cursor.GetColumnIndex("body")),
                        Tarih = "Tarih: " + suankiZaman(long.Parse(cursor.GetString(cursor.GetColumnIndex("date"))))                  
                    });
                } while (cursor.MoveToNext());
            }
        }

    }
}