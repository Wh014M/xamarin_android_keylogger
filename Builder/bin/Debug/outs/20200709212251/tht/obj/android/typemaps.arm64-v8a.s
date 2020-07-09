	.arch	armv8-a
	.file	"typemaps.arm64-v8a.s"

/* map_module_count: START */
	.section	.rodata.map_module_count,"a",@progbits
	.type	map_module_count, @object
	.p2align	2
	.global	map_module_count
map_module_count:
	.size	map_module_count, 4
	.word	5
/* map_module_count: END */

/* java_type_count: START */
	.section	.rodata.java_type_count,"a",@progbits
	.type	java_type_count, @object
	.p2align	2
	.global	java_type_count
java_type_count:
	.size	java_type_count, 4
	.word	229
/* java_type_count: END */

/* java_name_width: START */
	.section	.rodata.java_name_width,"a",@progbits
	.type	java_name_width, @object
	.p2align	2
	.global	java_name_width
java_name_width:
	.size	java_name_width, 4
	.word	75
/* java_name_width: END */

	.include	"typemaps.shared.inc"
	.include	"typemaps.arm64-v8a-managed.inc"

/* Managed to Java map: START */
	.section	.data.rel.map_modules,"aw",@progbits
	.type	map_modules, @object
	.p2align	3
	.global	map_modules
map_modules:
	/* module_uuid: 59210923-e675-48cc-8553-14c494ef79f6 */
	.byte	0x23, 0x09, 0x21, 0x59, 0x75, 0xe6, 0xcc, 0x48, 0x85, 0x53, 0x14, 0xc4, 0x94, 0xef, 0x79, 0xf6
	/* entry_count */
	.word	1
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module0_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Plugin.CurrentActivity */
	.xword	.L.map_aname.0
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: e6cb6943-6f5b-455f-a0a6-6dc46ca4b792 */
	.byte	0x43, 0x69, 0xcb, 0xe6, 0x5b, 0x6f, 0x5f, 0x45, 0xa0, 0xa6, 0x6d, 0xc4, 0x6c, 0xa4, 0xb7, 0x92
	/* entry_count */
	.word	2
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module1_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: Plugin.Geolocator */
	.xword	.L.map_aname.1
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 1727fcdd-e599-422c-92b7-9f4adb84bd79 */
	.byte	0xdd, 0xfc, 0x27, 0x17, 0x99, 0xe5, 0x2c, 0x42, 0x92, 0xb7, 0x9f, 0x4a, 0xdb, 0x84, 0xbd, 0x79
	/* entry_count */
	.word	7
	/* duplicate_count */
	.word	1
	/* map */
	.xword	module2_managed_to_java
	/* duplicate_map */
	.xword	module2_managed_to_java_duplicates
	/* assembly_name: Xamarin.Android.Support.Compat */
	.xword	.L.map_aname.2
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 205b22e2-9545-4dfb-a66e-46ecba33db19 */
	.byte	0xe2, 0x22, 0x5b, 0x20, 0x45, 0x95, 0xfb, 0x4d, 0xa6, 0x6e, 0x46, 0xec, 0xba, 0x33, 0xdb, 0x19
	/* entry_count */
	.word	211
	/* duplicate_count */
	.word	34
	/* map */
	.xword	module3_managed_to_java
	/* duplicate_map */
	.xword	module3_managed_to_java_duplicates
	/* assembly_name: Mono.Android */
	.xword	.L.map_aname.3
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	/* module_uuid: 465e32ee-888f-4f03-81c3-531fa7fa8a75 */
	.byte	0xee, 0x32, 0x5e, 0x46, 0x8f, 0x88, 0x03, 0x4f, 0x81, 0xc3, 0x53, 0x1f, 0xa7, 0xfa, 0x8a, 0x75
	/* entry_count */
	.word	8
	/* duplicate_count */
	.word	0
	/* map */
	.xword	module4_managed_to_java
	/* duplicate_map */
	.xword	0
	/* assembly_name: izci_ */
	.xword	.L.map_aname.4
	/* image */
	.xword	0
	/* java_name_width */
	.word	0
	/* java_map */
	.zero	4
	.xword	0

	.size	map_modules, 360
/* Managed to Java map: END */

/* Java to managed map: START */
	.section	.rodata.map_java,"a",@progbits
	.type	map_java, @object
	.p2align	2
	.global	map_java
map_java:
	/* #0 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554458
	/* java_name */
	.ascii	"android/accessibilityservice/AccessibilityService"
	.zero	26

	/* #1 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554461
	/* java_name */
	.ascii	"android/accessibilityservice/AccessibilityServiceInfo"
	.zero	22

	/* #2 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554607
	/* java_name */
	.ascii	"android/app/Activity"
	.zero	55

	/* #3 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554608
	/* java_name */
	.ascii	"android/app/Application"
	.zero	52

	/* #4 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554610
	/* java_name */
	.ascii	"android/app/Application$ActivityLifecycleCallbacks"
	.zero	25

	/* #5 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554612
	/* java_name */
	.ascii	"android/app/Notification"
	.zero	51

	/* #6 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554613
	/* java_name */
	.ascii	"android/app/Notification$Builder"
	.zero	43

	/* #7 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554620
	/* java_name */
	.ascii	"android/app/NotificationChannel"
	.zero	44

	/* #8 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554614
	/* java_name */
	.ascii	"android/app/NotificationManager"
	.zero	44

	/* #9 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554623
	/* java_name */
	.ascii	"android/app/Service"
	.zero	56

	/* #10 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554632
	/* java_name */
	.ascii	"android/content/AsyncTaskLoader"
	.zero	44

	/* #11 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554634
	/* java_name */
	.ascii	"android/content/BroadcastReceiver"
	.zero	42

	/* #12 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554643
	/* java_name */
	.ascii	"android/content/ComponentCallbacks"
	.zero	41

	/* #13 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554645
	/* java_name */
	.ascii	"android/content/ComponentCallbacks2"
	.zero	40

	/* #14 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554636
	/* java_name */
	.ascii	"android/content/ComponentName"
	.zero	46

	/* #15 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554637
	/* java_name */
	.ascii	"android/content/ContentResolver"
	.zero	44

	/* #16 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554628
	/* java_name */
	.ascii	"android/content/Context"
	.zero	52

	/* #17 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554640
	/* java_name */
	.ascii	"android/content/ContextWrapper"
	.zero	45

	/* #18 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554629
	/* java_name */
	.ascii	"android/content/CursorLoader"
	.zero	47

	/* #19 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554630
	/* java_name */
	.ascii	"android/content/Intent"
	.zero	53

	/* #20 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554646
	/* java_name */
	.ascii	"android/content/IntentSender"
	.zero	47

	/* #21 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554653
	/* java_name */
	.ascii	"android/content/Loader"
	.zero	53

	/* #22 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554652
	/* java_name */
	.ascii	"android/content/SharedPreferences"
	.zero	42

	/* #23 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554648
	/* java_name */
	.ascii	"android/content/SharedPreferences$Editor"
	.zero	35

	/* #24 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554650
	/* java_name */
	.ascii	"android/content/SharedPreferences$OnSharedPreferenceChangeListener"
	.zero	9

	/* #25 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554655
	/* java_name */
	.ascii	"android/content/pm/ApplicationInfo"
	.zero	41

	/* #26 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554658
	/* java_name */
	.ascii	"android/content/pm/PackageInfo"
	.zero	45

	/* #27 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554660
	/* java_name */
	.ascii	"android/content/pm/PackageItemInfo"
	.zero	41

	/* #28 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554661
	/* java_name */
	.ascii	"android/content/pm/PackageManager"
	.zero	42

	/* #29 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554664
	/* java_name */
	.ascii	"android/content/res/ColorStateList"
	.zero	41

	/* #30 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554665
	/* java_name */
	.ascii	"android/content/res/Configuration"
	.zero	42

	/* #31 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554666
	/* java_name */
	.ascii	"android/content/res/Resources"
	.zero	46

	/* #32 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554450
	/* java_name */
	.ascii	"android/database/CharArrayBuffer"
	.zero	43

	/* #33 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554451
	/* java_name */
	.ascii	"android/database/ContentObserver"
	.zero	43

	/* #34 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554457
	/* java_name */
	.ascii	"android/database/Cursor"
	.zero	52

	/* #35 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554453
	/* java_name */
	.ascii	"android/database/DataSetObserver"
	.zero	43

	/* #36 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554596
	/* java_name */
	.ascii	"android/graphics/Matrix"
	.zero	52

	/* #37 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554597
	/* java_name */
	.ascii	"android/graphics/Point"
	.zero	53

	/* #38 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554598
	/* java_name */
	.ascii	"android/graphics/Rect"
	.zero	54

	/* #39 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554599
	/* java_name */
	.ascii	"android/graphics/RectF"
	.zero	53

	/* #40 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554600
	/* java_name */
	.ascii	"android/graphics/SurfaceTexture"
	.zero	44

	/* #41 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554601
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable"
	.zero	41

	/* #42 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554603
	/* java_name */
	.ascii	"android/graphics/drawable/Drawable$Callback"
	.zero	32

	/* #43 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554584
	/* java_name */
	.ascii	"android/hardware/Camera"
	.zero	52

	/* #44 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554585
	/* java_name */
	.ascii	"android/hardware/Camera$CameraInfo"
	.zero	41

	/* #45 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554586
	/* java_name */
	.ascii	"android/hardware/Camera$Parameters"
	.zero	41

	/* #46 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554588
	/* java_name */
	.ascii	"android/hardware/Camera$PictureCallback"
	.zero	36

	/* #47 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554590
	/* java_name */
	.ascii	"android/hardware/Camera$ShutterCallback"
	.zero	36

	/* #48 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554591
	/* java_name */
	.ascii	"android/hardware/Camera$Size"
	.zero	47

	/* #49 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554593
	/* java_name */
	.ascii	"android/hardware/camera2/CameraManager"
	.zero	37

	/* #50 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554575
	/* java_name */
	.ascii	"android/location/Address"
	.zero	51

	/* #51 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554577
	/* java_name */
	.ascii	"android/location/Geocoder"
	.zero	50

	/* #52 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554582
	/* java_name */
	.ascii	"android/location/Location"
	.zero	50

	/* #53 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554581
	/* java_name */
	.ascii	"android/location/LocationListener"
	.zero	42

	/* #54 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554573
	/* java_name */
	.ascii	"android/location/LocationManager"
	.zero	43

	/* #55 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554583
	/* java_name */
	.ascii	"android/location/LocationProvider"
	.zero	42

	/* #56 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554571
	/* java_name */
	.ascii	"android/net/Uri"
	.zero	60

	/* #57 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554552
	/* java_name */
	.ascii	"android/os/BaseBundle"
	.zero	54

	/* #58 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554553
	/* java_name */
	.ascii	"android/os/Build"
	.zero	59

	/* #59 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554554
	/* java_name */
	.ascii	"android/os/Build$VERSION"
	.zero	51

	/* #60 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554556
	/* java_name */
	.ascii	"android/os/Bundle"
	.zero	58

	/* #61 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554557
	/* java_name */
	.ascii	"android/os/Environment"
	.zero	53

	/* #62 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554549
	/* java_name */
	.ascii	"android/os/Handler"
	.zero	57

	/* #63 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554561
	/* java_name */
	.ascii	"android/os/IBinder"
	.zero	57

	/* #64 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554559
	/* java_name */
	.ascii	"android/os/IBinder$DeathRecipient"
	.zero	42

	/* #65 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554563
	/* java_name */
	.ascii	"android/os/IInterface"
	.zero	54

	/* #66 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554566
	/* java_name */
	.ascii	"android/os/Looper"
	.zero	58

	/* #67 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554567
	/* java_name */
	.ascii	"android/os/Parcel"
	.zero	58

	/* #68 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554565
	/* java_name */
	.ascii	"android/os/Parcelable"
	.zero	54

	/* #69 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554550
	/* java_name */
	.ascii	"android/os/PowerManager"
	.zero	52

	/* #70 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554551
	/* java_name */
	.ascii	"android/os/PowerManager$WakeLock"
	.zero	43

	/* #71 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554548
	/* java_name */
	.ascii	"android/preference/PreferenceManager"
	.zero	39

	/* #72 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554445
	/* java_name */
	.ascii	"android/provider/CallLog"
	.zero	51

	/* #73 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"android/provider/CallLog$Calls"
	.zero	45

	/* #74 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"android/provider/Telephony"
	.zero	49

	/* #75 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554448
	/* java_name */
	.ascii	"android/provider/Telephony$Sms"
	.zero	45

	/* #76 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554449
	/* java_name */
	.ascii	"android/provider/Telephony$Sms$Inbox"
	.zero	39

	/* #77 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554712
	/* java_name */
	.ascii	"android/runtime/JavaProxyThrowable"
	.zero	41

	/* #78 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"android/support/v13/view/DragAndDropPermissionsCompat"
	.zero	22

	/* #79 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat"
	.zero	38

	/* #80 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"android/support/v4/app/ActivityCompat$PermissionCompatDelegate"
	.zero	13

	/* #81 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback"
	.zero	31

	/* #82 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"android/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener"
	.zero	1

	/* #83 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"android/support/v4/content/ContextCompat"
	.zero	35

	/* #84 */
	/* module_index */
	.word	2
	/* type_token_id */
	.word	33554437
	/* java_name */
	.ascii	"android/support/v4/content/PermissionChecker"
	.zero	31

	/* #85 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554547
	/* java_name */
	.ascii	"android/util/AttributeSet"
	.zero	50

	/* #86 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554545
	/* java_name */
	.ascii	"android/util/DisplayMetrics"
	.zero	48

	/* #87 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554488
	/* java_name */
	.ascii	"android/view/ActionMode"
	.zero	52

	/* #88 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554490
	/* java_name */
	.ascii	"android/view/ActionMode$Callback"
	.zero	43

	/* #89 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554493
	/* java_name */
	.ascii	"android/view/ActionProvider"
	.zero	48

	/* #90 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554502
	/* java_name */
	.ascii	"android/view/ContextMenu"
	.zero	51

	/* #91 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554500
	/* java_name */
	.ascii	"android/view/ContextMenu$ContextMenuInfo"
	.zero	35

	/* #92 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554495
	/* java_name */
	.ascii	"android/view/ContextThemeWrapper"
	.zero	43

	/* #93 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554496
	/* java_name */
	.ascii	"android/view/Display"
	.zero	55

	/* #94 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554497
	/* java_name */
	.ascii	"android/view/DragEvent"
	.zero	53

	/* #95 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554511
	/* java_name */
	.ascii	"android/view/InputEvent"
	.zero	52

	/* #96 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554473
	/* java_name */
	.ascii	"android/view/KeyEvent"
	.zero	54

	/* #97 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554475
	/* java_name */
	.ascii	"android/view/KeyEvent$Callback"
	.zero	45

	/* #98 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554476
	/* java_name */
	.ascii	"android/view/LayoutInflater"
	.zero	48

	/* #99 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554478
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory"
	.zero	40

	/* #100 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554480
	/* java_name */
	.ascii	"android/view/LayoutInflater$Factory2"
	.zero	39

	/* #101 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554504
	/* java_name */
	.ascii	"android/view/Menu"
	.zero	58

	/* #102 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554510
	/* java_name */
	.ascii	"android/view/MenuItem"
	.zero	54

	/* #103 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554506
	/* java_name */
	.ascii	"android/view/MenuItem$OnActionExpandListener"
	.zero	31

	/* #104 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554508
	/* java_name */
	.ascii	"android/view/MenuItem$OnMenuItemClickListener"
	.zero	30

	/* #105 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554481
	/* java_name */
	.ascii	"android/view/MotionEvent"
	.zero	51

	/* #106 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554528
	/* java_name */
	.ascii	"android/view/SearchEvent"
	.zero	51

	/* #107 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554514
	/* java_name */
	.ascii	"android/view/SubMenu"
	.zero	55

	/* #108 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554465
	/* java_name */
	.ascii	"android/view/View"
	.zero	58

	/* #109 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554467
	/* java_name */
	.ascii	"android/view/View$OnClickListener"
	.zero	42

	/* #110 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554470
	/* java_name */
	.ascii	"android/view/View$OnCreateContextMenuListener"
	.zero	30

	/* #111 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554533
	/* java_name */
	.ascii	"android/view/ViewGroup"
	.zero	53

	/* #112 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554534
	/* java_name */
	.ascii	"android/view/ViewGroup$LayoutParams"
	.zero	40

	/* #113 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554516
	/* java_name */
	.ascii	"android/view/ViewManager"
	.zero	51

	/* #114 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554518
	/* java_name */
	.ascii	"android/view/ViewParent"
	.zero	52

	/* #115 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554482
	/* java_name */
	.ascii	"android/view/ViewTreeObserver"
	.zero	46

	/* #116 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554484
	/* java_name */
	.ascii	"android/view/ViewTreeObserver$OnPreDrawListener"
	.zero	28

	/* #117 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554485
	/* java_name */
	.ascii	"android/view/Window"
	.zero	56

	/* #118 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554487
	/* java_name */
	.ascii	"android/view/Window$Callback"
	.zero	47

	/* #119 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554521
	/* java_name */
	.ascii	"android/view/WindowManager"
	.zero	49

	/* #120 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554519
	/* java_name */
	.ascii	"android/view/WindowManager$LayoutParams"
	.zero	36

	/* #121 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554538
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEvent"
	.zero	30

	/* #122 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554544
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityEventSource"
	.zero	24

	/* #123 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554539
	/* java_name */
	.ascii	"android/view/accessibility/AccessibilityRecord"
	.zero	29

	/* #124 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554464
	/* java_name */
	.ascii	"android/widget/Button"
	.zero	54

	/* #125 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554463
	/* java_name */
	.ascii	"android/widget/TextView"
	.zero	52

	/* #126 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554434
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/BaslatServis"
	.zero	41

	/* #127 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/BootReceiver"
	.zero	41

	/* #128 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554443
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/ForegroundService"
	.zero	36

	/* #129 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/KeyListen"
	.zero	44

	/* #130 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554440
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/MainActivity"
	.zero	41

	/* #131 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/PictureCallback"
	.zero	38

	/* #132 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554446
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/SecondActivity"
	.zero	39

	/* #133 */
	/* module_index */
	.word	4
	/* type_token_id */
	.word	33554447
	/* java_name */
	.ascii	"crc64364c9b541a9b7d10/UpdateTimeTask"
	.zero	39

	/* #134 */
	/* module_index */
	.word	0
	/* type_token_id */
	.word	33554438
	/* java_name */
	.ascii	"crc64435a5ac349fa9fda/ActivityLifecycleContextListener"
	.zero	21

	/* #135 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554435
	/* java_name */
	.ascii	"crc649efb5bdbf2d8cfa5/GeolocationContinuousListener"
	.zero	24

	/* #136 */
	/* module_index */
	.word	1
	/* type_token_id */
	.word	33554436
	/* java_name */
	.ascii	"crc649efb5bdbf2d8cfa5/GeolocationSingleListener"
	.zero	28

	/* #137 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554841
	/* java_name */
	.ascii	"java/io/Closeable"
	.zero	58

	/* #138 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554836
	/* java_name */
	.ascii	"java/io/File"
	.zero	63

	/* #139 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554837
	/* java_name */
	.ascii	"java/io/FileDescriptor"
	.zero	53

	/* #140 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554838
	/* java_name */
	.ascii	"java/io/FileInputStream"
	.zero	52

	/* #141 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554839
	/* java_name */
	.ascii	"java/io/FileOutputStream"
	.zero	51

	/* #142 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554843
	/* java_name */
	.ascii	"java/io/Flushable"
	.zero	58

	/* #143 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554846
	/* java_name */
	.ascii	"java/io/IOException"
	.zero	56

	/* #144 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554844
	/* java_name */
	.ascii	"java/io/InputStream"
	.zero	56

	/* #145 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554849
	/* java_name */
	.ascii	"java/io/OutputStream"
	.zero	55

	/* #146 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554851
	/* java_name */
	.ascii	"java/io/PrintWriter"
	.zero	56

	/* #147 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554848
	/* java_name */
	.ascii	"java/io/Serializable"
	.zero	55

	/* #148 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554852
	/* java_name */
	.ascii	"java/io/StringWriter"
	.zero	55

	/* #149 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554853
	/* java_name */
	.ascii	"java/io/Writer"
	.zero	61

	/* #150 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554806
	/* java_name */
	.ascii	"java/lang/Appendable"
	.zero	55

	/* #151 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554784
	/* java_name */
	.ascii	"java/lang/Boolean"
	.zero	58

	/* #152 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554785
	/* java_name */
	.ascii	"java/lang/Byte"
	.zero	61

	/* #153 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554807
	/* java_name */
	.ascii	"java/lang/CharSequence"
	.zero	53

	/* #154 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554786
	/* java_name */
	.ascii	"java/lang/Character"
	.zero	56

	/* #155 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554787
	/* java_name */
	.ascii	"java/lang/Class"
	.zero	60

	/* #156 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554803
	/* java_name */
	.ascii	"java/lang/ClassCastException"
	.zero	47

	/* #157 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554788
	/* java_name */
	.ascii	"java/lang/ClassNotFoundException"
	.zero	43

	/* #158 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554810
	/* java_name */
	.ascii	"java/lang/Cloneable"
	.zero	56

	/* #159 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554812
	/* java_name */
	.ascii	"java/lang/Comparable"
	.zero	55

	/* #160 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554789
	/* java_name */
	.ascii	"java/lang/Double"
	.zero	59

	/* #161 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554804
	/* java_name */
	.ascii	"java/lang/Error"
	.zero	60

	/* #162 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554790
	/* java_name */
	.ascii	"java/lang/Exception"
	.zero	56

	/* #163 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554791
	/* java_name */
	.ascii	"java/lang/Float"
	.zero	60

	/* #164 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554813
	/* java_name */
	.ascii	"java/lang/IllegalArgumentException"
	.zero	41

	/* #165 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554814
	/* java_name */
	.ascii	"java/lang/IllegalStateException"
	.zero	44

	/* #166 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554815
	/* java_name */
	.ascii	"java/lang/IndexOutOfBoundsException"
	.zero	40

	/* #167 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554793
	/* java_name */
	.ascii	"java/lang/Integer"
	.zero	58

	/* #168 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554818
	/* java_name */
	.ascii	"java/lang/LinkageError"
	.zero	53

	/* #169 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554794
	/* java_name */
	.ascii	"java/lang/Long"
	.zero	61

	/* #170 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554819
	/* java_name */
	.ascii	"java/lang/NoClassDefFoundError"
	.zero	45

	/* #171 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554820
	/* java_name */
	.ascii	"java/lang/NullPointerException"
	.zero	45

	/* #172 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554821
	/* java_name */
	.ascii	"java/lang/Number"
	.zero	59

	/* #173 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554795
	/* java_name */
	.ascii	"java/lang/Object"
	.zero	59

	/* #174 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554823
	/* java_name */
	.ascii	"java/lang/ReflectiveOperationException"
	.zero	37

	/* #175 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554817
	/* java_name */
	.ascii	"java/lang/Runnable"
	.zero	57

	/* #176 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554796
	/* java_name */
	.ascii	"java/lang/RuntimeException"
	.zero	49

	/* #177 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554824
	/* java_name */
	.ascii	"java/lang/SecurityException"
	.zero	48

	/* #178 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554797
	/* java_name */
	.ascii	"java/lang/Short"
	.zero	60

	/* #179 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554798
	/* java_name */
	.ascii	"java/lang/String"
	.zero	59

	/* #180 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554800
	/* java_name */
	.ascii	"java/lang/Thread"
	.zero	59

	/* #181 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554802
	/* java_name */
	.ascii	"java/lang/Throwable"
	.zero	56

	/* #182 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554825
	/* java_name */
	.ascii	"java/lang/UnsupportedOperationException"
	.zero	36

	/* #183 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554827
	/* java_name */
	.ascii	"java/lang/annotation/Annotation"
	.zero	44

	/* #184 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554829
	/* java_name */
	.ascii	"java/lang/reflect/AnnotatedElement"
	.zero	41

	/* #185 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554831
	/* java_name */
	.ascii	"java/lang/reflect/GenericDeclaration"
	.zero	39

	/* #186 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554833
	/* java_name */
	.ascii	"java/lang/reflect/Type"
	.zero	53

	/* #187 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554835
	/* java_name */
	.ascii	"java/lang/reflect/TypeVariable"
	.zero	45

	/* #188 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554736
	/* java_name */
	.ascii	"java/net/InetSocketAddress"
	.zero	49

	/* #189 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554737
	/* java_name */
	.ascii	"java/net/Proxy"
	.zero	61

	/* #190 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554738
	/* java_name */
	.ascii	"java/net/ProxySelector"
	.zero	53

	/* #191 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554740
	/* java_name */
	.ascii	"java/net/SocketAddress"
	.zero	53

	/* #192 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554742
	/* java_name */
	.ascii	"java/net/URI"
	.zero	63

	/* #193 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554760
	/* java_name */
	.ascii	"java/nio/Buffer"
	.zero	60

	/* #194 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554762
	/* java_name */
	.ascii	"java/nio/ByteBuffer"
	.zero	56

	/* #195 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554767
	/* java_name */
	.ascii	"java/nio/channels/ByteChannel"
	.zero	46

	/* #196 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554769
	/* java_name */
	.ascii	"java/nio/channels/Channel"
	.zero	50

	/* #197 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554764
	/* java_name */
	.ascii	"java/nio/channels/FileChannel"
	.zero	46

	/* #198 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554771
	/* java_name */
	.ascii	"java/nio/channels/GatheringByteChannel"
	.zero	37

	/* #199 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554773
	/* java_name */
	.ascii	"java/nio/channels/InterruptibleChannel"
	.zero	37

	/* #200 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554775
	/* java_name */
	.ascii	"java/nio/channels/ReadableByteChannel"
	.zero	38

	/* #201 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554777
	/* java_name */
	.ascii	"java/nio/channels/ScatteringByteChannel"
	.zero	36

	/* #202 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554779
	/* java_name */
	.ascii	"java/nio/channels/SeekableByteChannel"
	.zero	38

	/* #203 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554781
	/* java_name */
	.ascii	"java/nio/channels/WritableByteChannel"
	.zero	38

	/* #204 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554782
	/* java_name */
	.ascii	"java/nio/channels/spi/AbstractInterruptibleChannel"
	.zero	25

	/* #205 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554748
	/* java_name */
	.ascii	"java/security/KeyStore"
	.zero	53

	/* #206 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554750
	/* java_name */
	.ascii	"java/security/KeyStore$LoadStoreParameter"
	.zero	34

	/* #207 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554752
	/* java_name */
	.ascii	"java/security/KeyStore$ProtectionParameter"
	.zero	33

	/* #208 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554753
	/* java_name */
	.ascii	"java/security/cert/Certificate"
	.zero	45

	/* #209 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554755
	/* java_name */
	.ascii	"java/security/cert/CertificateFactory"
	.zero	38

	/* #210 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554758
	/* java_name */
	.ascii	"java/security/cert/X509Certificate"
	.zero	41

	/* #211 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554757
	/* java_name */
	.ascii	"java/security/cert/X509Extension"
	.zero	43

	/* #212 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554704
	/* java_name */
	.ascii	"java/util/ArrayList"
	.zero	56

	/* #213 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554693
	/* java_name */
	.ascii	"java/util/Collection"
	.zero	55

	/* #214 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554695
	/* java_name */
	.ascii	"java/util/HashMap"
	.zero	58

	/* #215 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554713
	/* java_name */
	.ascii	"java/util/HashSet"
	.zero	58

	/* #216 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554744
	/* java_name */
	.ascii	"java/util/Iterator"
	.zero	57

	/* #217 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554745
	/* java_name */
	.ascii	"java/util/Timer"
	.zero	60

	/* #218 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554746
	/* java_name */
	.ascii	"java/util/TimerTask"
	.zero	56

	/* #219 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554439
	/* java_name */
	.ascii	"javax/net/ssl/TrustManager"
	.zero	49

	/* #220 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554442
	/* java_name */
	.ascii	"javax/net/ssl/TrustManagerFactory"
	.zero	42

	/* #221 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554441
	/* java_name */
	.ascii	"javax/net/ssl/X509TrustManager"
	.zero	45

	/* #222 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554876
	/* java_name */
	.ascii	"mono/android/TypeManager"
	.zero	51

	/* #223 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554689
	/* java_name */
	.ascii	"mono/android/runtime/InputStreamAdapter"
	.zero	36

	/* #224 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	0
	/* java_name */
	.ascii	"mono/android/runtime/JavaArray"
	.zero	45

	/* #225 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554710
	/* java_name */
	.ascii	"mono/android/runtime/JavaObject"
	.zero	44

	/* #226 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554728
	/* java_name */
	.ascii	"mono/android/runtime/OutputStreamAdapter"
	.zero	35

	/* #227 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554468
	/* java_name */
	.ascii	"mono/android/view/View_OnClickListenerImplementor"
	.zero	26

	/* #228 */
	/* module_index */
	.word	3
	/* type_token_id */
	.word	33554801
	/* java_name */
	.ascii	"mono/java/lang/RunnableImplementor"
	.zero	41

	.size	map_java, 19007
/* Java to managed map: END */

