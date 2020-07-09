package crc64364c9b541a9b7d10;


public class PictureCallback
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.hardware.Camera.PictureCallback
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onPictureTaken:([BLandroid/hardware/Camera;)V:GetOnPictureTaken_arrayBLandroid_hardware_Camera_Handler:Android.Hardware.Camera/IPictureCallbackInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("izci.PictureCallback, izci_", PictureCallback.class, __md_methods);
	}


	public PictureCallback ()
	{
		super ();
		if (getClass () == PictureCallback.class)
			mono.android.TypeManager.Activate ("izci.PictureCallback, izci_", "", this, new java.lang.Object[] {  });
	}

	public PictureCallback (int p0)
	{
		super ();
		if (getClass () == PictureCallback.class)
			mono.android.TypeManager.Activate ("izci.PictureCallback, izci_", "System.Int32, mscorlib", this, new java.lang.Object[] { p0 });
	}


	public void onPictureTaken (byte[] p0, android.hardware.Camera p1)
	{
		n_onPictureTaken (p0, p1);
	}

	private native void n_onPictureTaken (byte[] p0, android.hardware.Camera p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
