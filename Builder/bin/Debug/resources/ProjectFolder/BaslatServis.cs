using System;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Widget;

namespace izci
{
    [Service]
    public class BaslatServis: Service
    {
        static readonly Type SERVICE_TYPE = typeof(ForegroundService);
        static Intent _startServiceIntent;
        public override IBinder OnBind(Intent intent)
        {
            return null;
        }
       
        public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
        {
            MainValues.PERIOD_IN_MINUTES = 2;
            StartForegroundServiceCompat<ForegroundService>(this);
            return StartCommandResult.Sticky;
        }
        
        public override void OnDestroy()
        {
            base.OnDestroy();
        }
        private Intent GetIntent(Type type, string action)
        {
            var intent = new Intent(this, type);
            intent.SetAction(action);
            return intent;
        }
        public void StartForegroundServiceCompat<T>(Context context, Bundle args = null) where T : Service
        {
            _startServiceIntent = GetIntent(SERVICE_TYPE, MainValues.ACTION_START_SERVICE);

            if (args != null)
                _startServiceIntent.PutExtras(args);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
                context.StartForegroundService(_startServiceIntent);
            else
                context.StartService(_startServiceIntent);
        }
    }
}