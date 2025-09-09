; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [174 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 52
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 70
	i32 101534019, ; 2: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 61
	i32 120558881, ; 3: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 61
	i32 159306688, ; 4: System.ComponentModel.Annotations => 0x97ed3c0 => 83
	i32 165246403, ; 5: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 39
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 62
	i32 209399409, ; 7: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 37
	i32 230216969, ; 8: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 49
	i32 232815796, ; 9: System.Web.Services => 0xde07cb4 => 81
	i32 280482487, ; 10: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 47
	i32 291275502, ; 11: Microsoft.Extensions.Http.dll => 0x115c82ee => 9
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 321597661, ; 13: System.Numerics => 0x132b30dd => 23
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 50
	i32 385762202, ; 15: System.Memory.dll => 0x16fe439a => 21
	i32 442521989, ; 16: Xamarin.Essentials => 0x1a605985 => 68
	i32 450948140, ; 17: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 46
	i32 465846621, ; 18: mscorlib => 0x1bc4415d => 15
	i32 469710990, ; 19: System.dll => 0x1bff388e => 19
	i32 476646585, ; 20: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 47
	i32 486930444, ; 21: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 56
	i32 513247710, ; 22: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 13
	i32 526420162, ; 23: System.Transactions.dll => 0x1f6088c2 => 72
	i32 539058512, ; 24: Microsoft.Extensions.Logging => 0x20216150 => 11
	i32 548916678, ; 25: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 5
	i32 605376203, ; 26: System.IO.Compression.FileSystem => 0x24154ecb => 76
	i32 627609679, ; 27: Xamarin.AndroidX.CustomView => 0x2568904f => 43
	i32 662205335, ; 28: System.Text.Encodings.Web.dll => 0x27787397 => 27
	i32 663517072, ; 29: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 66
	i32 666292255, ; 30: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 34
	i32 690569205, ; 31: System.Xml.Linq.dll => 0x29293ff5 => 82
	i32 705511568, ; 32: Friends.Common.dll => 0x2a0d4090 => 3
	i32 775507847, ; 33: System.IO.Compression => 0x2e394f87 => 75
	i32 789151979, ; 34: Microsoft.Extensions.Options => 0x2f0980eb => 12
	i32 809851609, ; 35: System.Drawing.Common.dll => 0x30455ad9 => 74
	i32 843511501, ; 36: Xamarin.AndroidX.Print => 0x3246f6cd => 58
	i32 878954865, ; 37: System.Net.Http.Json => 0x3463c971 => 22
	i32 928116545, ; 38: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 70
	i32 963749017, ; 39: Friends.Android => 0x3971a499 => 0
	i32 967690846, ; 40: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 50
	i32 1012816738, ; 41: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 60
	i32 1028951442, ; 42: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 7
	i32 1035644815, ; 43: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 33
	i32 1052210849, ; 44: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 53
	i32 1098259244, ; 45: System => 0x41761b2c => 19
	i32 1175144683, ; 46: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 64
	i32 1204270330, ; 47: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 34
	i32 1214827643, ; 48: CommunityToolkit.Mvvm => 0x4868cc7b => 2
	i32 1267360935, ; 49: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 65
	i32 1293217323, ; 50: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 45
	i32 1365406463, ; 51: System.ServiceModel.Internals.dll => 0x516272ff => 80
	i32 1376866003, ; 52: Xamarin.AndroidX.SavedState => 0x52114ed3 => 60
	i32 1406073936, ; 53: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 40
	i32 1411638395, ; 54: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 25
	i32 1462112819, ; 55: System.IO.Compression.dll => 0x57261233 => 75
	i32 1469204771, ; 56: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 32
	i32 1470490898, ; 57: Microsoft.Extensions.Primitives => 0x57a5e912 => 13
	i32 1505131794, ; 58: Microsoft.Extensions.Http => 0x59b67d12 => 9
	i32 1582372066, ; 59: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 44
	i32 1592978981, ; 60: System.Runtime.Serialization.dll => 0x5ef2ee25 => 79
	i32 1622152042, ; 61: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 55
	i32 1636350590, ; 62: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 42
	i32 1639515021, ; 63: System.Net.Http.dll => 0x61b9038d => 78
	i32 1657153582, ; 64: System.Runtime => 0x62c6282e => 26
	i32 1658251792, ; 65: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 69
	i32 1729485958, ; 66: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 38
	i32 1746115085, ; 67: System.IO.Pipelines.dll => 0x68139a0d => 20
	i32 1766324549, ; 68: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 62
	i32 1770582343, ; 69: Microsoft.Extensions.Logging.dll => 0x6988f147 => 11
	i32 1776026572, ; 70: System.Core.dll => 0x69dc03cc => 17
	i32 1788241197, ; 71: Xamarin.AndroidX.Fragment => 0x6a96652d => 46
	i32 1796167890, ; 72: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 5
	i32 1808609942, ; 73: Xamarin.AndroidX.Loader => 0x6bcd3296 => 55
	i32 1813201214, ; 74: Xamarin.Google.Android.Material => 0x6c13413e => 69
	i32 1828688058, ; 75: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 10
	i32 1867746548, ; 76: Xamarin.Essentials.dll => 0x6f538cf4 => 68
	i32 1885316902, ; 77: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 35
	i32 1919157823, ; 78: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 57
	i32 2011961780, ; 79: System.Buffers.dll => 0x77ec19b4 => 16
	i32 2019465201, ; 80: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 53
	i32 2055257422, ; 81: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 51
	i32 2079903147, ; 82: System.Runtime.dll => 0x7bf8cdab => 26
	i32 2090596640, ; 83: System.Numerics.Vectors => 0x7c9bf920 => 24
	i32 2097448633, ; 84: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 48
	i32 2181898931, ; 85: Microsoft.Extensions.Options.dll => 0x820d22b3 => 12
	i32 2192057212, ; 86: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 10
	i32 2201231467, ; 87: System.Net.Http => 0x8334206b => 78
	i32 2217644978, ; 88: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 64
	i32 2244775296, ; 89: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 56
	i32 2256548716, ; 90: Xamarin.AndroidX.MultiDex => 0x8680336c => 57
	i32 2266799131, ; 91: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 6
	i32 2279755925, ; 92: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 59
	i32 2315684594, ; 93: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 31
	i32 2435904999, ; 94: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 84
	i32 2471841756, ; 95: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 96: Java.Interop.dll => 0x93918882 => 4
	i32 2501346920, ; 97: System.Data.DataSetExtensions => 0x95178668 => 73
	i32 2505896520, ; 98: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 52
	i32 2570120770, ; 99: System.Text.Encodings.Web => 0x9930ee42 => 27
	i32 2581819634, ; 100: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 65
	i32 2620871830, ; 101: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 42
	i32 2732626843, ; 102: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 32
	i32 2778768386, ; 104: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 67
	i32 2810250172, ; 105: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 40
	i32 2819470561, ; 106: System.Xml.dll => 0xa80db4e1 => 29
	i32 2848580988, ; 107: Friends.Common => 0xa9c9e57c => 3
	i32 2853208004, ; 108: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 67
	i32 2855708567, ; 109: Xamarin.AndroidX.Transition => 0xaa36a797 => 63
	i32 2903344695, ; 110: System.ComponentModel.Composition => 0xad0d8637 => 77
	i32 2905242038, ; 111: mscorlib.dll => 0xad2a79b6 => 15
	i32 2919462931, ; 112: System.Numerics.Vectors.dll => 0xae037813 => 24
	i32 2959090156, ; 113: Friends.Android.dll => 0xb06021ec => 0
	i32 2978675010, ; 114: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 45
	i32 3024354802, ; 115: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 49
	i32 3111772706, ; 116: System.Runtime.Serialization => 0xb979e222 => 79
	i32 3124832203, ; 117: System.Threading.Tasks.Extensions => 0xba4127cb => 85
	i32 3204380047, ; 118: System.Data.dll => 0xbefef58f => 71
	i32 3211777861, ; 119: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 44
	i32 3247949154, ; 120: Mono.Security => 0xc197c562 => 86
	i32 3258312781, ; 121: Xamarin.AndroidX.CardView => 0xc235e84d => 38
	i32 3265893370, ; 122: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 85
	i32 3267021929, ; 123: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 36
	i32 3280506390, ; 124: System.ComponentModel.Annotations.dll => 0xc3888e16 => 83
	i32 3317135071, ; 125: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 43
	i32 3317144872, ; 126: System.Data => 0xc5b79d28 => 71
	i32 3340431453, ; 127: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 35
	i32 3353484488, ; 128: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 48
	i32 3358260929, ; 129: System.Text.Json => 0xc82afec1 => 28
	i32 3362522851, ; 130: Xamarin.AndroidX.Core => 0xc86c06e3 => 41
	i32 3366347497, ; 131: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 132: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 59
	i32 3395150330, ; 133: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 25
	i32 3404865022, ; 134: System.ServiceModel.Internals => 0xcaf21dfe => 80
	i32 3428513518, ; 135: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 8
	i32 3429136800, ; 136: System.Xml => 0xcc6479a0 => 29
	i32 3430777524, ; 137: netstandard => 0xcc7d82b4 => 1
	i32 3476120550, ; 138: Mono.Android => 0xcf3163e6 => 14
	i32 3485117614, ; 139: System.Text.Json.dll => 0xcfbaacae => 28
	i32 3486566296, ; 140: System.Transactions => 0xcfd0c798 => 72
	i32 3501239056, ; 141: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 36
	i32 3509114376, ; 142: System.Xml.Linq => 0xd128d608 => 82
	i32 3567349600, ; 143: System.ComponentModel.Composition.dll => 0xd4a16f60 => 77
	i32 3627220390, ; 144: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 58
	i32 3641597786, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 51
	i32 3645089577, ; 146: System.ComponentModel.DataAnnotations => 0xd943a729 => 84
	i32 3657292374, ; 147: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 6
	i32 3672681054, ; 148: Mono.Android.dll => 0xdae8aa5e => 14
	i32 3676310014, ; 149: System.Web.Services.dll => 0xdb2009fe => 81
	i32 3682565725, ; 150: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 37
	i32 3689375977, ; 151: System.Drawing.Common => 0xdbe768e9 => 74
	i32 3718780102, ; 152: Xamarin.AndroidX.Annotation => 0xdda814c6 => 31
	i32 3737834244, ; 153: System.Net.Http.Json.dll => 0xdecad304 => 22
	i32 3748608112, ; 154: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 18
	i32 3786282454, ; 155: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 39
	i32 3829621856, ; 156: System.Numerics.dll => 0xe4436460 => 23
	i32 3841636137, ; 157: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 7
	i32 3885922214, ; 158: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 63
	i32 3896760992, ; 159: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 41
	i32 3920810846, ; 160: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 76
	i32 3921031405, ; 161: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 66
	i32 3945713374, ; 162: System.Data.DataSetExtensions.dll => 0xeb2ecede => 73
	i32 3955647286, ; 163: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 33
	i32 4023392905, ; 164: System.IO.Pipelines => 0xefd01a89 => 20
	i32 4025784931, ; 165: System.Memory => 0xeff49a63 => 21
	i32 4105002889, ; 166: Mono.Security.dll => 0xf4ad5f89 => 86
	i32 4126470640, ; 167: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 8
	i32 4151237749, ; 168: System.Core => 0xf76edc75 => 17
	i32 4182413190, ; 169: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 54
	i32 4213026141, ; 170: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 18
	i32 4260525087, ; 171: System.Buffers => 0xfdf2741f => 16
	i32 4274623895, ; 172: CommunityToolkit.Mvvm.dll => 0xfec99597 => 2
	i32 4292120959 ; 173: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 54
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [174 x i32] [
	i32 52, i32 70, i32 61, i32 61, i32 83, i32 39, i32 62, i32 37, ; 0..7
	i32 49, i32 81, i32 47, i32 9, i32 30, i32 23, i32 50, i32 21, ; 8..15
	i32 68, i32 46, i32 15, i32 19, i32 47, i32 56, i32 13, i32 72, ; 16..23
	i32 11, i32 5, i32 76, i32 43, i32 27, i32 66, i32 34, i32 82, ; 24..31
	i32 3, i32 75, i32 12, i32 74, i32 58, i32 22, i32 70, i32 0, ; 32..39
	i32 50, i32 60, i32 7, i32 33, i32 53, i32 19, i32 64, i32 34, ; 40..47
	i32 2, i32 65, i32 45, i32 80, i32 60, i32 40, i32 25, i32 75, ; 48..55
	i32 32, i32 13, i32 9, i32 44, i32 79, i32 55, i32 42, i32 78, ; 56..63
	i32 26, i32 69, i32 38, i32 20, i32 62, i32 11, i32 17, i32 46, ; 64..71
	i32 5, i32 55, i32 69, i32 10, i32 68, i32 35, i32 57, i32 16, ; 72..79
	i32 53, i32 51, i32 26, i32 24, i32 48, i32 12, i32 10, i32 78, ; 80..87
	i32 64, i32 56, i32 57, i32 6, i32 59, i32 31, i32 84, i32 1, ; 88..95
	i32 4, i32 73, i32 52, i32 27, i32 65, i32 42, i32 30, i32 32, ; 96..103
	i32 67, i32 40, i32 29, i32 3, i32 67, i32 63, i32 77, i32 15, ; 104..111
	i32 24, i32 0, i32 45, i32 49, i32 79, i32 85, i32 71, i32 44, ; 112..119
	i32 86, i32 38, i32 85, i32 36, i32 83, i32 43, i32 71, i32 35, ; 120..127
	i32 48, i32 28, i32 41, i32 4, i32 59, i32 25, i32 80, i32 8, ; 128..135
	i32 29, i32 1, i32 14, i32 28, i32 72, i32 36, i32 82, i32 77, ; 136..143
	i32 58, i32 51, i32 84, i32 6, i32 14, i32 81, i32 37, i32 74, ; 144..151
	i32 31, i32 22, i32 18, i32 39, i32 23, i32 7, i32 63, i32 41, ; 152..159
	i32 76, i32 66, i32 73, i32 33, i32 20, i32 21, i32 86, i32 8, ; 160..167
	i32 17, i32 54, i32 18, i32 16, i32 2, i32 54 ; 168..173
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
