; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [336 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [672 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 243
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 183
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 188
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 230
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 272
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 275
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 237
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 11: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 12: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 274
	i64 545109961164950392, ; 13: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 308
	i64 560278790331054453, ; 14: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 15: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 256
	i64 649145001856603771, ; 16: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 750875890346172408, ; 17: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 18: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 231
	i64 799765834175365804, ; 19: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 20: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 311
	i64 872800313462103108, ; 21: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 242
	i64 895210737996778430, ; 22: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 257
	i64 940822596282819491, ; 23: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 943650302560566006, ; 24: ExoPlayer.Dash.dll => 0xd1884f3544ffaf6 => 204
	i64 960778385402502048, ; 25: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 26: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 27: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 287
	i64 1121665720830085036, ; 28: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 319
	i64 1268860745194512059, ; 29: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 30: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 31: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 226
	i64 1369545283391376210, ; 32: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 265
	i64 1404195534211153682, ; 33: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 34: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1435054553028609000, ; 35: ExoPlayer.Ext.MediaSession => 0x13ea56834293c3e8 => 210
	i64 1476839205573959279, ; 36: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 37: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 185
	i64 1492954217099365037, ; 38: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 39: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 40: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 41: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 317
	i64 1576750169145655260, ; 42: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 286
	i64 1624659445732251991, ; 43: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 225
	i64 1628611045998245443, ; 44: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 260
	i64 1636321030536304333, ; 45: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 250
	i64 1651782184287836205, ; 46: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 47: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 48: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 49: Newtonsoft.Json => 0x18071957e9b889d7 => 190
	i64 1735388228521408345, ; 50: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 51: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 52: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 53: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 224
	i64 1825687700144851180, ; 54: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 55: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 307
	i64 1836611346387731153, ; 56: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 272
	i64 1854145951182283680, ; 57: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 58: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 59: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 221
	i64 1881198190668717030, ; 60: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 329
	i64 1897575647115118287, ; 61: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 274
	i64 1920760634179481754, ; 62: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 186
	i64 1959996714666907089, ; 63: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 329
	i64 1972385128188460614, ; 64: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 65: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 258
	i64 1983698669889758782, ; 66: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 303
	i64 1996473713535492147, ; 67: CommunityToolkit.Maui.MediaElement.dll => 0x1bb4e643c2b02033 => 173
	i64 2019660174692588140, ; 68: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 321
	i64 2040001226662520565, ; 69: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 70: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 71: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 297
	i64 2080945842184875448, ; 72: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 73: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 74: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 75: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 190
	i64 2165310824878145998, ; 76: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 218
	i64 2165725771938924357, ; 77: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 228
	i64 2200176636225660136, ; 78: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 181
	i64 2262844636196693701, ; 79: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 242
	i64 2287834202362508563, ; 80: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 81: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 82: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 325
	i64 2304837677853103545, ; 83: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 271
	i64 2315304989185124968, ; 84: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 253
	i64 2335503487726329082, ; 86: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 87: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2379805940701141695, ; 88: ExoPlayer.Rtsp => 0x2106c4e4f1db1abf => 211
	i64 2470498323731680442, ; 89: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 235
	i64 2479423007379663237, ; 90: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 281
	i64 2497223385847772520, ; 91: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 92: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 219
	i64 2592350477072141967, ; 93: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 94: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 328
	i64 2624866290265602282, ; 95: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 96: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 97: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 177
	i64 2662981627730767622, ; 98: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 303
	i64 2706075432581334785, ; 99: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 100: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 101: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 276
	i64 2815524396660695947, ; 102: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2895129759130297543, ; 103: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 308
	i64 2923871038697555247, ; 104: Jsr305Binding => 0x2893ad37e69ec52f => 288
	i64 3017136373564924869, ; 105: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 106: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 287
	i64 3106852385031680087, ; 107: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 108: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 109: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3188824379904900412, ; 110: ExoPlayer.Common.dll => 0x2c40fae0df563d3c => 201
	i64 3281594302220646930, ; 111: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 112: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 251
	i64 3303437397778967116, ; 113: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 222
	i64 3311221304742556517, ; 114: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 115: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 116: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 117: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 300
	i64 3429672777697402584, ; 118: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 188
	i64 3437845325506641314, ; 119: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 120: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 278
	i64 3494946837667399002, ; 121: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 175
	i64 3508450208084372758, ; 122: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 123: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 277
	i64 3531994851595924923, ; 124: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 125: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 126: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 323
	i64 3571415421602489686, ; 127: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 128: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 176
	i64 3647754201059316852, ; 129: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 130: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 175
	i64 3659371656528649588, ; 131: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 216
	i64 3716579019761409177, ; 132: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 133: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 270
	i64 3772598417116884899, ; 134: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 243
	i64 3869221888984012293, ; 135: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 179
	i64 3869649043256705283, ; 136: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 137: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 186
	i64 3919223565570527920, ; 138: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 139: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 140: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 141: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 142: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4073500526318903918, ; 143: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 144: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 184
	i64 4120493066591692148, ; 145: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 334
	i64 4135615024468428857, ; 146: Syncfusion.Maui.Popup => 0x3964a7f40d358839 => 199
	i64 4148881117810174540, ; 147: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 148: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 149: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 150: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 151: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 152: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 237
	i64 4205801962323029395, ; 153: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 154: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 155: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4356591372459378815, ; 156: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 331
	i64 4373617458794931033, ; 157: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 158: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 159: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 160: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 161: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4600900820020166933, ; 162: Syncfusion.Maui.Chat.dll => 0x3fd9aeeb501b0115 => 193
	i64 4636684751163556186, ; 163: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 282
	i64 4672453897036726049, ; 164: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 165: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 301
	i64 4716677666592453464, ; 166: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 167: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 168: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 255
	i64 4794310189461587505, ; 169: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 219
	i64 4795410492532947900, ; 170: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 277
	i64 4809057822547766521, ; 171: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 172: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 173: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5055365687667823624, ; 174: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 220
	i64 5081566143765835342, ; 175: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 176: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 177: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 178: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 179: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 262
	i64 5244375036463807528, ; 180: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 181: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5272717148637201210, ; 182: ExoPlayer.UI => 0x492c744f85a1833a => 214
	i64 5278787618751394462, ; 183: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 254
	i64 5290786973231294105, ; 185: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5332349484191854038, ; 186: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 194
	i64 5348796042099802469, ; 187: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 263
	i64 5376510917114486089, ; 188: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 281
	i64 5389233738419247641, ; 189: ExoPlayer.UI.dll => 0x4aca67881e079a19 => 214
	i64 5408338804355907810, ; 190: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 279
	i64 5423376490970181369, ; 191: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 192: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 193: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 194: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 233
	i64 5457765010617926378, ; 195: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 196: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 327
	i64 5507995362134886206, ; 197: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 198: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 330
	i64 5527431512186326818, ; 199: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 200: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 201: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 202: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 223
	i64 5591791169662171124, ; 203: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 204: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5692067934154308417, ; 205: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 284
	i64 5703838680789880885, ; 206: ExoPlayer.SmoothStreaming.dll => 0x4f281b0f589d1035 => 212
	i64 5724799082821825042, ; 207: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 246
	i64 5757522595884336624, ; 208: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 232
	i64 5783556987928984683, ; 209: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5796851092205341858, ; 210: Syncfusion.Maui.Chat => 0x50728d5af6bc0ca2 => 193
	i64 5896680224035167651, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 252
	i64 5959344983920014087, ; 212: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 273
	i64 5979151488806146654, ; 213: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5979737887476277947, ; 214: Syncfusion.Maui.Picker => 0x52fc4bed38f7e2bb => 198
	i64 5984759512290286505, ; 215: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6068057819846744445, ; 216: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 324
	i64 6102788177522843259, ; 217: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 273
	i64 6200764641006662125, ; 218: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 324
	i64 6222399776351216807, ; 219: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 220: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 221: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 222: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6313127126423224581, ; 223: ExoPlayer.DataSource => 0x579cbbac5056c105 => 206
	i64 6319713645133255417, ; 224: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 256
	i64 6357457916754632952, ; 225: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 335
	i64 6401687960814735282, ; 226: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 253
	i64 6478287442656530074, ; 227: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 312
	i64 6504860066809920875, ; 228: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 228
	i64 6548213210057960872, ; 229: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 239
	i64 6557084851308642443, ; 230: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 285
	i64 6560151584539558821, ; 231: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 182
	i64 6589202984700901502, ; 232: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 290
	i64 6591971792923354531, ; 233: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 254
	i64 6597152804937602598, ; 234: ExoPlayer.Dash => 0x5b8dcb85db471626 => 204
	i64 6617685658146568858, ; 235: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 236: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739853162153639747, ; 237: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 238: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 320
	i64 6772837112740759457, ; 239: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 240: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 323
	i64 6786606130239981554, ; 241: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 242: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 243: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 244: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 245: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 7011053663211085209, ; 246: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 248
	i64 7060896174307865760, ; 247: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 248: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 249: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 250: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 249
	i64 7111139937678078858, ; 251: ExoPlayer.Database => 0x62afd818cd65338a => 205
	i64 7112547816752919026, ; 252: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7192745174564810625, ; 253: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 218
	i64 7220009545223068405, ; 254: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 327
	i64 7270811800166795866, ; 255: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 256: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 257: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 258: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 259: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 217
	i64 7349877832448834321, ; 260: LLama AI.dll => 0x660002f281a17b11 => 0
	i64 7377312882064240630, ; 261: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 262: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 263: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7526939507201682620, ; 264: Syncfusion.Maui.DataSource.dll => 0x68750f9a349c2cbc => 195
	i64 7554258198599408819, ; 265: ExoPlayer.Common => 0x68d61dceb5199cb3 => 201
	i64 7592577537120840276, ; 266: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7637303409920963731, ; 267: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7654504624184590948, ; 268: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 269: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 270: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 318
	i64 7714652370974252055, ; 271: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 272: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 257
	i64 7735176074855944702, ; 273: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 274: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 295
	i64 7769135412902976898, ; 275: Syncfusion.Maui.Popup.dll => 0x6bd1837ed1fd5d82 => 199
	i64 7791074099216502080, ; 276: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 277: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 278: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 225
	i64 8024811125417330653, ; 279: ExoPlayer.Extractor.dll => 0x6f5ddb33881a47dd => 208
	i64 8025517457475554965, ; 280: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 281: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8059634771736097245, ; 282: ExoPlayer.Decoder => 0x6fd9931f84b771dd => 207
	i64 8064050204834738623, ; 283: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 284: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 251
	i64 8085230611270010360, ; 285: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 286: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 287: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 288: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 289: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 290: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 291: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 299
	i64 8246048515196606205, ; 292: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 189
	i64 8264926008854159966, ; 293: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 294: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 295: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 296: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 297: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 234
	i64 8400357532724379117, ; 298: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 267
	i64 8410671156615598628, ; 299: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 300: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 255
	i64 8518412311883997971, ; 301: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 302: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8598790081731763592, ; 303: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 245
	i64 8601935802264776013, ; 304: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 279
	i64 8614108721271900878, ; 305: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 322
	i64 8623059219396073920, ; 306: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 307: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 308: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 309: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 266
	i64 8648495978913578441, ; 310: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 311: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 322
	i64 8684531736582871431, ; 312: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8690461831448123647, ; 313: ExoPlayer.Hls => 0x789ab8fddd8e58ff => 209
	i64 8725526185868997716, ; 314: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 315: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 296
	i64 8913407693824412442, ; 316: LLama AI => 0x7bb2c91280a34b1a => 0
	i64 8941376889969657626, ; 317: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 318: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 269
	i64 8954753533646919997, ; 319: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9045785047181495996, ; 320: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 332
	i64 9138683372487561558, ; 321: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9225789786819666723, ; 322: ExoPlayer.SmoothStreaming => 0x800896ee47d02323 => 212
	i64 9312692141327339315, ; 323: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 284
	i64 9324707631942237306, ; 324: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 224
	i64 9468215723722196442, ; 325: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9554839972845591462, ; 326: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 327: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 289
	i64 9584643793929893533, ; 328: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 329: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 330: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 331: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 332: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 235
	i64 9702891218465930390, ; 333: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9711637524876806384, ; 334: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 263
	i64 9722368759809762166, ; 335: ExoPlayer.Core => 0x86eccae02fd0e376 => 203
	i64 9780093022148426479, ; 336: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 286
	i64 9808709177481450983, ; 337: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 338: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 232
	i64 9834056768316610435, ; 339: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 340: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9907349773706910547, ; 341: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 245
	i64 9933555792566666578, ; 342: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9944345468791389265, ; 343: ExoPlayer.Core.dll => 0x8a01698437137c51 => 203
	i64 9956195530459977388, ; 344: Microsoft.Maui => 0x8a2b8315b36616ac => 187
	i64 9974604633896246661, ; 345: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 346: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 307
	i64 10017511394021241210, ; 347: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 181
	i64 10038780035334861115, ; 348: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 349: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10075958396420552332, ; 350: ExoPlayer => 0x8bd4fec6de42f68c => 200
	i64 10078727084704864206, ; 351: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 352: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 353: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 185
	i64 10099427421688105860, ; 354: ExoPlayer.Container.dll => 0x8c285fbb208f0b84 => 202
	i64 10105485790837105934, ; 355: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 356: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 304
	i64 10172042533944518731, ; 357: Syncfusion.Maui.GridCommon.dll => 0x8d2a5aca73ed684b => 196
	i64 10226222362177979215, ; 358: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 297
	i64 10229024438826829339, ; 359: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 239
	i64 10236703004850800690, ; 360: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 361: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 362: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 294
	i64 10360651442923773544, ; 363: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 364: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 365: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 278
	i64 10406448008575299332, ; 366: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 300
	i64 10430153318873392755, ; 367: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 236
	i64 10506226065143327199, ; 368: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 302
	i64 10512690409504421330, ; 369: Syncfusion.Maui.GridCommon => 0x91e4943a942ab5d2 => 196
	i64 10546663366131771576, ; 370: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 371: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 372: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10618541785153769341, ; 373: Syncfusion.Maui.Calendar => 0x935ca37e80bb8f7d => 192
	i64 10642885958238400069, ; 374: Syncfusion.Maui.Calendar.dll => 0x93b32063fdcaee45 => 192
	i64 10670374202010151210, ; 375: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 376: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10785150219063592792, ; 377: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 378: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 379: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 380: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 226
	i64 10899834349646441345, ; 381: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 382: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 383: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 11002576679268595294, ; 384: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 180
	i64 11009005086950030778, ; 385: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 187
	i64 11019817191295005410, ; 386: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 223
	i64 11023048688141570732, ; 387: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 388: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 389: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 290
	i64 11103762113411436187, ; 390: ExoPlayer.Container => 0x9a187ccfd8544e9b => 202
	i64 11103970607964515343, ; 391: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 313
	i64 11136029745144976707, ; 392: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 288
	i64 11162124722117608902, ; 393: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 283
	i64 11188319605227840848, ; 394: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 395: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 316
	i64 11226290749488709958, ; 396: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 182
	i64 11235648312900863002, ; 397: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 398: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 399: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 238
	i64 11347436699239206956, ; 400: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11366194298415195693, ; 401: CommunityToolkit.Maui.MediaElement => 0x9dbcd57e651ba62d => 173
	i64 11387716764763632936, ; 402: ExoPlayer.dll => 0x9e094c10167f3528 => 200
	i64 11392833485892708388, ; 403: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 268
	i64 11432101114902388181, ; 404: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 405: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 406: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 407: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 408: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 248
	i64 11518296021396496455, ; 409: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 314
	i64 11529969570048099689, ; 410: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 283
	i64 11530571088791430846, ; 411: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 179
	i64 11580057168383206117, ; 412: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 221
	i64 11591352189662810718, ; 413: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 276
	i64 11597940890313164233, ; 414: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 415: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 249
	i64 11687474876782398100, ; 416: ExoPlayer.Decoder.dll => 0xa232407a3feaca94 => 207
	i64 11692977985522001935, ; 417: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 418: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 310
	i64 11707554492040141440, ; 419: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 420: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11991047634523762324, ; 421: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 422: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 423: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 424: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 425: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 426: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12137774235383566651, ; 427: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 280
	i64 12145679461940342714, ; 428: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 429: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 215
	i64 12201331334810686224, ; 430: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 431: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 432: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 433: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 434: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 247
	i64 12466513435562512481, ; 435: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 261
	i64 12475113361194491050, ; 436: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 335
	i64 12487638416075308985, ; 437: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 241
	i64 12517810545449516888, ; 438: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 439: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 229
	i64 12550732019250633519, ; 440: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12681088699309157496, ; 441: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 315
	i64 12699999919562409296, ; 442: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 443: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 230
	i64 12708238894395270091, ; 444: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 445: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 446: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 447: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 285
	i64 12823819093633476069, ; 448: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 328
	i64 12828192437253469131, ; 449: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 298
	i64 12835242264250840079, ; 450: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 451: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 183
	i64 12843770487262409629, ; 452: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 453: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12982280885948128408, ; 454: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 240
	i64 13068258254871114833, ; 455: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13129914918964716986, ; 456: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 244
	i64 13173818576982874404, ; 457: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 458: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 302
	i64 13222659110913276082, ; 459: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 316
	i64 13343850469010654401, ; 460: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 461: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 462: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 310
	i64 13385736475199088545, ; 463: ExoPlayer.Extractor => 0xb9c3b0674d3b27a1 => 208
	i64 13401370062847626945, ; 464: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 280
	i64 13402939433517888790, ; 465: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 292
	i64 13404347523447273790, ; 466: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 234
	i64 13431476299110033919, ; 467: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 468: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 293
	i64 13463706743370286408, ; 469: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 470: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 295
	i64 13467053111158216594, ; 471: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 330
	i64 13491513212026656886, ; 472: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 227
	i64 13492260750531519258, ; 473: Syncfusion.Maui.ListView.dll => 0xbb3e23aae460631a => 197
	i64 13540124433173649601, ; 474: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 331
	i64 13545416393490209236, ; 475: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 314
	i64 13572454107664307259, ; 476: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 270
	i64 13578472628727169633, ; 477: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 478: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 479: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 240
	i64 13647894001087880694, ; 480: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 481: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 220
	i64 13702626353344114072, ; 482: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 483: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 484: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 485: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 486: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 309
	i64 13768883594457632599, ; 487: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13814445057219246765, ; 488: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 312
	i64 13828521679616088467, ; 489: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 296
	i64 13865727802090930648, ; 490: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 291
	i64 13881769479078963060, ; 491: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 492: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 493: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 494: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 247
	i64 13970307180132182141, ; 495: Syncfusion.Licensing => 0xc1e0805ccade287d => 191
	i64 13975254687929967048, ; 496: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 291
	i64 13982638193275851912, ; 497: ExoPlayer.Hls.dll => 0xc20c4f5a85045488 => 209
	i64 14075334701871371868, ; 498: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14100563506285742564, ; 499: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 304
	i64 14124974489674258913, ; 500: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 229
	i64 14125464355221830302, ; 501: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14178052285788134900, ; 502: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 216
	i64 14212104595480609394, ; 503: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 504: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 505: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 506: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 507: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 508: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 268
	i64 14298246716367104064, ; 509: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 510: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 511: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 512: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 217
	i64 14346402571976470310, ; 513: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14353329275190349375, ; 514: Syncfusion.Maui.ListView => 0xc73144edb7ef8e3f => 197
	i64 14461014870687870182, ; 515: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 516: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 325
	i64 14486659737292545672, ; 517: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 252
	i64 14495724990987328804, ; 518: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 271
	i64 14522721392235705434, ; 519: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 306
	i64 14538127318538747197, ; 520: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 191
	i64 14551742072151931844, ; 521: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 522: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 523: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 524: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 525: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 262
	i64 14669215534098758659, ; 526: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 177
	i64 14690985099581930927, ; 527: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 528: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 317
	i64 14744092281598614090, ; 529: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 333
	i64 14792063746108907174, ; 530: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 293
	i64 14832630590065248058, ; 531: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 532: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 238
	i64 14889905118082851278, ; 533: GoogleGson.dll => 0xcea391d0969961ce => 174
	i64 14892012299694389861, ; 534: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 334
	i64 14904040806490515477, ; 535: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 301
	i64 14912225920358050525, ; 536: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 537: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 538: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 178
	i64 14984936317414011727, ; 539: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 540: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 541: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 241
	i64 15015154896917945444, ; 542: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 543: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 544: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 545: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15111608613780139878, ; 546: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 318
	i64 15115185479366240210, ; 547: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 548: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 549: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 269
	i64 15227001540531775957, ; 550: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 176
	i64 15234786388537674379, ; 551: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 552: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 553: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 231
	i64 15279429628684179188, ; 554: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 299
	i64 15299439993936780255, ; 555: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15310474576322227775, ; 556: ExoPlayer.Ext.MediaSession.dll => 0xd479bb824055ee3f => 210
	i64 15338463749992804988, ; 557: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15370334346939861994, ; 558: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 236
	i64 15391712275433856905, ; 559: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 178
	i64 15526743539506359484, ; 560: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 561: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 562: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 563: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 305
	i64 15541854775306130054, ; 564: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 565: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 566: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 260
	i64 15609085926864131306, ; 567: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 568: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 569: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 305
	i64 15710114879900314733, ; 570: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 571: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 313
	i64 15745825835632158716, ; 572: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 194
	i64 15755368083429170162, ; 573: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 574: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 275
	i64 15783653065526199428, ; 575: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 306
	i64 15817206913877585035, ; 576: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 577: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 578: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 579: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 184
	i64 15934062614519587357, ; 580: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 581: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 582: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 583: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 584: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16048255734569022341, ; 585: ExoPlayer.Transformer => 0xdeb6db90339cb385 => 213
	i64 16054465462676478687, ; 586: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16069846902195211555, ; 587: ExoPlayer.DataSource.dll => 0xdf03909da841cd23 => 206
	i64 16154507427712707110, ; 588: System => 0xe03056ea4e39aa26 => 164
	i64 16219561732052121626, ; 589: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16288847719894691167, ; 590: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 319
	i64 16315482530584035869, ; 591: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 592: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 180
	i64 16337011941688632206, ; 593: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 594: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 246
	i64 16423015068819898779, ; 595: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 298
	i64 16454459195343277943, ; 596: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 597: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16579050217386591297, ; 598: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 292
	i64 16589693266713801121, ; 599: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 259
	i64 16621146507174665210, ; 600: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 233
	i64 16649148416072044166, ; 601: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 189
	i64 16677317093839702854, ; 602: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 267
	i64 16702652415771857902, ; 603: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 604: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 605: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 606: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 607: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 608: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 609: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 610: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 611: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 612: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 613: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 614: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 326
	i64 16977952268158210142, ; 615: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 616: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 259
	i64 16998075588627545693, ; 617: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 265
	i64 17008137082415910100, ; 618: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 619: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 222
	i64 17031351772568316411, ; 620: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 264
	i64 17037200463775726619, ; 621: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 250
	i64 17062143951396181894, ; 622: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 623: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 333
	i64 17118171214553292978, ; 624: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17187273293601214786, ; 625: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 626: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 627: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 628: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 629: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 630: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 631: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 632: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 633: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 311
	i64 17360349973592121190, ; 634: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 289
	i64 17375848869554566964, ; 635: ExoPlayer.Database.dll => 0xf1236a7c54ac3734 => 205
	i64 17438153253682247751, ; 636: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 326
	i64 17470386307322966175, ; 637: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17472189583225440952, ; 638: ExoPlayer.Transformer.dll => 0xf279afdab46ecab8 => 213
	i64 17494416322681485476, ; 639: Syncfusion.Maui.Picker.dll => 0xf2c8a6f4c239b8a4 => 198
	i64 17509662556995089465, ; 640: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 641: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 309
	i64 17522591619082469157, ; 642: GoogleGson => 0xf32cc03d27a5bf25 => 174
	i64 17590473451926037903, ; 643: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 215
	i64 17623389608345532001, ; 644: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 321
	i64 17627500474728259406, ; 645: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 646: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 647: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 332
	i64 17704177640604968747, ; 648: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 261
	i64 17710060891934109755, ; 649: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 258
	i64 17712670374920797664, ; 650: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17777860260071588075, ; 651: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17838668724098252521, ; 652: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 653: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 294
	i64 17928294245072900555, ; 654: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17992315986609351877, ; 655: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 656: System.Threading => 0xfa28e87b91334681 => 148
	i64 18070190158559153715, ; 657: ExoPlayer.Rtsp.dll => 0xfac6363590ad8e33 => 211
	i64 18099568558057551825, ; 658: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 320
	i64 18116111925905154859, ; 659: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 227
	i64 18121036031235206392, ; 660: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 264
	i64 18146411883821974900, ; 661: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 662: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18164061295166068260, ; 663: Syncfusion.Maui.DataSource => 0xfc13b582b8cb9624 => 195
	i64 18225059387460068507, ; 664: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 665: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 666: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 244
	i64 18305135509493619199, ; 667: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 266
	i64 18318849532986632368, ; 668: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 669: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 315
	i64 18380184030268848184, ; 670: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 282
	i64 18439108438687598470 ; 671: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [672 x i32] [
	i32 243, ; 0
	i32 183, ; 1
	i32 171, ; 2
	i32 188, ; 3
	i32 58, ; 4
	i32 230, ; 5
	i32 151, ; 6
	i32 272, ; 7
	i32 275, ; 8
	i32 237, ; 9
	i32 132, ; 10
	i32 56, ; 11
	i32 274, ; 12
	i32 308, ; 13
	i32 95, ; 14
	i32 256, ; 15
	i32 129, ; 16
	i32 145, ; 17
	i32 231, ; 18
	i32 18, ; 19
	i32 311, ; 20
	i32 242, ; 21
	i32 257, ; 22
	i32 150, ; 23
	i32 204, ; 24
	i32 104, ; 25
	i32 95, ; 26
	i32 287, ; 27
	i32 319, ; 28
	i32 36, ; 29
	i32 28, ; 30
	i32 226, ; 31
	i32 265, ; 32
	i32 50, ; 33
	i32 115, ; 34
	i32 210, ; 35
	i32 70, ; 36
	i32 185, ; 37
	i32 65, ; 38
	i32 170, ; 39
	i32 145, ; 40
	i32 317, ; 41
	i32 286, ; 42
	i32 225, ; 43
	i32 260, ; 44
	i32 250, ; 45
	i32 40, ; 46
	i32 89, ; 47
	i32 81, ; 48
	i32 190, ; 49
	i32 66, ; 50
	i32 62, ; 51
	i32 86, ; 52
	i32 224, ; 53
	i32 106, ; 54
	i32 307, ; 55
	i32 272, ; 56
	i32 102, ; 57
	i32 35, ; 58
	i32 221, ; 59
	i32 329, ; 60
	i32 274, ; 61
	i32 186, ; 62
	i32 329, ; 63
	i32 119, ; 64
	i32 258, ; 65
	i32 303, ; 66
	i32 173, ; 67
	i32 321, ; 68
	i32 142, ; 69
	i32 141, ; 70
	i32 297, ; 71
	i32 53, ; 72
	i32 35, ; 73
	i32 141, ; 74
	i32 190, ; 75
	i32 218, ; 76
	i32 228, ; 77
	i32 181, ; 78
	i32 242, ; 79
	i32 8, ; 80
	i32 14, ; 81
	i32 325, ; 82
	i32 271, ; 83
	i32 51, ; 84
	i32 253, ; 85
	i32 136, ; 86
	i32 101, ; 87
	i32 211, ; 88
	i32 235, ; 89
	i32 281, ; 90
	i32 116, ; 91
	i32 219, ; 92
	i32 163, ; 93
	i32 328, ; 94
	i32 166, ; 95
	i32 67, ; 96
	i32 177, ; 97
	i32 303, ; 98
	i32 80, ; 99
	i32 101, ; 100
	i32 276, ; 101
	i32 117, ; 102
	i32 308, ; 103
	i32 288, ; 104
	i32 78, ; 105
	i32 287, ; 106
	i32 114, ; 107
	i32 121, ; 108
	i32 48, ; 109
	i32 201, ; 110
	i32 128, ; 111
	i32 251, ; 112
	i32 222, ; 113
	i32 82, ; 114
	i32 110, ; 115
	i32 75, ; 116
	i32 300, ; 117
	i32 188, ; 118
	i32 53, ; 119
	i32 278, ; 120
	i32 175, ; 121
	i32 69, ; 122
	i32 277, ; 123
	i32 83, ; 124
	i32 172, ; 125
	i32 323, ; 126
	i32 116, ; 127
	i32 176, ; 128
	i32 156, ; 129
	i32 175, ; 130
	i32 216, ; 131
	i32 167, ; 132
	i32 270, ; 133
	i32 243, ; 134
	i32 179, ; 135
	i32 32, ; 136
	i32 186, ; 137
	i32 122, ; 138
	i32 72, ; 139
	i32 62, ; 140
	i32 161, ; 141
	i32 113, ; 142
	i32 88, ; 143
	i32 184, ; 144
	i32 334, ; 145
	i32 199, ; 146
	i32 105, ; 147
	i32 18, ; 148
	i32 146, ; 149
	i32 118, ; 150
	i32 58, ; 151
	i32 237, ; 152
	i32 17, ; 153
	i32 52, ; 154
	i32 92, ; 155
	i32 331, ; 156
	i32 55, ; 157
	i32 129, ; 158
	i32 152, ; 159
	i32 41, ; 160
	i32 92, ; 161
	i32 193, ; 162
	i32 282, ; 163
	i32 50, ; 164
	i32 301, ; 165
	i32 162, ; 166
	i32 13, ; 167
	i32 255, ; 168
	i32 219, ; 169
	i32 277, ; 170
	i32 36, ; 171
	i32 67, ; 172
	i32 109, ; 173
	i32 220, ; 174
	i32 99, ; 175
	i32 99, ; 176
	i32 11, ; 177
	i32 11, ; 178
	i32 262, ; 179
	i32 25, ; 180
	i32 128, ; 181
	i32 214, ; 182
	i32 76, ; 183
	i32 254, ; 184
	i32 109, ; 185
	i32 194, ; 186
	i32 263, ; 187
	i32 281, ; 188
	i32 214, ; 189
	i32 279, ; 190
	i32 106, ; 191
	i32 2, ; 192
	i32 26, ; 193
	i32 233, ; 194
	i32 157, ; 195
	i32 327, ; 196
	i32 21, ; 197
	i32 330, ; 198
	i32 49, ; 199
	i32 43, ; 200
	i32 126, ; 201
	i32 223, ; 202
	i32 59, ; 203
	i32 119, ; 204
	i32 284, ; 205
	i32 212, ; 206
	i32 246, ; 207
	i32 232, ; 208
	i32 3, ; 209
	i32 193, ; 210
	i32 252, ; 211
	i32 273, ; 212
	i32 38, ; 213
	i32 198, ; 214
	i32 124, ; 215
	i32 324, ; 216
	i32 273, ; 217
	i32 324, ; 218
	i32 137, ; 219
	i32 149, ; 220
	i32 85, ; 221
	i32 90, ; 222
	i32 206, ; 223
	i32 256, ; 224
	i32 335, ; 225
	i32 253, ; 226
	i32 312, ; 227
	i32 228, ; 228
	i32 239, ; 229
	i32 285, ; 230
	i32 182, ; 231
	i32 290, ; 232
	i32 254, ; 233
	i32 204, ; 234
	i32 133, ; 235
	i32 96, ; 236
	i32 3, ; 237
	i32 320, ; 238
	i32 105, ; 239
	i32 323, ; 240
	i32 33, ; 241
	i32 154, ; 242
	i32 158, ; 243
	i32 155, ; 244
	i32 82, ; 245
	i32 248, ; 246
	i32 143, ; 247
	i32 87, ; 248
	i32 19, ; 249
	i32 249, ; 250
	i32 205, ; 251
	i32 51, ; 252
	i32 218, ; 253
	i32 327, ; 254
	i32 61, ; 255
	i32 54, ; 256
	i32 4, ; 257
	i32 97, ; 258
	i32 217, ; 259
	i32 0, ; 260
	i32 17, ; 261
	i32 155, ; 262
	i32 84, ; 263
	i32 195, ; 264
	i32 201, ; 265
	i32 29, ; 266
	i32 45, ; 267
	i32 64, ; 268
	i32 66, ; 269
	i32 318, ; 270
	i32 172, ; 271
	i32 257, ; 272
	i32 1, ; 273
	i32 295, ; 274
	i32 199, ; 275
	i32 47, ; 276
	i32 24, ; 277
	i32 225, ; 278
	i32 208, ; 279
	i32 165, ; 280
	i32 108, ; 281
	i32 207, ; 282
	i32 12, ; 283
	i32 251, ; 284
	i32 63, ; 285
	i32 27, ; 286
	i32 23, ; 287
	i32 93, ; 288
	i32 168, ; 289
	i32 12, ; 290
	i32 299, ; 291
	i32 189, ; 292
	i32 29, ; 293
	i32 103, ; 294
	i32 14, ; 295
	i32 126, ; 296
	i32 234, ; 297
	i32 267, ; 298
	i32 91, ; 299
	i32 255, ; 300
	i32 9, ; 301
	i32 86, ; 302
	i32 245, ; 303
	i32 279, ; 304
	i32 322, ; 305
	i32 71, ; 306
	i32 168, ; 307
	i32 1, ; 308
	i32 266, ; 309
	i32 5, ; 310
	i32 322, ; 311
	i32 44, ; 312
	i32 209, ; 313
	i32 27, ; 314
	i32 296, ; 315
	i32 0, ; 316
	i32 158, ; 317
	i32 269, ; 318
	i32 112, ; 319
	i32 332, ; 320
	i32 121, ; 321
	i32 212, ; 322
	i32 284, ; 323
	i32 224, ; 324
	i32 159, ; 325
	i32 131, ; 326
	i32 289, ; 327
	i32 57, ; 328
	i32 138, ; 329
	i32 83, ; 330
	i32 30, ; 331
	i32 235, ; 332
	i32 10, ; 333
	i32 263, ; 334
	i32 203, ; 335
	i32 286, ; 336
	i32 171, ; 337
	i32 232, ; 338
	i32 150, ; 339
	i32 94, ; 340
	i32 245, ; 341
	i32 60, ; 342
	i32 203, ; 343
	i32 187, ; 344
	i32 157, ; 345
	i32 307, ; 346
	i32 181, ; 347
	i32 64, ; 348
	i32 88, ; 349
	i32 200, ; 350
	i32 79, ; 351
	i32 47, ; 352
	i32 185, ; 353
	i32 202, ; 354
	i32 143, ; 355
	i32 304, ; 356
	i32 196, ; 357
	i32 297, ; 358
	i32 239, ; 359
	i32 74, ; 360
	i32 91, ; 361
	i32 294, ; 362
	i32 135, ; 363
	i32 90, ; 364
	i32 278, ; 365
	i32 300, ; 366
	i32 236, ; 367
	i32 302, ; 368
	i32 196, ; 369
	i32 112, ; 370
	i32 42, ; 371
	i32 159, ; 372
	i32 192, ; 373
	i32 192, ; 374
	i32 4, ; 375
	i32 103, ; 376
	i32 70, ; 377
	i32 60, ; 378
	i32 39, ; 379
	i32 226, ; 380
	i32 153, ; 381
	i32 56, ; 382
	i32 34, ; 383
	i32 180, ; 384
	i32 187, ; 385
	i32 223, ; 386
	i32 21, ; 387
	i32 163, ; 388
	i32 290, ; 389
	i32 202, ; 390
	i32 313, ; 391
	i32 288, ; 392
	i32 283, ; 393
	i32 140, ; 394
	i32 316, ; 395
	i32 182, ; 396
	i32 89, ; 397
	i32 147, ; 398
	i32 238, ; 399
	i32 162, ; 400
	i32 173, ; 401
	i32 200, ; 402
	i32 268, ; 403
	i32 6, ; 404
	i32 169, ; 405
	i32 31, ; 406
	i32 107, ; 407
	i32 248, ; 408
	i32 314, ; 409
	i32 283, ; 410
	i32 179, ; 411
	i32 221, ; 412
	i32 276, ; 413
	i32 167, ; 414
	i32 249, ; 415
	i32 207, ; 416
	i32 140, ; 417
	i32 310, ; 418
	i32 59, ; 419
	i32 144, ; 420
	i32 81, ; 421
	i32 74, ; 422
	i32 130, ; 423
	i32 25, ; 424
	i32 7, ; 425
	i32 93, ; 426
	i32 280, ; 427
	i32 137, ; 428
	i32 215, ; 429
	i32 113, ; 430
	i32 9, ; 431
	i32 104, ; 432
	i32 19, ; 433
	i32 247, ; 434
	i32 261, ; 435
	i32 335, ; 436
	i32 241, ; 437
	i32 33, ; 438
	i32 229, ; 439
	i32 46, ; 440
	i32 315, ; 441
	i32 30, ; 442
	i32 230, ; 443
	i32 57, ; 444
	i32 134, ; 445
	i32 114, ; 446
	i32 285, ; 447
	i32 328, ; 448
	i32 298, ; 449
	i32 55, ; 450
	i32 183, ; 451
	i32 6, ; 452
	i32 77, ; 453
	i32 240, ; 454
	i32 111, ; 455
	i32 244, ; 456
	i32 102, ; 457
	i32 302, ; 458
	i32 316, ; 459
	i32 170, ; 460
	i32 115, ; 461
	i32 310, ; 462
	i32 208, ; 463
	i32 280, ; 464
	i32 292, ; 465
	i32 234, ; 466
	i32 76, ; 467
	i32 293, ; 468
	i32 85, ; 469
	i32 295, ; 470
	i32 330, ; 471
	i32 227, ; 472
	i32 197, ; 473
	i32 331, ; 474
	i32 314, ; 475
	i32 270, ; 476
	i32 160, ; 477
	i32 2, ; 478
	i32 240, ; 479
	i32 24, ; 480
	i32 220, ; 481
	i32 32, ; 482
	i32 117, ; 483
	i32 37, ; 484
	i32 16, ; 485
	i32 309, ; 486
	i32 52, ; 487
	i32 312, ; 488
	i32 296, ; 489
	i32 291, ; 490
	i32 20, ; 491
	i32 123, ; 492
	i32 154, ; 493
	i32 247, ; 494
	i32 191, ; 495
	i32 291, ; 496
	i32 209, ; 497
	i32 131, ; 498
	i32 304, ; 499
	i32 229, ; 500
	i32 148, ; 501
	i32 216, ; 502
	i32 120, ; 503
	i32 28, ; 504
	i32 132, ; 505
	i32 100, ; 506
	i32 134, ; 507
	i32 268, ; 508
	i32 153, ; 509
	i32 97, ; 510
	i32 125, ; 511
	i32 217, ; 512
	i32 69, ; 513
	i32 197, ; 514
	i32 72, ; 515
	i32 325, ; 516
	i32 252, ; 517
	i32 271, ; 518
	i32 306, ; 519
	i32 191, ; 520
	i32 136, ; 521
	i32 124, ; 522
	i32 71, ; 523
	i32 111, ; 524
	i32 262, ; 525
	i32 177, ; 526
	i32 152, ; 527
	i32 317, ; 528
	i32 333, ; 529
	i32 293, ; 530
	i32 118, ; 531
	i32 238, ; 532
	i32 174, ; 533
	i32 334, ; 534
	i32 301, ; 535
	i32 127, ; 536
	i32 133, ; 537
	i32 178, ; 538
	i32 77, ; 539
	i32 46, ; 540
	i32 241, ; 541
	i32 73, ; 542
	i32 63, ; 543
	i32 98, ; 544
	i32 84, ; 545
	i32 318, ; 546
	i32 43, ; 547
	i32 61, ; 548
	i32 269, ; 549
	i32 176, ; 550
	i32 37, ; 551
	i32 40, ; 552
	i32 231, ; 553
	i32 299, ; 554
	i32 160, ; 555
	i32 210, ; 556
	i32 98, ; 557
	i32 236, ; 558
	i32 178, ; 559
	i32 135, ; 560
	i32 20, ; 561
	i32 65, ; 562
	i32 305, ; 563
	i32 125, ; 564
	i32 75, ; 565
	i32 260, ; 566
	i32 164, ; 567
	i32 156, ; 568
	i32 305, ; 569
	i32 5, ; 570
	i32 313, ; 571
	i32 194, ; 572
	i32 49, ; 573
	i32 275, ; 574
	i32 306, ; 575
	i32 144, ; 576
	i32 139, ; 577
	i32 100, ; 578
	i32 184, ; 579
	i32 123, ; 580
	i32 120, ; 581
	i32 142, ; 582
	i32 39, ; 583
	i32 68, ; 584
	i32 213, ; 585
	i32 41, ; 586
	i32 206, ; 587
	i32 164, ; 588
	i32 73, ; 589
	i32 319, ; 590
	i32 165, ; 591
	i32 180, ; 592
	i32 127, ; 593
	i32 246, ; 594
	i32 298, ; 595
	i32 68, ; 596
	i32 169, ; 597
	i32 292, ; 598
	i32 259, ; 599
	i32 233, ; 600
	i32 189, ; 601
	i32 267, ; 602
	i32 151, ; 603
	i32 45, ; 604
	i32 108, ; 605
	i32 48, ; 606
	i32 96, ; 607
	i32 31, ; 608
	i32 23, ; 609
	i32 166, ; 610
	i32 22, ; 611
	i32 138, ; 612
	i32 78, ; 613
	i32 326, ; 614
	i32 54, ; 615
	i32 259, ; 616
	i32 265, ; 617
	i32 10, ; 618
	i32 222, ; 619
	i32 264, ; 620
	i32 250, ; 621
	i32 16, ; 622
	i32 333, ; 623
	i32 139, ; 624
	i32 13, ; 625
	i32 15, ; 626
	i32 122, ; 627
	i32 87, ; 628
	i32 149, ; 629
	i32 22, ; 630
	i32 34, ; 631
	i32 79, ; 632
	i32 311, ; 633
	i32 289, ; 634
	i32 205, ; 635
	i32 326, ; 636
	i32 147, ; 637
	i32 213, ; 638
	i32 198, ; 639
	i32 80, ; 640
	i32 309, ; 641
	i32 174, ; 642
	i32 215, ; 643
	i32 321, ; 644
	i32 42, ; 645
	i32 26, ; 646
	i32 332, ; 647
	i32 261, ; 648
	i32 258, ; 649
	i32 107, ; 650
	i32 110, ; 651
	i32 7, ; 652
	i32 294, ; 653
	i32 44, ; 654
	i32 161, ; 655
	i32 148, ; 656
	i32 211, ; 657
	i32 320, ; 658
	i32 227, ; 659
	i32 264, ; 660
	i32 38, ; 661
	i32 15, ; 662
	i32 195, ; 663
	i32 146, ; 664
	i32 8, ; 665
	i32 244, ; 666
	i32 266, ; 667
	i32 130, ; 668
	i32 315, ; 669
	i32 282, ; 670
	i32 94 ; 671
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
