; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [174 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 13
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 14
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 39
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 60
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 61
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 52
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 74
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 48
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 45
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 72
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 86
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 69
	i64 1315114680217950157, ; 12: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 34
	i64 1425944114962822056, ; 13: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 79
	i64 1624659445732251991, ; 14: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 32
	i64 1628611045998245443, ; 15: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 54
	i64 1636321030536304333, ; 16: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 49
	i64 1743969030606105336, ; 17: System.Memory.dll => 0x1833d297e88f2af8 => 21
	i64 1795316252682057001, ; 18: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 33
	i64 1836611346387731153, ; 19: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 60
	i64 1865037103900624886, ; 20: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 5
	i64 1875917498431009007, ; 21: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 31
	i64 1930726298510463061, ; 22: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 2
	i64 1981742497975770890, ; 23: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 53
	i64 2040001226662520565, ; 24: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 85
	i64 2136356949452311481, ; 25: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 57
	i64 2165725771938924357, ; 26: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 37
	i64 2262844636196693701, ; 27: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 45
	i64 2284400282711631002, ; 28: System.Web.Services => 0x1fb3d1f42fd4249a => 81
	i64 2287887973817120656, ; 29: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 84
	i64 2329709569556905518, ; 30: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 51
	i64 2335503487726329082, ; 31: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 27
	i64 2337758774805907496, ; 32: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 25
	i64 2470498323731680442, ; 33: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 40
	i64 2479423007379663237, ; 34: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 64
	i64 2497223385847772520, ; 35: System.Runtime => 0x22a7eb7046413568 => 26
	i64 2547086958574651984, ; 36: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 30
	i64 2592350477072141967, ; 37: System.Xml.dll => 0x23f9e10627330e8f => 29
	i64 2624866290265602282, ; 38: mscorlib.dll => 0x246d65fbde2db8ea => 15
	i64 2656907746661064104, ; 39: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 8
	i64 2783046991838674048, ; 40: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 25
	i64 3017704767998173186, ; 41: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 69
	i64 3289520064315143713, ; 42: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 50
	i64 3311221304742556517, ; 43: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 24
	i64 3522470458906976663, ; 44: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 62
	i64 3531994851595924923, ; 45: System.Numerics => 0x31042a9aade235bb => 23
	i64 3571415421602489686, ; 46: System.Runtime.dll => 0x319037675df7e556 => 26
	i64 3638003163729360188, ; 47: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 6
	i64 3716579019761409177, ; 48: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 49: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 59
	i64 3869221888984012293, ; 50: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 11
	i64 3966267475168208030, ; 51: System.Memory => 0x370b03412596249e => 21
	i64 4525561845656915374, ; 52: System.ServiceModel.Internals => 0x3ece06856b710dae => 80
	i64 4636684751163556186, ; 53: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 66
	i64 4657212095206026001, ; 54: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 9
	i64 4743821336939966868, ; 55: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 83
	i64 4782108999019072045, ; 56: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 36
	i64 4794310189461587505, ; 57: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 30
	i64 4795410492532947900, ; 58: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 62
	i64 5203618020066742981, ; 59: Xamarin.Essentials => 0x4836f704f0e652c5 => 68
	i64 5205316157927637098, ; 60: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 56
	i64 5376510917114486089, ; 61: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 64
	i64 5408338804355907810, ; 62: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 63
	i64 5507995362134886206, ; 63: System.Core.dll => 0x4c705499688c873e => 17
	i64 6222399776351216807, ; 64: System.Text.Json.dll => 0x565a67a0ffe264a7 => 28
	i64 6299182859443786817, ; 65: Friends.Common => 0x576b316fa8605441 => 3
	i64 6319713645133255417, ; 66: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 52
	i64 6401687960814735282, ; 67: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 51
	i64 6504860066809920875, ; 68: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 37
	i64 6548213210057960872, ; 69: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 43
	i64 6560151584539558821, ; 70: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 12
	i64 6591024623626361694, ; 71: System.Web.Services.dll => 0x5b7805f9751a1b5e => 81
	i64 6659513131007730089, ; 72: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 48
	i64 6876862101832370452, ; 73: System.Xml.Linq => 0x5f6f85a57d108914 => 82
	i64 6894844156784520562, ; 74: System.Numerics.Vectors => 0x5faf683aead1ad72 => 24
	i64 7080353259711324268, ; 75: Friends.Common.dll => 0x624277c6c15f606c => 3
	i64 7103753931438454322, ; 76: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 47
	i64 7488575175965059935, ; 77: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 82
	i64 7637365915383206639, ; 78: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 68
	i64 7654504624184590948, ; 79: System.Net.Http => 0x6a3a4366801b8264 => 78
	i64 7820441508502274321, ; 80: System.Data => 0x6c87ca1e14ff8111 => 71
	i64 7836164640616011524, ; 81: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 32
	i64 8044118961405839122, ; 82: System.ComponentModel.Composition => 0x6fa2739369944712 => 77
	i64 8083354569033831015, ; 83: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 50
	i64 8085230611270010360, ; 84: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 22
	i64 8087206902342787202, ; 85: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 18
	i64 8103644804370223335, ; 86: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 73
	i64 8167236081217502503, ; 87: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8318905602908530212, ; 88: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 84
	i64 8441009761551716552, ; 89: Friends.Android.dll => 0x75247da7dee510c8 => 0
	i64 8601935802264776013, ; 90: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 63
	i64 8626175481042262068, ; 91: Java.Interop => 0x77b654e585b55834 => 4
	i64 8684531736582871431, ; 92: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 76
	i64 8725526185868997716, ; 93: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 18
	i64 9324707631942237306, ; 94: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 33
	i64 9662334977499516867, ; 95: System.Numerics.dll => 0x8617827802b0cfc3 => 23
	i64 9678050649315576968, ; 96: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 40
	i64 9808709177481450983, ; 97: Mono.Android.dll => 0x881f890734e555e7 => 14
	i64 9834056768316610435, ; 98: System.Transactions.dll => 0x8879968718899783 => 72
	i64 9998632235833408227, ; 99: Mono.Security => 0x8ac2470b209ebae3 => 86
	i64 10038780035334861115, ; 100: System.Net.Http.dll => 0x8b50e941206af13b => 78
	i64 10229024438826829339, ; 101: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 43
	i64 10430153318873392755, ; 102: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 41
	i64 10447083246144586668, ; 103: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 5
	i64 10847732767863316357, ; 104: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 34
	i64 11002576679268595294, ; 105: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 10
	i64 11023048688141570732, ; 106: System.Core => 0x98f9bc61168392ac => 17
	i64 11037814507248023548, ; 107: System.Xml => 0x992e31d0412bf7fc => 29
	i64 11162124722117608902, ; 108: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 67
	i64 11226290749488709958, ; 109: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 12
	i64 11340910727871153756, ; 110: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 42
	i64 11392833485892708388, ; 111: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 58
	i64 11513602507638267977, ; 112: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 20
	i64 11529969570048099689, ; 113: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 67
	i64 11530571088791430846, ; 114: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 11
	i64 11580057168383206117, ; 115: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 31
	i64 11597940890313164233, ; 116: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 117: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 47
	i64 12102847907131387746, ; 118: System.Buffers => 0xa7f5f40c43256f62 => 16
	i64 12137774235383566651, ; 119: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 65
	i64 12145679461940342714, ; 120: System.Text.Json => 0xa88e1f1ebcb62fba => 28
	i64 12313367145828839434, ; 121: System.IO.Pipelines => 0xaae1de2e1c17f00a => 20
	i64 12451044538927396471, ; 122: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 46
	i64 12466513435562512481, ; 123: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 55
	i64 12487638416075308985, ; 124: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 44
	i64 12538491095302438457, ; 125: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 38
	i64 12550732019250633519, ; 126: System.IO.Compression => 0xae2d28465e8e1b2f => 75
	i64 12700543734426720211, ; 127: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 39
	i64 12843321153144804894, ; 128: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 13
	i64 12963446364377008305, ; 129: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 74
	i64 13370592475155966277, ; 130: System.Runtime.Serialization => 0xb98de304062ea945 => 79
	i64 13401370062847626945, ; 131: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 65
	i64 13454009404024712428, ; 132: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 70
	i64 13491513212026656886, ; 133: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 35
	i64 13572454107664307259, ; 134: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 59
	i64 13647894001087880694, ; 135: System.Data.dll => 0xbd670f48cb071df6 => 71
	i64 13959074834287824816, ; 136: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 46
	i64 14124974489674258913, ; 137: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 38
	i64 14172845254133543601, ; 138: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 57
	i64 14261073672896646636, ; 139: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 58
	i64 14551742072151931844, ; 140: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 27
	i64 14644440854989303794, ; 141: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 56
	i64 14669215534098758659, ; 142: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 8
	i64 14792063746108907174, ; 143: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 70
	i64 14852515768018889994, ; 144: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 42
	i64 14954917835170835695, ; 145: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 7
	i64 14987728460634540364, ; 146: System.IO.Compression.dll => 0xcfff1ba06622494c => 75
	i64 14988210264188246988, ; 147: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 44
	i64 15024878362326791334, ; 148: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 22
	i64 15227001540531775957, ; 149: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 6
	i64 15370334346939861994, ; 150: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 41
	i64 15391712275433856905, ; 151: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 7
	i64 15582737692548360875, ; 152: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 54
	i64 15609085926864131306, ; 153: System.dll => 0xd89e9cf3334914ea => 19
	i64 15777549416145007739, ; 154: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 61
	i64 15963349826457351533, ; 155: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 85
	i64 16154507427712707110, ; 156: System => 0xe03056ea4e39aa26 => 19
	i64 16321164108206115771, ; 157: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 10
	i64 16558262036769511634, ; 158: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 9
	i64 16565028646146589191, ; 159: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 77
	i64 16648892297579399389, ; 160: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 2
	i64 16822611501064131242, ; 161: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 73
	i64 16833383113903931215, ; 162: mscorlib => 0xe99c30c1484d7f4f => 15
	i64 17037200463775726619, ; 163: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 49
	i64 17187273293601214786, ; 164: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 83
	i64 17544493274320527064, ; 165: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 36
	i64 17704177640604968747, ; 166: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 55
	i64 17710060891934109755, ; 167: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 53
	i64 17838668724098252521, ; 168: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 16
	i64 17849757965462036304, ; 169: Friends.Android => 0xf7b7144c2a105f50 => 0
	i64 17928294245072900555, ; 170: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 76
	i64 18116111925905154859, ; 171: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 35
	i64 18129453464017766560, ; 172: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 80
	i64 18380184030268848184 ; 173: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 66
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [174 x i32] [
	i32 13, i32 14, i32 39, i32 60, i32 61, i32 52, i32 74, i32 48, ; 0..7
	i32 45, i32 72, i32 86, i32 69, i32 34, i32 79, i32 32, i32 54, ; 8..15
	i32 49, i32 21, i32 33, i32 60, i32 5, i32 31, i32 2, i32 53, ; 16..23
	i32 85, i32 57, i32 37, i32 45, i32 81, i32 84, i32 51, i32 27, ; 24..31
	i32 25, i32 40, i32 64, i32 26, i32 30, i32 29, i32 15, i32 8, ; 32..39
	i32 25, i32 69, i32 50, i32 24, i32 62, i32 23, i32 26, i32 6, ; 40..47
	i32 1, i32 59, i32 11, i32 21, i32 80, i32 66, i32 9, i32 83, ; 48..55
	i32 36, i32 30, i32 62, i32 68, i32 56, i32 64, i32 63, i32 17, ; 56..63
	i32 28, i32 3, i32 52, i32 51, i32 37, i32 43, i32 12, i32 81, ; 64..71
	i32 48, i32 82, i32 24, i32 3, i32 47, i32 82, i32 68, i32 78, ; 72..79
	i32 71, i32 32, i32 77, i32 50, i32 22, i32 18, i32 73, i32 4, ; 80..87
	i32 84, i32 0, i32 63, i32 4, i32 76, i32 18, i32 33, i32 23, ; 88..95
	i32 40, i32 14, i32 72, i32 86, i32 78, i32 43, i32 41, i32 5, ; 96..103
	i32 34, i32 10, i32 17, i32 29, i32 67, i32 12, i32 42, i32 58, ; 104..111
	i32 20, i32 67, i32 11, i32 31, i32 1, i32 47, i32 16, i32 65, ; 112..119
	i32 28, i32 20, i32 46, i32 55, i32 44, i32 38, i32 75, i32 39, ; 120..127
	i32 13, i32 74, i32 79, i32 65, i32 70, i32 35, i32 59, i32 71, ; 128..135
	i32 46, i32 38, i32 57, i32 58, i32 27, i32 56, i32 8, i32 70, ; 136..143
	i32 42, i32 7, i32 75, i32 44, i32 22, i32 6, i32 41, i32 7, ; 144..151
	i32 54, i32 19, i32 61, i32 85, i32 19, i32 10, i32 9, i32 77, ; 152..159
	i32 2, i32 73, i32 15, i32 49, i32 83, i32 36, i32 55, i32 53, ; 160..167
	i32 16, i32 0, i32 76, i32 35, i32 80, i32 66 ; 168..173
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
