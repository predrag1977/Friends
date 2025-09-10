; ModuleID = 'obj/Debug/android/marshal_methods.x86.ll'
source_filename = "obj/Debug/android/marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [190 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 57
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 75
	i32 101534019, ; 2: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 66
	i32 120558881, ; 3: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 66
	i32 159306688, ; 4: System.ComponentModel.Annotations => 0x97ed3c0 => 91
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 43
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 67
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 41
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 54
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 89
	i32 280482487, ; 10: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 52
	i32 291275502, ; 11: Microsoft.Extensions.Http.dll => 0x115c82ee => 9
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 33
	i32 321597661, ; 13: System.Numerics => 0x132b30dd => 23
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 55
	i32 385762202, ; 15: System.Memory.dll => 0x16fe439a => 21
	i32 442521989, ; 16: Xamarin.Essentials => 0x1a605985 => 73
	i32 450948140, ; 17: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 51
	i32 465846621, ; 18: mscorlib => 0x1bc4415d => 15
	i32 469710990, ; 19: System.dll => 0x1bff388e => 19
	i32 476646585, ; 20: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 52
	i32 486930444, ; 21: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 61
	i32 513247710, ; 22: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 13
	i32 526420162, ; 23: System.Transactions.dll => 0x1f6088c2 => 80
	i32 539058512, ; 24: Microsoft.Extensions.Logging => 0x20216150 => 11
	i32 548916678, ; 25: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 5
	i32 605376203, ; 26: System.IO.Compression.FileSystem => 0x24154ecb => 84
	i32 627609679, ; 27: Xamarin.AndroidX.CustomView => 0x2568904f => 47
	i32 662205335, ; 28: System.Text.Encodings.Web.dll => 0x27787397 => 27
	i32 663517072, ; 29: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 71
	i32 666292255, ; 30: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 38
	i32 690569205, ; 31: System.Xml.Linq.dll => 0x29293ff5 => 90
	i32 700284507, ; 32: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 76
	i32 705511568, ; 33: Friends.Common.dll => 0x2a0d4090 => 3
	i32 775507847, ; 34: System.IO.Compression => 0x2e394f87 => 83
	i32 789151979, ; 35: Microsoft.Extensions.Options => 0x2f0980eb => 12
	i32 809851609, ; 36: System.Drawing.Common.dll => 0x30455ad9 => 82
	i32 843511501, ; 37: Xamarin.AndroidX.Print => 0x3246f6cd => 63
	i32 878954865, ; 38: System.Net.Http.Json => 0x3463c971 => 22
	i32 928116545, ; 39: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 75
	i32 963749017, ; 40: Friends.Android => 0x3971a499 => 0
	i32 967690846, ; 41: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 55
	i32 1012816738, ; 42: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 65
	i32 1028951442, ; 43: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 7
	i32 1035644815, ; 44: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 37
	i32 1052210849, ; 45: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 58
	i32 1084122840, ; 46: Xamarin.Kotlin.StdLib => 0x409e66d8 => 78
	i32 1098259244, ; 47: System => 0x41761b2c => 19
	i32 1175144683, ; 48: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 69
	i32 1204270330, ; 49: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 38
	i32 1214827643, ; 50: CommunityToolkit.Mvvm => 0x4868cc7b => 2
	i32 1267360935, ; 51: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 70
	i32 1293217323, ; 52: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 49
	i32 1365406463, ; 53: System.ServiceModel.Internals.dll => 0x516272ff => 88
	i32 1376866003, ; 54: Xamarin.AndroidX.SavedState => 0x52114ed3 => 65
	i32 1406073936, ; 55: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 44
	i32 1411638395, ; 56: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 25
	i32 1462112819, ; 57: System.IO.Compression.dll => 0x57261233 => 83
	i32 1469204771, ; 58: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 36
	i32 1470490898, ; 59: Microsoft.Extensions.Primitives => 0x57a5e912 => 13
	i32 1505131794, ; 60: Microsoft.Extensions.Http => 0x59b67d12 => 9
	i32 1582372066, ; 61: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 48
	i32 1592978981, ; 62: System.Runtime.Serialization.dll => 0x5ef2ee25 => 87
	i32 1622152042, ; 63: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 60
	i32 1636350590, ; 64: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 46
	i32 1639515021, ; 65: System.Net.Http.dll => 0x61b9038d => 86
	i32 1657153582, ; 66: System.Runtime => 0x62c6282e => 26
	i32 1658251792, ; 67: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 74
	i32 1698840827, ; 68: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 77
	i32 1729485958, ; 69: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 42
	i32 1746115085, ; 70: System.IO.Pipelines.dll => 0x68139a0d => 20
	i32 1766324549, ; 71: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 67
	i32 1770582343, ; 72: Microsoft.Extensions.Logging.dll => 0x6988f147 => 11
	i32 1776026572, ; 73: System.Core.dll => 0x69dc03cc => 17
	i32 1788241197, ; 74: Xamarin.AndroidX.Fragment => 0x6a96652d => 51
	i32 1796167890, ; 75: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 5
	i32 1808609942, ; 76: Xamarin.AndroidX.Loader => 0x6bcd3296 => 60
	i32 1813058853, ; 77: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 78
	i32 1813201214, ; 78: Xamarin.Google.Android.Material => 0x6c13413e => 74
	i32 1828688058, ; 79: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 10
	i32 1867746548, ; 80: Xamarin.Essentials.dll => 0x6f538cf4 => 73
	i32 1885316902, ; 81: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 39
	i32 1919157823, ; 82: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 62
	i32 1983156543, ; 83: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 77
	i32 1985761444, ; 84: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 32
	i32 2011961780, ; 85: System.Buffers.dll => 0x77ec19b4 => 16
	i32 2019465201, ; 86: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 58
	i32 2031763787, ; 87: Xamarin.Android.Glide => 0x791a414b => 31
	i32 2055257422, ; 88: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 56
	i32 2079903147, ; 89: System.Runtime.dll => 0x7bf8cdab => 26
	i32 2090596640, ; 90: System.Numerics.Vectors => 0x7c9bf920 => 24
	i32 2097448633, ; 91: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 53
	i32 2181898931, ; 92: Microsoft.Extensions.Options.dll => 0x820d22b3 => 12
	i32 2192057212, ; 93: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 10
	i32 2201231467, ; 94: System.Net.Http => 0x8334206b => 86
	i32 2217644978, ; 95: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 69
	i32 2244775296, ; 96: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 61
	i32 2256548716, ; 97: Xamarin.AndroidX.MultiDex => 0x8680336c => 62
	i32 2266799131, ; 98: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 6
	i32 2267999099, ; 99: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 30
	i32 2279755925, ; 100: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 64
	i32 2315684594, ; 101: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 34
	i32 2435904999, ; 102: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 92
	i32 2471841756, ; 103: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 104: Java.Interop.dll => 0x93918882 => 4
	i32 2501346920, ; 105: System.Data.DataSetExtensions => 0x95178668 => 81
	i32 2505896520, ; 106: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 57
	i32 2522472828, ; 107: Xamarin.Android.Glide.dll => 0x9659e17c => 31
	i32 2570120770, ; 108: System.Text.Encodings.Web => 0x9930ee42 => 27
	i32 2581819634, ; 109: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 70
	i32 2620871830, ; 110: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 46
	i32 2663391936, ; 111: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 30
	i32 2732626843, ; 112: Xamarin.AndroidX.Activity => 0xa2e0939b => 33
	i32 2737747696, ; 113: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 36
	i32 2770495804, ; 114: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 76
	i32 2778768386, ; 115: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 72
	i32 2810250172, ; 116: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 44
	i32 2819470561, ; 117: System.Xml.dll => 0xa80db4e1 => 29
	i32 2848580988, ; 118: Friends.Common => 0xa9c9e57c => 3
	i32 2853208004, ; 119: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 72
	i32 2855708567, ; 120: Xamarin.AndroidX.Transition => 0xaa36a797 => 68
	i32 2884993177, ; 121: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 50
	i32 2903344695, ; 122: System.ComponentModel.Composition => 0xad0d8637 => 85
	i32 2905242038, ; 123: mscorlib.dll => 0xad2a79b6 => 15
	i32 2919462931, ; 124: System.Numerics.Vectors.dll => 0xae037813 => 24
	i32 2921128767, ; 125: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 35
	i32 2959090156, ; 126: Friends.Android.dll => 0xb06021ec => 0
	i32 2978675010, ; 127: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 49
	i32 3024354802, ; 128: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 54
	i32 3111772706, ; 129: System.Runtime.Serialization => 0xb979e222 => 87
	i32 3124832203, ; 130: System.Threading.Tasks.Extensions => 0xba4127cb => 93
	i32 3204380047, ; 131: System.Data.dll => 0xbefef58f => 79
	i32 3211777861, ; 132: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 48
	i32 3247949154, ; 133: Mono.Security => 0xc197c562 => 94
	i32 3258312781, ; 134: Xamarin.AndroidX.CardView => 0xc235e84d => 42
	i32 3265893370, ; 135: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 93
	i32 3267021929, ; 136: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 40
	i32 3280506390, ; 137: System.ComponentModel.Annotations.dll => 0xc3888e16 => 91
	i32 3317135071, ; 138: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 47
	i32 3317144872, ; 139: System.Data => 0xc5b79d28 => 79
	i32 3340431453, ; 140: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 39
	i32 3353484488, ; 141: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 53
	i32 3358260929, ; 142: System.Text.Json => 0xc82afec1 => 28
	i32 3362522851, ; 143: Xamarin.AndroidX.Core => 0xc86c06e3 => 45
	i32 3366347497, ; 144: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 145: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 64
	i32 3395150330, ; 146: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 25
	i32 3404865022, ; 147: System.ServiceModel.Internals => 0xcaf21dfe => 88
	i32 3428513518, ; 148: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 8
	i32 3429136800, ; 149: System.Xml => 0xcc6479a0 => 29
	i32 3430777524, ; 150: netstandard => 0xcc7d82b4 => 1
	i32 3476120550, ; 151: Mono.Android => 0xcf3163e6 => 14
	i32 3485117614, ; 152: System.Text.Json.dll => 0xcfbaacae => 28
	i32 3486566296, ; 153: System.Transactions => 0xcfd0c798 => 80
	i32 3501239056, ; 154: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 40
	i32 3509114376, ; 155: System.Xml.Linq => 0xd128d608 => 90
	i32 3567349600, ; 156: System.ComponentModel.Composition.dll => 0xd4a16f60 => 85
	i32 3597029428, ; 157: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 32
	i32 3627220390, ; 158: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 63
	i32 3633644679, ; 159: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 35
	i32 3641597786, ; 160: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 56
	i32 3645089577, ; 161: System.ComponentModel.DataAnnotations => 0xd943a729 => 92
	i32 3657292374, ; 162: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 6
	i32 3672681054, ; 163: Mono.Android.dll => 0xdae8aa5e => 14
	i32 3676310014, ; 164: System.Web.Services.dll => 0xdb2009fe => 89
	i32 3682565725, ; 165: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 41
	i32 3689375977, ; 166: System.Drawing.Common => 0xdbe768e9 => 82
	i32 3718780102, ; 167: Xamarin.AndroidX.Annotation => 0xdda814c6 => 34
	i32 3737834244, ; 168: System.Net.Http.Json.dll => 0xdecad304 => 22
	i32 3748608112, ; 169: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 18
	i32 3786282454, ; 170: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 43
	i32 3829621856, ; 171: System.Numerics.dll => 0xe4436460 => 23
	i32 3841636137, ; 172: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 7
	i32 3885922214, ; 173: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 68
	i32 3896760992, ; 174: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 45
	i32 3920810846, ; 175: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 84
	i32 3921031405, ; 176: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 71
	i32 3945713374, ; 177: System.Data.DataSetExtensions.dll => 0xeb2ecede => 81
	i32 3955647286, ; 178: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 37
	i32 4023392905, ; 179: System.IO.Pipelines => 0xefd01a89 => 20
	i32 4025784931, ; 180: System.Memory => 0xeff49a63 => 21
	i32 4105002889, ; 181: Mono.Security.dll => 0xf4ad5f89 => 94
	i32 4126470640, ; 182: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 8
	i32 4151237749, ; 183: System.Core => 0xf76edc75 => 17
	i32 4182413190, ; 184: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 59
	i32 4213026141, ; 185: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 18
	i32 4260525087, ; 186: System.Buffers => 0xfdf2741f => 16
	i32 4274623895, ; 187: CommunityToolkit.Mvvm.dll => 0xfec99597 => 2
	i32 4292120959, ; 188: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 59
	i32 4294763496 ; 189: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 50
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [190 x i32] [
	i32 57, i32 75, i32 66, i32 66, i32 91, i32 43, i32 67, i32 41, ; 0..7
	i32 54, i32 89, i32 52, i32 9, i32 33, i32 23, i32 55, i32 21, ; 8..15
	i32 73, i32 51, i32 15, i32 19, i32 52, i32 61, i32 13, i32 80, ; 16..23
	i32 11, i32 5, i32 84, i32 47, i32 27, i32 71, i32 38, i32 90, ; 24..31
	i32 76, i32 3, i32 83, i32 12, i32 82, i32 63, i32 22, i32 75, ; 32..39
	i32 0, i32 55, i32 65, i32 7, i32 37, i32 58, i32 78, i32 19, ; 40..47
	i32 69, i32 38, i32 2, i32 70, i32 49, i32 88, i32 65, i32 44, ; 48..55
	i32 25, i32 83, i32 36, i32 13, i32 9, i32 48, i32 87, i32 60, ; 56..63
	i32 46, i32 86, i32 26, i32 74, i32 77, i32 42, i32 20, i32 67, ; 64..71
	i32 11, i32 17, i32 51, i32 5, i32 60, i32 78, i32 74, i32 10, ; 72..79
	i32 73, i32 39, i32 62, i32 77, i32 32, i32 16, i32 58, i32 31, ; 80..87
	i32 56, i32 26, i32 24, i32 53, i32 12, i32 10, i32 86, i32 69, ; 88..95
	i32 61, i32 62, i32 6, i32 30, i32 64, i32 34, i32 92, i32 1, ; 96..103
	i32 4, i32 81, i32 57, i32 31, i32 27, i32 70, i32 46, i32 30, ; 104..111
	i32 33, i32 36, i32 76, i32 72, i32 44, i32 29, i32 3, i32 72, ; 112..119
	i32 68, i32 50, i32 85, i32 15, i32 24, i32 35, i32 0, i32 49, ; 120..127
	i32 54, i32 87, i32 93, i32 79, i32 48, i32 94, i32 42, i32 93, ; 128..135
	i32 40, i32 91, i32 47, i32 79, i32 39, i32 53, i32 28, i32 45, ; 136..143
	i32 4, i32 64, i32 25, i32 88, i32 8, i32 29, i32 1, i32 14, ; 144..151
	i32 28, i32 80, i32 40, i32 90, i32 85, i32 32, i32 63, i32 35, ; 152..159
	i32 56, i32 92, i32 6, i32 14, i32 89, i32 41, i32 82, i32 34, ; 160..167
	i32 22, i32 18, i32 43, i32 23, i32 7, i32 68, i32 45, i32 84, ; 168..175
	i32 71, i32 81, i32 37, i32 20, i32 21, i32 94, i32 8, i32 17, ; 176..183
	i32 59, i32 18, i32 16, i32 2, i32 59, i32 50 ; 184..189
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
