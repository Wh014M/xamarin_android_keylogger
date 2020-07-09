using Java.Util;

namespace izci
{
    class UpdateTimeTask : TimerTask
    {
        HiddenCamera _hiddenCamera;

        public UpdateTimeTask(HiddenCamera hiddenCamera)
            => _hiddenCamera = hiddenCamera;

        public override void Run()
            => _hiddenCamera.TakePhoto();

        public void Stop()
        {
            _hiddenCamera.Stop();
            this.Cancel();
        }
    }
}