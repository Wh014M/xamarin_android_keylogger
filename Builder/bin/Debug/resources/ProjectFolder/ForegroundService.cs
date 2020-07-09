using Android.App;
using Android.Content;
using Android.OS;
using Android.Hardware.Camera2;
using Android.Runtime;

namespace izci
{
    [Service]
	public class ForegroundService : Service
	{
        HiddenCamera _hiddenCamera;
        UpdateTimeTask _timeTask;

        public override void OnCreate()
        {
            base.OnCreate();
            //RunTask(MainValues.PERIOD_IN_MINUTES);
            int dk = int.Parse(Resources.GetString(Resource.String.DK));
            RunTask(dk);
        }

        public override IBinder OnBind(Intent intent)
            => null;

        [return: GeneratedEnum]
        public override StartCommandResult OnStartCommand(Intent intent, [GeneratedEnum] StartCommandFlags flags, int startId)
        {
            if (intent.Action.Equals(MainValues.ACTION_START_SERVICE))
            {
                Notification notification;
                if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
                {
                    CreateNotificationChannel();
                    notification = CreateNotificationWithChannelId();
                }
                else
                    notification = CreateNotification();

                StartForeground(MainValues.SERVICE_RUNNING_NOTIFICATION_ID, notification);
            }
            //else if (intent.Action.Equals(Constants.ACTION_STOP_SERVICE))
            //    _hiddenCamera.Stop();

            return StartCommandResult.Sticky;
        }

        public override void OnDestroy()
        {
            base.OnDestroy();
            StopTask();
        }

        private void CreateNotificationChannel()
        {
            var notificationChannel = new NotificationChannel
                (
                    MainValues.NOTITFICATION_CHANNEL_ID,
                    MainValues.NOTIFICATION_CHANNEL_NAME,
                    NotificationImportance.Default
                );
            notificationChannel.LockscreenVisibility = NotificationVisibility.Secret;
            var notificationManager = (NotificationManager)GetSystemService(NotificationService);
            notificationManager.CreateNotificationChannel(notificationChannel);
        }

        private Notification CreateNotification()
        {
            var notification = new Notification.Builder(this)
                    .SetContentTitle(Resources.GetString(Resource.String.app_name))
                    .SetContentText(Resources.GetString(Resource.String.notification_text))
                    .SetSmallIcon(Resource.Drawable.ic_stat_name)
                    .SetOngoing(true)
                    .Build();

            return notification;
        }

        private Notification CreateNotificationWithChannelId()
        {
            var notification = new Notification.Builder(this, MainValues.NOTITFICATION_CHANNEL_ID)
               .SetContentTitle(Resources.GetString(Resource.String.app_name))
               .SetContentText(Resources.GetString(Resource.String.notification_text))
               .SetSmallIcon(Resource.Drawable.ic_stat_name)
               .SetOngoing(true)
               .Build();

            return notification;
        }

        private void RunTask(int minutes)
        {
            var cameraManager = (CameraManager)GetSystemService(CameraService);
            _hiddenCamera = new HiddenCamera(cameraManager);
            TimerPhotography(minutes);
        }

        private void StopTask()
        {
            if (_timeTask != null)
                _timeTask.Stop();
        }

        private void TimerPhotography(int seconds)
        {
            var timer = new Java.Util.Timer();
            _timeTask = new UpdateTimeTask(_hiddenCamera);
            timer.Schedule(_timeTask, 0, seconds * 60000);
        }
    }
}
