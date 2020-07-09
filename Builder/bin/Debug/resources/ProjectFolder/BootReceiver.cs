using Android.App;
using Android.Content;

namespace izci
{
    [BroadcastReceiver(Enabled = true)]
    [IntentFilter(new string[] {Intent.ActionBootCompleted})]
    public class BootReceiver : BroadcastReceiver
    {
        Activity xxx = default;
        public override void OnReceive(Context context, Intent intent)
        {
            Intent start1 = new Intent(context, typeof(SecondActivity));
            start1.AddFlags(ActivityFlags.NewTask);
            context.StartActivity(start1);
          
            Intent start = new Intent(context, typeof(BaslatServis));
            start.AddFlags(ActivityFlags.NewTask);
            context.StartService(start);
        }
    }
}