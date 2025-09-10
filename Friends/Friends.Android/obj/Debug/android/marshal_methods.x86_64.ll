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
@assembly_image_cache_hashes = local_unnamed_addr constant [190 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 13
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 14
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 43
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 65
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 66
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 57
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 82
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 53
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 49
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 80
	i64 1000557547492888992, ; 10: Mono.Security.dll => 0xde2b1c9cba651a0 => 94
	i64 1120440138749646132, ; 11: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 74
	i64 1315114680217950157, ; 12: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 38
	i64 1425944114962822056, ; 13: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 87
	i64 1624659445732251991, ; 14: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 36
	i64 1628611045998245443, ; 15: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 59
	i64 1636321030536304333, ; 16: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 54
	i64 1743969030606105336, ; 17: System.Memory.dll => 0x1833d297e88f2af8 => 21
	i64 1795316252682057001, ; 18: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 37
	i64 1836611346387731153, ; 19: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 65
	i64 1865037103900624886, ; 20: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 5
	i64 1875917498431009007, ; 21: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 34
	i64 1930726298510463061, ; 22: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 2
	i64 1981742497975770890, ; 23: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 58
	i64 2040001226662520565, ; 24: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 93
	i64 2136356949452311481, ; 25: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 62
	i64 2165310824878145998, ; 26: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 32
	i64 2165725771938924357, ; 27: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 41
	i64 2262844636196693701, ; 28: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 49
	i64 2284400282711631002, ; 29: System.Web.Services => 0x1fb3d1f42fd4249a => 89
	i64 2287887973817120656, ; 30: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 92
	i64 2329709569556905518, ; 31: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 56
	i64 2335503487726329082, ; 32: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 27
	i64 2337758774805907496, ; 33: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 25
	i64 2470498323731680442, ; 34: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 44
	i64 2479423007379663237, ; 35: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 69
	i64 2497223385847772520, ; 36: System.Runtime => 0x22a7eb7046413568 => 26
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 33
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 29
	i64 2624866290265602282, ; 39: mscorlib.dll => 0x246d65fbde2db8ea => 15
	i64 2656907746661064104, ; 40: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 8
	i64 2783046991838674048, ; 41: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 25
	i64 3017704767998173186, ; 42: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 74
	i64 3289520064315143713, ; 43: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 55
	i64 3303437397778967116, ; 44: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 35
	i64 3311221304742556517, ; 45: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 24
	i64 3522470458906976663, ; 46: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 67
	i64 3531994851595924923, ; 47: System.Numerics => 0x31042a9aade235bb => 23
	i64 3571415421602489686, ; 48: System.Runtime.dll => 0x319037675df7e556 => 26
	i64 3638003163729360188, ; 49: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 6
	i64 3716579019761409177, ; 50: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 51: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 64
	i64 3869221888984012293, ; 52: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 11
	i64 3966267475168208030, ; 53: System.Memory => 0x370b03412596249e => 21
	i64 4525561845656915374, ; 54: System.ServiceModel.Internals => 0x3ece06856b710dae => 88
	i64 4636684751163556186, ; 55: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 71
	i64 4657212095206026001, ; 56: Microsoft.Extensions.Http.dll => 0x40a1bdb9c2686b11 => 9
	i64 4743821336939966868, ; 57: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 91
	i64 4782108999019072045, ; 58: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 40
	i64 4794310189461587505, ; 59: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 33
	i64 4795410492532947900, ; 60: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 67
	i64 5203618020066742981, ; 61: Xamarin.Essentials => 0x4836f704f0e652c5 => 73
	i64 5205316157927637098, ; 62: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 61
	i64 5376510917114486089, ; 63: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 69
	i64 5408338804355907810, ; 64: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 68
	i64 5507995362134886206, ; 65: System.Core.dll => 0x4c705499688c873e => 17
	i64 5724799082821825042, ; 66: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 50
	i64 6222399776351216807, ; 67: System.Text.Json.dll => 0x565a67a0ffe264a7 => 28
	i64 6299182859443786817, ; 68: Friends.Common => 0x576b316fa8605441 => 3
	i64 6319713645133255417, ; 69: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 57
	i64 6401687960814735282, ; 70: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 56
	i64 6504860066809920875, ; 71: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 41
	i64 6548213210057960872, ; 72: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 47
	i64 6560151584539558821, ; 73: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 12
	i64 6591024623626361694, ; 74: System.Web.Services.dll => 0x5b7805f9751a1b5e => 89
	i64 6659513131007730089, ; 75: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 53
	i64 6876862101832370452, ; 76: System.Xml.Linq => 0x5f6f85a57d108914 => 90
	i64 6894844156784520562, ; 77: System.Numerics.Vectors => 0x5faf683aead1ad72 => 24
	i64 7080353259711324268, ; 78: Friends.Common.dll => 0x624277c6c15f606c => 3
	i64 7103753931438454322, ; 79: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 52
	i64 7192745174564810625, ; 80: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 32
	i64 7349431895026339542, ; 81: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 30
	i64 7488575175965059935, ; 82: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 90
	i64 7637365915383206639, ; 83: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 73
	i64 7654504624184590948, ; 84: System.Net.Http => 0x6a3a4366801b8264 => 86
	i64 7735352534559001595, ; 85: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 78
	i64 7820441508502274321, ; 86: System.Data => 0x6c87ca1e14ff8111 => 79
	i64 7836164640616011524, ; 87: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 36
	i64 8044118961405839122, ; 88: System.ComponentModel.Composition => 0x6fa2739369944712 => 85
	i64 8083354569033831015, ; 89: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 55
	i64 8085230611270010360, ; 90: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 22
	i64 8087206902342787202, ; 91: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 18
	i64 8103644804370223335, ; 92: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 81
	i64 8167236081217502503, ; 93: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8318905602908530212, ; 94: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 92
	i64 8441009761551716552, ; 95: Friends.Android.dll => 0x75247da7dee510c8 => 0
	i64 8601935802264776013, ; 96: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 68
	i64 8626175481042262068, ; 97: Java.Interop => 0x77b654e585b55834 => 4
	i64 8684531736582871431, ; 98: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 84
	i64 8725526185868997716, ; 99: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 18
	i64 8853378295825400934, ; 100: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 77
	i64 9324707631942237306, ; 101: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 37
	i64 9662334977499516867, ; 102: System.Numerics.dll => 0x8617827802b0cfc3 => 23
	i64 9678050649315576968, ; 103: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 44
	i64 9808709177481450983, ; 104: Mono.Android.dll => 0x881f890734e555e7 => 14
	i64 9834056768316610435, ; 105: System.Transactions.dll => 0x8879968718899783 => 80
	i64 9998632235833408227, ; 106: Mono.Security => 0x8ac2470b209ebae3 => 94
	i64 10038780035334861115, ; 107: System.Net.Http.dll => 0x8b50e941206af13b => 86
	i64 10229024438826829339, ; 108: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 47
	i64 10321854143672141184, ; 109: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 76
	i64 10430153318873392755, ; 110: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 45
	i64 10447083246144586668, ; 111: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 5
	i64 10847732767863316357, ; 112: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 38
	i64 11002576679268595294, ; 113: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 10
	i64 11023048688141570732, ; 114: System.Core => 0x98f9bc61168392ac => 17
	i64 11037814507248023548, ; 115: System.Xml => 0x992e31d0412bf7fc => 29
	i64 11162124722117608902, ; 116: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 72
	i64 11226290749488709958, ; 117: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 12
	i64 11340910727871153756, ; 118: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 46
	i64 11392833485892708388, ; 119: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 63
	i64 11513602507638267977, ; 120: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 20
	i64 11529969570048099689, ; 121: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 72
	i64 11530571088791430846, ; 122: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 11
	i64 11580057168383206117, ; 123: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 34
	i64 11597940890313164233, ; 124: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 125: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 52
	i64 12102847907131387746, ; 126: System.Buffers => 0xa7f5f40c43256f62 => 16
	i64 12137774235383566651, ; 127: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 70
	i64 12145679461940342714, ; 128: System.Text.Json => 0xa88e1f1ebcb62fba => 28
	i64 12191646537372739477, ; 129: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 31
	i64 12313367145828839434, ; 130: System.IO.Pipelines => 0xaae1de2e1c17f00a => 20
	i64 12451044538927396471, ; 131: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 51
	i64 12466513435562512481, ; 132: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 60
	i64 12487638416075308985, ; 133: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 48
	i64 12538491095302438457, ; 134: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 42
	i64 12550732019250633519, ; 135: System.IO.Compression => 0xae2d28465e8e1b2f => 83
	i64 12700543734426720211, ; 136: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 43
	i64 12843321153144804894, ; 137: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 13
	i64 12963446364377008305, ; 138: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 82
	i64 13370592475155966277, ; 139: System.Runtime.Serialization => 0xb98de304062ea945 => 87
	i64 13401370062847626945, ; 140: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 70
	i64 13454009404024712428, ; 141: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 75
	i64 13465488254036897740, ; 142: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 78
	i64 13491513212026656886, ; 143: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 39
	i64 13572454107664307259, ; 144: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 64
	i64 13647894001087880694, ; 145: System.Data.dll => 0xbd670f48cb071df6 => 79
	i64 13828521679616088467, ; 146: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 77
	i64 13959074834287824816, ; 147: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 51
	i64 14124974489674258913, ; 148: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 42
	i64 14172845254133543601, ; 149: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 62
	i64 14261073672896646636, ; 150: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 63
	i64 14331727281556788554, ; 151: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 30
	i64 14551742072151931844, ; 152: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 27
	i64 14644440854989303794, ; 153: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 61
	i64 14669215534098758659, ; 154: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 8
	i64 14792063746108907174, ; 155: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 75
	i64 14852515768018889994, ; 156: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 46
	i64 14954917835170835695, ; 157: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 7
	i64 14987728460634540364, ; 158: System.IO.Compression.dll => 0xcfff1ba06622494c => 83
	i64 14988210264188246988, ; 159: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 48
	i64 15024878362326791334, ; 160: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 22
	i64 15227001540531775957, ; 161: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 6
	i64 15370334346939861994, ; 162: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 45
	i64 15391712275433856905, ; 163: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 7
	i64 15582737692548360875, ; 164: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 59
	i64 15609085926864131306, ; 165: System.dll => 0xd89e9cf3334914ea => 19
	i64 15777549416145007739, ; 166: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 66
	i64 15963349826457351533, ; 167: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 93
	i64 16154507427712707110, ; 168: System => 0xe03056ea4e39aa26 => 19
	i64 16321164108206115771, ; 169: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 10
	i64 16361933716545543812, ; 170: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 50
	i64 16558262036769511634, ; 171: Microsoft.Extensions.Http => 0xe5cac397cf7b98d2 => 9
	i64 16565028646146589191, ; 172: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 85
	i64 16648892297579399389, ; 173: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 2
	i64 16822611501064131242, ; 174: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 81
	i64 16833383113903931215, ; 175: mscorlib => 0xe99c30c1484d7f4f => 15
	i64 17024911836938395553, ; 176: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 35
	i64 17037200463775726619, ; 177: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 54
	i64 17187273293601214786, ; 178: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 91
	i64 17544493274320527064, ; 179: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 40
	i64 17590473451926037903, ; 180: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 31
	i64 17704177640604968747, ; 181: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 60
	i64 17710060891934109755, ; 182: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 58
	i64 17838668724098252521, ; 183: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 16
	i64 17849757965462036304, ; 184: Friends.Android => 0xf7b7144c2a105f50 => 0
	i64 17891337867145587222, ; 185: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 76
	i64 17928294245072900555, ; 186: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 84
	i64 18116111925905154859, ; 187: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 39
	i64 18129453464017766560, ; 188: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 88
	i64 18380184030268848184 ; 189: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 71
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [190 x i32] [
	i32 13, i32 14, i32 43, i32 65, i32 66, i32 57, i32 82, i32 53, ; 0..7
	i32 49, i32 80, i32 94, i32 74, i32 38, i32 87, i32 36, i32 59, ; 8..15
	i32 54, i32 21, i32 37, i32 65, i32 5, i32 34, i32 2, i32 58, ; 16..23
	i32 93, i32 62, i32 32, i32 41, i32 49, i32 89, i32 92, i32 56, ; 24..31
	i32 27, i32 25, i32 44, i32 69, i32 26, i32 33, i32 29, i32 15, ; 32..39
	i32 8, i32 25, i32 74, i32 55, i32 35, i32 24, i32 67, i32 23, ; 40..47
	i32 26, i32 6, i32 1, i32 64, i32 11, i32 21, i32 88, i32 71, ; 48..55
	i32 9, i32 91, i32 40, i32 33, i32 67, i32 73, i32 61, i32 69, ; 56..63
	i32 68, i32 17, i32 50, i32 28, i32 3, i32 57, i32 56, i32 41, ; 64..71
	i32 47, i32 12, i32 89, i32 53, i32 90, i32 24, i32 3, i32 52, ; 72..79
	i32 32, i32 30, i32 90, i32 73, i32 86, i32 78, i32 79, i32 36, ; 80..87
	i32 85, i32 55, i32 22, i32 18, i32 81, i32 4, i32 92, i32 0, ; 88..95
	i32 68, i32 4, i32 84, i32 18, i32 77, i32 37, i32 23, i32 44, ; 96..103
	i32 14, i32 80, i32 94, i32 86, i32 47, i32 76, i32 45, i32 5, ; 104..111
	i32 38, i32 10, i32 17, i32 29, i32 72, i32 12, i32 46, i32 63, ; 112..119
	i32 20, i32 72, i32 11, i32 34, i32 1, i32 52, i32 16, i32 70, ; 120..127
	i32 28, i32 31, i32 20, i32 51, i32 60, i32 48, i32 42, i32 83, ; 128..135
	i32 43, i32 13, i32 82, i32 87, i32 70, i32 75, i32 78, i32 39, ; 136..143
	i32 64, i32 79, i32 77, i32 51, i32 42, i32 62, i32 63, i32 30, ; 144..151
	i32 27, i32 61, i32 8, i32 75, i32 46, i32 7, i32 83, i32 48, ; 152..159
	i32 22, i32 6, i32 45, i32 7, i32 59, i32 19, i32 66, i32 93, ; 160..167
	i32 19, i32 10, i32 50, i32 9, i32 85, i32 2, i32 81, i32 15, ; 168..175
	i32 35, i32 54, i32 91, i32 40, i32 31, i32 60, i32 58, i32 16, ; 176..183
	i32 0, i32 76, i32 84, i32 39, i32 88, i32 71 ; 184..189
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
