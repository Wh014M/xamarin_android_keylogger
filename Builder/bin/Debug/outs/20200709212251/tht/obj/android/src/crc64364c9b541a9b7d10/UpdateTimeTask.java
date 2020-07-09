package crc64364c9b541a9b7d10;


public class UpdateTimeTask
	extends java.util.TimerTask
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_run:()V:GetRunHandler\n" +
			"";
		mono.android.Runtime.register ("izci.UpdateTimeTask, izci_", UpdateTimeTask.class, __md_methods);
	}


	public UpdateTimeTask ()
	{
		super ();
		if (getClass () == UpdateTimeTask.class)
			mono.android.TypeManager.Activate ("izci.UpdateTimeTask, izci_", "", this, new java.lang.Object[] {  });
	}


	public void run ()
	{
		n_run ();
	}

	private native void n_run ();

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
