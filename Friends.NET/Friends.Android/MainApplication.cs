using Android.Runtime;
using Friends.Common.DI;

namespace Friends.Android
{
    [Application]
    public class MainApplication : Application
    {
        public static IServiceProvider Services { get; set; } = null!;

        public MainApplication(IntPtr handle, JniHandleOwnership owner)
            : base(handle, owner)
        {
        }

        public override void OnCreate()
        {
            base.OnCreate();
            Services = Core.Build();
        }
    }
}

