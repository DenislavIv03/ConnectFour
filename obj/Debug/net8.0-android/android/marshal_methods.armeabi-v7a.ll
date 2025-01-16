; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [342 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [678 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 66
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 65
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 106
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 260
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 294
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 46
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 78
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 141
	i32 65960268, ; 8: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 204
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 335
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 122
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 202
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 100
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 278
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 105
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 278
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 135
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 298
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 75
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 122
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 234
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 130
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 280
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 147
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 332
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 333
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 232
	i32 220171995, ; 30: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 31: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 254
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 33: System.Linq.Parallel => 0xdcb05c4 => 57
	i32 231814094, ; 34: System.Globalization => 0xdd133ce => 40
	i32 246610117, ; 35: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 89
	i32 261689757, ; 36: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 237
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 143
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 256
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 253
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 304
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 52
	i32 298918909, ; 42: System.Net.Ping.dll => 0x11d123fd => 67
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 332
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 223
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 81
	i32 330147069, ; 46: Microsoft.SqlServer.Server => 0x13ada4fd => 203
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 317
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 255
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 316
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 129
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 53
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 145
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 72
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 60
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 142
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 338
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 161
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 328
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 238
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 251
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 123
	i32 456227837, ; 64: System.Web.HttpUtility.dll => 0x1b317bfd => 148
	i32 459347974, ; 65: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 111
	i32 465846621, ; 66: mscorlib => 0x1bc4415d => 162
	i32 469710990, ; 67: System.dll => 0x1bff388e => 160
	i32 476646585, ; 68: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 253
	i32 485463106, ; 69: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 191
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 266
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 82
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 315
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 309
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 188
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 146
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 298
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 58
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 184
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 49
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 101
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 112
	i32 548916678, ; 82: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 172
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 38
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 291
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 289
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 118
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 323
	i32 601371474, ; 88: System.IO.IsolatedStorage.dll => 0x23d83352 => 50
	i32 605376203, ; 89: System.IO.Compression.FileSystem => 0x24154ecb => 42
	i32 613668793, ; 90: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 117
	i32 627609679, ; 91: Xamarin.AndroidX.CustomView => 0x2568904f => 243
	i32 627931235, ; 92: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 321
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 249
	i32 643868501, ; 94: System.Net => 0x2660a755 => 79
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 216
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 285
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 230
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 71
	i32 688181140, ; 100: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 303
	i32 690569205, ; 101: System.Xml.Linq.dll => 0x29293ff5 => 151
	i32 691348768, ; 102: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 300
	i32 693804605, ; 103: System.Windows => 0x295a9e3d => 150
	i32 699345723, ; 104: System.Reflection.Emit => 0x29af2b3b => 90
	i32 700284507, ; 105: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 295
	i32 700358131, ; 106: System.IO.Compression.ZipFile => 0x29be9df3 => 43
	i32 706645707, ; 107: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 318
	i32 709557578, ; 108: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 306
	i32 720511267, ; 109: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 299
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 107
	i32 723796036, ; 111: System.ClientModel.dll => 0x2b244044 => 205
	i32 735137430, ; 112: System.Security.SecureString.dll => 0x2bd14e96 => 127
	i32 752232764, ; 113: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 114: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 220
	i32 759454413, ; 115: System.Net.Requests => 0x2d445acd => 70
	i32 762598435, ; 116: System.IO.Pipes.dll => 0x2d745423 => 53
	i32 775507847, ; 117: System.IO.Compression => 0x2e394f87 => 44
	i32 777317022, ; 118: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 327
	i32 789151979, ; 119: Microsoft.Extensions.Options => 0x2f0980eb => 187
	i32 790371945, ; 120: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 244
	i32 804715423, ; 121: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 122: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 258
	i32 809851609, ; 123: System.Drawing.Common.dll => 0x30455ad9 => 208
	i32 823281589, ; 124: System.Private.Uri.dll => 0x311247b5 => 84
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 41
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 156
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 69
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 271
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 40
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 61
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 51
	i32 926902833, ; 134: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 330
	i32 928116545, ; 135: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 294
	i32 952186615, ; 136: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 103
	i32 956575887, ; 137: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 299
	i32 966729478, ; 138: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 292
	i32 967690846, ; 139: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 255
	i32 975236339, ; 140: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 141: System.Xml.XDocument => 0x3a2aaa1d => 154
	i32 986514023, ; 142: System.Private.DataContractSerialization.dll => 0x3acd0267 => 83
	i32 987214855, ; 143: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 144: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 145: System.IO.FileSystem => 0x3b45fb35 => 49
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 54
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 275
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 183
	i32 1029334545, ; 150: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 305
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 293
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 228
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 56
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 262
	i32 1062017875, ; 156: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 190
	i32 1067306892, ; 157: GoogleGson => 0x3f9dcf8c => 171
	i32 1082857460, ; 158: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 159: Xamarin.Kotlin.StdLib => 0x409e66d8 => 296
	i32 1098259244, ; 160: System => 0x41761b2c => 160
	i32 1107781526, ; 161: ConnectFour => 0x42076796 => 0
	i32 1118262833, ; 162: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 318
	i32 1121599056, ; 163: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 261
	i32 1127624469, ; 164: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 186
	i32 1138436374, ; 165: Microsoft.Data.SqlClient.dll => 0x43db2916 => 173
	i32 1145483052, ; 166: System.Windows.Extensions.dll => 0x4446af2c => 218
	i32 1149092582, ; 167: Xamarin.AndroidX.Window => 0x447dc2e6 => 288
	i32 1157931901, ; 168: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 175
	i32 1168523401, ; 169: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 324
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 149
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 284
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 269
	i32 1202000627, ; 173: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 175
	i32 1203215381, ; 174: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 322
	i32 1204270330, ; 175: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 230
	i32 1204575371, ; 176: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 179
	i32 1208641965, ; 177: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 178: System.IO.IsolatedStorage => 0x48aa6be3 => 50
	i32 1234928153, ; 179: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 320
	i32 1243150071, ; 180: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 289
	i32 1253011324, ; 181: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 182: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 304
	i32 1264511973, ; 183: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 279
	i32 1267360935, ; 184: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 283
	i32 1273260888, ; 185: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 235
	i32 1275534314, ; 186: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 300
	i32 1278448581, ; 187: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 227
	i32 1293217323, ; 188: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 246
	i32 1309188875, ; 189: System.Private.DataContractSerialization => 0x4e08a30b => 83
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 288
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 59
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 110
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 55
	i32 1373134921, ; 194: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 334
	i32 1376866003, ; 195: Xamarin.AndroidX.SavedState => 0x52114ed3 => 275
	i32 1379779777, ; 196: System.Resources.ResourceManager => 0x523dc4c1 => 97
	i32 1402170036, ; 197: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 198: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 239
	i32 1408764838, ; 199: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 109
	i32 1411638395, ; 200: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 99
	i32 1422545099, ; 201: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 100
	i32 1430672901, ; 202: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 302
	i32 1434145427, ; 203: System.Runtime.Handles => 0x557b5293 => 102
	i32 1435222561, ; 204: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 292
	i32 1439761251, ; 205: System.Net.Quic.dll => 0x55d10363 => 69
	i32 1452070440, ; 206: System.Formats.Asn1.dll => 0x568cd628 => 209
	i32 1453312822, ; 207: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 208: System.Runtime.Extensions.dll => 0x56e36530 => 101
	i32 1458022317, ; 209: System.Net.Security.dll => 0x56e7a7ad => 71
	i32 1460893475, ; 210: System.IdentityModel.Tokens.Jwt => 0x57137723 => 210
	i32 1461004990, ; 211: es\Microsoft.Maui.Controls.resources => 0x57152abe => 308
	i32 1461234159, ; 212: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 213: System.Security.Cryptography.OpenSsl => 0x57201017 => 121
	i32 1462112819, ; 214: System.IO.Compression.dll => 0x57261233 => 44
	i32 1469204771, ; 215: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 229
	i32 1470490898, ; 216: Microsoft.Extensions.Primitives => 0x57a5e912 => 188
	i32 1479771757, ; 217: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 218: System.IO.Compression.Brotli.dll => 0x583e844f => 41
	i32 1487239319, ; 219: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 220: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 276
	i32 1493001747, ; 221: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 312
	i32 1498168481, ; 222: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 192
	i32 1514721132, ; 223: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 307
	i32 1536373174, ; 224: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 225: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 134
	i32 1543355203, ; 226: System.Reflection.Emit.dll => 0x5bfdbb43 => 90
	i32 1550322496, ; 227: System.Reflection.Extensions.dll => 0x5c680b40 => 91
	i32 1551623176, ; 228: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 327
	i32 1565310744, ; 229: System.Runtime.Caching => 0x5d4cbf18 => 213
	i32 1565862583, ; 230: System.IO.FileSystem.Primitives => 0x5d552ab7 => 47
	i32 1566207040, ; 231: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 137
	i32 1573704789, ; 232: System.Runtime.Serialization.Json => 0x5dccd455 => 110
	i32 1580037396, ; 233: System.Threading.Overlapped => 0x5e2d7514 => 136
	i32 1582305585, ; 234: Azure.Identity => 0x5e501131 => 170
	i32 1582372066, ; 235: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 245
	i32 1592978981, ; 236: System.Runtime.Serialization.dll => 0x5ef2ee25 => 113
	i32 1597949149, ; 237: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 293
	i32 1601112923, ; 238: System.Xml.Serialization => 0x5f6f0b5b => 153
	i32 1604827217, ; 239: System.Net.WebClient => 0x5fa7b851 => 74
	i32 1618516317, ; 240: System.Net.WebSockets.Client.dll => 0x6078995d => 77
	i32 1622152042, ; 241: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 265
	i32 1622358360, ; 242: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 243: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 287
	i32 1628113371, ; 244: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 195
	i32 1635184631, ; 245: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 249
	i32 1636350590, ; 246: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 242
	i32 1639515021, ; 247: System.Net.Http.dll => 0x61b9038d => 62
	i32 1639986890, ; 248: System.Text.RegularExpressions => 0x61c036ca => 134
	i32 1641389582, ; 249: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 114
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 281
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 290
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 237
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 46
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 68
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 78
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 124
	i32 1689493916, ; 258: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 174
	i32 1691477237, ; 259: System.Reflection.Metadata => 0x64d1e4f5 => 92
	i32 1696967625, ; 260: System.Security.Cryptography.Csp => 0x6525abc9 => 119
	i32 1698840827, ; 261: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 297
	i32 1701541528, ; 262: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 258
	i32 1726116996, ; 264: System.Reflection.dll => 0x66e27484 => 95
	i32 1728033016, ; 265: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 266: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 233
	i32 1736233607, ; 267: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 325
	i32 1743415430, ; 268: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 303
	i32 1744735666, ; 269: System.Transactions.Local.dll => 0x67fe8db2 => 145
	i32 1746115085, ; 270: System.IO.Pipelines.dll => 0x68139a0d => 211
	i32 1746316138, ; 271: Mono.Android.Export => 0x6816ab6a => 165
	i32 1750313021, ; 272: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 273: System.Resources.Reader.dll => 0x68cc9d1e => 96
	i32 1763938596, ; 274: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 275: System.Reflection.Extensions => 0x6942234e => 91
	i32 1766324549, ; 276: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 280
	i32 1770582343, ; 277: Microsoft.Extensions.Logging.dll => 0x6988f147 => 184
	i32 1776026572, ; 278: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 279: System.Globalization.Extensions.dll => 0x69ec0683 => 39
	i32 1780572499, ; 280: Mono.Android.Runtime.dll => 0x6a216153 => 166
	i32 1782862114, ; 281: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 319
	i32 1788241197, ; 282: Xamarin.AndroidX.Fragment => 0x6a96652d => 251
	i32 1793755602, ; 283: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 311
	i32 1794500907, ; 284: Microsoft.Identity.Client.dll => 0x6af5e92b => 189
	i32 1796167890, ; 285: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 172
	i32 1808609942, ; 286: Xamarin.AndroidX.Loader => 0x6bcd3296 => 265
	i32 1813058853, ; 287: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 296
	i32 1813201214, ; 288: Xamarin.Google.Android.Material => 0x6c13413e => 290
	i32 1818569960, ; 289: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 270
	i32 1818787751, ; 290: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 291: System.Text.Encoding.Extensions => 0x6cbab720 => 132
	i32 1824722060, ; 292: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 109
	i32 1828688058, ; 293: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 185
	i32 1829150748, ; 294: System.Windows.Extensions => 0x6d06a01c => 218
	i32 1842015223, ; 295: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 331
	i32 1847515442, ; 296: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 220
	i32 1853025655, ; 297: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 328
	i32 1858542181, ; 298: System.Linq.Expressions => 0x6ec71a65 => 56
	i32 1870277092, ; 299: System.Reflection.Primitives => 0x6f7a29e4 => 93
	i32 1871986876, ; 300: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 195
	i32 1875935024, ; 301: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 310
	i32 1879696579, ; 302: System.Formats.Tar.dll => 0x7009e4c3 => 37
	i32 1885316902, ; 303: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 231
	i32 1888955245, ; 304: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 305: System.Reflection.Metadata.dll => 0x70a66bdd => 92
	i32 1898237753, ; 306: System.Reflection.DispatchProxy => 0x7124cf39 => 87
	i32 1900610850, ; 307: System.Resources.ResourceManager.dll => 0x71490522 => 97
	i32 1910275211, ; 308: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 309: System.Private.Xml.Linq => 0x739bd4a8 => 85
	i32 1956758971, ; 310: System.Resources.Writer => 0x74a1c5bb => 98
	i32 1961813231, ; 311: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 277
	i32 1968388702, ; 312: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 180
	i32 1983156543, ; 313: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 297
	i32 1985761444, ; 314: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 222
	i32 1986222447, ; 315: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 196
	i32 2003115576, ; 316: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 307
	i32 2011961780, ; 317: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 318: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 262
	i32 2025202353, ; 319: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 302
	i32 2031763787, ; 320: Xamarin.Android.Glide => 0x791a414b => 219
	i32 2040764568, ; 321: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 190
	i32 2045470958, ; 322: System.Private.Xml => 0x79eb68ee => 86
	i32 2055257422, ; 323: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 257
	i32 2060060697, ; 324: System.Windows.dll => 0x7aca0819 => 150
	i32 2066184531, ; 325: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 306
	i32 2070888862, ; 326: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 327: System.Runtime.dll => 0x7bf8cdab => 114
	i32 2090596640, ; 328: System.Numerics.Vectors => 0x7c9bf920 => 80
	i32 2127167465, ; 329: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 330: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 331: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 158
	i32 2146852085, ; 332: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 333: Microsoft.Maui => 0x80bd55ad => 200
	i32 2169148018, ; 334: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 314
	i32 2181898931, ; 335: Microsoft.Extensions.Options.dll => 0x820d22b3 => 187
	i32 2192057212, ; 336: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 185
	i32 2193016926, ; 337: System.ObjectModel.dll => 0x82b6c85e => 82
	i32 2201107256, ; 338: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 301
	i32 2201231467, ; 339: System.Net.Http => 0x8334206b => 62
	i32 2207618523, ; 340: it\Microsoft.Maui.Controls.resources => 0x839595db => 316
	i32 2217644978, ; 341: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 284
	i32 2222056684, ; 342: System.Threading.Tasks.Parallel => 0x8471e4ec => 139
	i32 2244775296, ; 343: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 266
	i32 2252106437, ; 344: System.Xml.Serialization.dll => 0x863c6ac5 => 153
	i32 2252897993, ; 345: Microsoft.EntityFrameworkCore => 0x86487ec9 => 174
	i32 2253551641, ; 346: Microsoft.IdentityModel.Protocols => 0x86527819 => 194
	i32 2256313426, ; 347: System.Globalization.Extensions => 0x867c9c52 => 39
	i32 2265110946, ; 348: System.Security.AccessControl.dll => 0x8702d9a2 => 115
	i32 2266799131, ; 349: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 181
	i32 2267999099, ; 350: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 221
	i32 2270573516, ; 351: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 310
	i32 2279755925, ; 352: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 273
	i32 2293034957, ; 353: System.ServiceModel.Web.dll => 0x88acefcd => 129
	i32 2295906218, ; 354: System.Net.Sockets => 0x88d8bfaa => 73
	i32 2298471582, ; 355: System.Net.Mail => 0x88ffe49e => 64
	i32 2303942373, ; 356: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 320
	i32 2305521784, ; 357: System.Private.CoreLib.dll => 0x896b7878 => 168
	i32 2315684594, ; 358: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 225
	i32 2320631194, ; 359: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 139
	i32 2340441535, ; 360: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 104
	i32 2344264397, ; 361: System.ValueTuple => 0x8bbaa2cd => 147
	i32 2353062107, ; 362: System.Net.Primitives => 0x8c40e0db => 68
	i32 2368005991, ; 363: System.Xml.ReaderWriter.dll => 0x8d24e767 => 152
	i32 2369706906, ; 364: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 193
	i32 2371007202, ; 365: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 180
	i32 2378619854, ; 366: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 119
	i32 2383496789, ; 367: System.Security.Principal.Windows.dll => 0x8e114655 => 125
	i32 2395872292, ; 368: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 315
	i32 2401565422, ; 369: System.Web.HttpUtility => 0x8f24faee => 148
	i32 2403452196, ; 370: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 248
	i32 2421380589, ; 371: System.Threading.Tasks.Dataflow => 0x905355ed => 137
	i32 2423080555, ; 372: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 235
	i32 2427813419, ; 373: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 312
	i32 2435356389, ; 374: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 375: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 376: System.Text.Encoding.dll => 0x924edee6 => 133
	i32 2458678730, ; 377: System.Net.Sockets.dll => 0x928c75ca => 73
	i32 2459001652, ; 378: System.Linq.Parallel.dll => 0x92916334 => 57
	i32 2465532216, ; 379: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 238
	i32 2471841756, ; 380: netstandard.dll => 0x93554fdc => 163
	i32 2475788418, ; 381: Java.Interop.dll => 0x93918882 => 164
	i32 2480646305, ; 382: Microsoft.Maui.Controls => 0x93dba8a1 => 198
	i32 2483903535, ; 383: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 384: System.Net.ServicePoint => 0x94147f61 => 72
	i32 2490993605, ; 385: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 386: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 387: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 260
	i32 2522472828, ; 388: Xamarin.Android.Glide.dll => 0x9659e17c => 219
	i32 2538310050, ; 389: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 89
	i32 2550873716, ; 390: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 313
	i32 2562349572, ; 391: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 392: System.Text.Encodings.Web => 0x9930ee42 => 216
	i32 2581783588, ; 393: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 261
	i32 2581819634, ; 394: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 283
	i32 2585220780, ; 395: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 132
	i32 2585805581, ; 396: System.Net.Ping => 0x9a20430d => 67
	i32 2589602615, ; 397: System.Threading.ThreadPool => 0x9a5a3337 => 142
	i32 2593496499, ; 398: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 322
	i32 2605712449, ; 399: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 301
	i32 2615233544, ; 400: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 252
	i32 2616218305, ; 401: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 186
	i32 2617129537, ; 402: System.Private.Xml.dll => 0x9bfe3a41 => 86
	i32 2618712057, ; 403: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 94
	i32 2620871830, ; 404: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 242
	i32 2624644809, ; 405: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 247
	i32 2626831493, ; 406: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 317
	i32 2627185994, ; 407: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2628210652, ; 408: System.Memory.Data => 0x9ca74fdc => 212
	i32 2629843544, ; 409: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 43
	i32 2633051222, ; 410: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 256
	i32 2634653062, ; 411: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 176
	i32 2640290731, ; 412: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 193
	i32 2640706905, ; 413: Azure.Core => 0x9d65fd59 => 169
	i32 2653307841, ; 414: ConnectFour.DataAccess.dll => 0x9e2643c1 => 336
	i32 2660759594, ; 415: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 214
	i32 2663391936, ; 416: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 221
	i32 2663698177, ; 417: System.Runtime.Loader => 0x9ec4cf01 => 107
	i32 2664396074, ; 418: System.Xml.XDocument.dll => 0x9ecf752a => 154
	i32 2665622720, ; 419: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 420: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 421: Azure.Identity.dll => 0x9f9148fa => 170
	i32 2686887180, ; 422: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 112
	i32 2693849962, ; 423: System.IO.dll => 0xa090e36a => 55
	i32 2701096212, ; 424: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 281
	i32 2715334215, ; 425: System.Threading.Tasks.dll => 0xa1d8b647 => 140
	i32 2717744543, ; 426: System.Security.Claims => 0xa1fd7d9f => 116
	i32 2719963679, ; 427: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 118
	i32 2724373263, ; 428: System.Runtime.Numerics.dll => 0xa262a30f => 108
	i32 2732626843, ; 429: Xamarin.AndroidX.Activity => 0xa2e0939b => 223
	i32 2735172069, ; 430: System.Threading.Channels => 0xa30769e5 => 135
	i32 2737747696, ; 431: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 229
	i32 2740051746, ; 432: Microsoft.Identity.Client => 0xa351df22 => 189
	i32 2740948882, ; 433: System.IO.Pipes.AccessControl => 0xa35f8f92 => 52
	i32 2748088231, ; 434: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 103
	i32 2752995522, ; 435: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 323
	i32 2755098380, ; 436: Microsoft.SqlServer.Server.dll => 0xa437770c => 203
	i32 2755643133, ; 437: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 177
	i32 2758225723, ; 438: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 199
	i32 2764765095, ; 439: Microsoft.Maui.dll => 0xa4caf7a7 => 200
	i32 2765824710, ; 440: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 131
	i32 2770495804, ; 441: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 295
	i32 2778768386, ; 442: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 286
	i32 2779977773, ; 443: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 274
	i32 2785988530, ; 444: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 329
	i32 2788224221, ; 445: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 252
	i32 2795666278, ; 446: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 204
	i32 2801831435, ; 447: Microsoft.Maui.Graphics => 0xa7008e0b => 202
	i32 2803228030, ; 448: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 155
	i32 2806116107, ; 449: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 308
	i32 2810250172, ; 450: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 239
	i32 2819470561, ; 451: System.Xml.dll => 0xa80db4e1 => 159
	i32 2821205001, ; 452: System.ServiceProcess.dll => 0xa8282c09 => 130
	i32 2821294376, ; 453: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 274
	i32 2824502124, ; 454: System.Xml.XmlDocument => 0xa85a7b6c => 157
	i32 2831556043, ; 455: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 321
	i32 2838993487, ; 456: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 263
	i32 2841355853, ; 457: System.Security.Permissions => 0xa95ba64d => 215
	i32 2847789619, ; 458: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 176
	i32 2849599387, ; 459: System.Threading.Overlapped.dll => 0xa9d96f9b => 136
	i32 2853208004, ; 460: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 286
	i32 2855708567, ; 461: Xamarin.AndroidX.Transition => 0xaa36a797 => 282
	i32 2861098320, ; 462: Mono.Android.Export.dll => 0xaa88e550 => 165
	i32 2861189240, ; 463: Microsoft.Maui.Essentials => 0xaa8a4878 => 201
	i32 2867946736, ; 464: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 214
	i32 2870099610, ; 465: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 224
	i32 2875164099, ; 466: Jsr305Binding.dll => 0xab5f85c3 => 291
	i32 2875220617, ; 467: System.Globalization.Calendars.dll => 0xab606289 => 38
	i32 2884993177, ; 468: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 250
	i32 2887636118, ; 469: System.Net.dll => 0xac1dd496 => 79
	i32 2899753641, ; 470: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 54
	i32 2900621748, ; 471: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 472: System.Reflection => 0xacf080de => 95
	i32 2905242038, ; 473: mscorlib.dll => 0xad2a79b6 => 162
	i32 2909740682, ; 474: System.Private.CoreLib => 0xad6f1e8a => 168
	i32 2916838712, ; 475: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 287
	i32 2919462931, ; 476: System.Numerics.Vectors.dll => 0xae037813 => 80
	i32 2921128767, ; 477: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 226
	i32 2936416060, ; 478: System.Resources.Reader => 0xaf06273c => 96
	i32 2940926066, ; 479: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 480: System.Xml.XPath.XDocument => 0xaf624531 => 155
	i32 2944313911, ; 481: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 206
	i32 2959614098, ; 482: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 483: System.Security.Principal.Windows => 0xb0ed41f3 => 125
	i32 2972252294, ; 484: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 117
	i32 2978675010, ; 485: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 246
	i32 2987532451, ; 486: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 277
	i32 2996846495, ; 487: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 259
	i32 3012788804, ; 488: System.Configuration.ConfigurationManager => 0xb3938244 => 206
	i32 3016983068, ; 489: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 279
	i32 3023353419, ; 490: WindowsBase.dll => 0xb434b64b => 161
	i32 3024354802, ; 491: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 254
	i32 3033605958, ; 492: System.Memory.Data.dll => 0xb4d12746 => 212
	i32 3038032645, ; 493: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 338
	i32 3056245963, ; 494: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 276
	i32 3057625584, ; 495: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 267
	i32 3059408633, ; 496: Mono.Android.Runtime => 0xb65adef9 => 166
	i32 3059793426, ; 497: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 498: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 178
	i32 3075834255, ; 499: System.Threading.Tasks => 0xb755818f => 140
	i32 3077302341, ; 500: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 314
	i32 3084678329, ; 501: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 196
	i32 3090735792, ; 502: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 123
	i32 3099732863, ; 503: System.Security.Claims.dll => 0xb8c22b7f => 116
	i32 3102218217, ; 504: ConnectFour.Models.dll => 0xb8e817e9 => 337
	i32 3103600923, ; 505: System.Formats.Asn1 => 0xb8fd311b => 209
	i32 3111772706, ; 506: System.Runtime.Serialization => 0xb979e222 => 113
	i32 3121463068, ; 507: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 45
	i32 3124832203, ; 508: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3132293585, ; 509: System.Security.AccessControl => 0xbab301d1 => 115
	i32 3147165239, ; 510: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 511: GoogleGson.dll => 0xbba64c02 => 171
	i32 3159123045, ; 512: System.Reflection.Primitives.dll => 0xbc4c6465 => 93
	i32 3160747431, ; 513: System.IO.MemoryMappedFiles => 0xbc652da7 => 51
	i32 3178803400, ; 514: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 268
	i32 3192346100, ; 515: System.Security.SecureString => 0xbe4755f4 => 127
	i32 3193515020, ; 516: System.Web => 0xbe592c0c => 149
	i32 3195844289, ; 517: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 178
	i32 3204380047, ; 518: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 519: System.Xml.XmlDocument.dll => 0xbf506931 => 157
	i32 3211777861, ; 520: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 245
	i32 3213246214, ; 521: System.Security.Permissions.dll => 0xbf863f06 => 215
	i32 3220365878, ; 522: System.Threading => 0xbff2e236 => 144
	i32 3226221578, ; 523: System.Runtime.Handles.dll => 0xc04c3c0a => 102
	i32 3251039220, ; 524: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 87
	i32 3258312781, ; 525: Xamarin.AndroidX.CardView => 0xc235e84d => 233
	i32 3265493905, ; 526: System.Linq.Queryable.dll => 0xc2a37b91 => 58
	i32 3265893370, ; 527: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3277815716, ; 528: System.Resources.Writer.dll => 0xc35f7fa4 => 98
	i32 3279906254, ; 529: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 530: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 531: System.Security.Cryptography.Encoding => 0xc4251ff9 => 120
	i32 3299363146, ; 532: System.Text.Encoding => 0xc4a8494a => 133
	i32 3303498502, ; 533: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 534: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 309
	i32 3312457198, ; 535: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 192
	i32 3316684772, ; 536: System.Net.Requests.dll => 0xc5b097e4 => 70
	i32 3317135071, ; 537: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 243
	i32 3317144872, ; 538: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 539: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 231
	i32 3345895724, ; 540: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 272
	i32 3346324047, ; 541: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 269
	i32 3357674450, ; 542: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 326
	i32 3358260929, ; 543: System.Text.Json => 0xc82afec1 => 217
	i32 3362336904, ; 544: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 224
	i32 3362522851, ; 545: Xamarin.AndroidX.Core => 0xc86c06e3 => 240
	i32 3366347497, ; 546: Java.Interop => 0xc8a662e9 => 164
	i32 3374879918, ; 547: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 194
	i32 3374999561, ; 548: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 273
	i32 3381016424, ; 549: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 305
	i32 3395150330, ; 550: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 99
	i32 3403906625, ; 551: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 121
	i32 3405233483, ; 552: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 244
	i32 3428513518, ; 553: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 182
	i32 3429136800, ; 554: System.Xml => 0xcc6479a0 => 159
	i32 3430777524, ; 555: netstandard => 0xcc7d82b4 => 163
	i32 3441283291, ; 556: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 247
	i32 3445260447, ; 557: System.Formats.Tar => 0xcd5a809f => 37
	i32 3452344032, ; 558: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 197
	i32 3463511458, ; 559: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 313
	i32 3471940407, ; 560: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 561: Mono.Android => 0xcf3163e6 => 167
	i32 3479583265, ; 562: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 326
	i32 3484440000, ; 563: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 325
	i32 3485117614, ; 564: System.Text.Json.dll => 0xcfbaacae => 217
	i32 3486566296, ; 565: System.Transactions => 0xcfd0c798 => 146
	i32 3493954962, ; 566: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 236
	i32 3509114376, ; 567: System.Xml.Linq => 0xd128d608 => 151
	i32 3515174580, ; 568: System.Security.dll => 0xd1854eb4 => 128
	i32 3530912306, ; 569: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 570: System.Net.HttpListener => 0xd2ff69f1 => 63
	i32 3545306353, ; 571: Microsoft.Data.SqlClient => 0xd35114f1 => 173
	i32 3558648585, ; 572: System.ClientModel => 0xd41cab09 => 205
	i32 3560100363, ; 573: System.Threading.Timer => 0xd432d20b => 143
	i32 3561949811, ; 574: Azure.Core.dll => 0xd44f0a73 => 169
	i32 3570554715, ; 575: System.IO.FileSystem.AccessControl => 0xd4d2575b => 45
	i32 3570608287, ; 576: System.Runtime.Caching.dll => 0xd4d3289f => 213
	i32 3580758918, ; 577: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 333
	i32 3597029428, ; 578: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 222
	i32 3598340787, ; 579: System.Net.WebSockets.Client => 0xd67a52b3 => 77
	i32 3608519521, ; 580: System.Linq.dll => 0xd715a361 => 59
	i32 3624195450, ; 581: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 104
	i32 3627220390, ; 582: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 271
	i32 3633644679, ; 583: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 226
	i32 3638274909, ; 584: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 47
	i32 3641597786, ; 585: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 257
	i32 3643446276, ; 586: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 330
	i32 3643854240, ; 587: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 268
	i32 3645089577, ; 588: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 589: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 181
	i32 3660523487, ; 590: System.Net.NetworkInformation => 0xda2f27df => 66
	i32 3667598128, ; 591: ConnectFour.DataAccess => 0xda9b1b30 => 336
	i32 3672681054, ; 592: Mono.Android.dll => 0xdae8aa5e => 167
	i32 3682565725, ; 593: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 232
	i32 3684561358, ; 594: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 236
	i32 3689375977, ; 595: System.Drawing.Common => 0xdbe768e9 => 208
	i32 3697841164, ; 596: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 335
	i32 3700591436, ; 597: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 191
	i32 3700866549, ; 598: System.Net.WebProxy.dll => 0xdc96bdf5 => 76
	i32 3706696989, ; 599: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 241
	i32 3716563718, ; 600: System.Runtime.Intrinsics => 0xdd864306 => 106
	i32 3718780102, ; 601: Xamarin.AndroidX.Annotation => 0xdda814c6 => 225
	i32 3724971120, ; 602: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 267
	i32 3732100267, ; 603: System.Net.NameResolution => 0xde7354ab => 65
	i32 3737834244, ; 604: System.Net.Http.Json.dll => 0xdecad304 => 61
	i32 3748608112, ; 605: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 207
	i32 3751444290, ; 606: System.Xml.XPath => 0xdf9a7f42 => 156
	i32 3786282454, ; 607: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 234
	i32 3792276235, ; 608: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 609: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 197
	i32 3802395368, ; 610: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 611: System.Net.WebProxy => 0xe3a54a09 => 76
	i32 3823082795, ; 612: System.Security.Cryptography.dll => 0xe3df9d2b => 124
	i32 3829621856, ; 613: System.Numerics.dll => 0xe4436460 => 81
	i32 3841636137, ; 614: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 183
	i32 3844307129, ; 615: System.Net.Mail.dll => 0xe52378b9 => 64
	i32 3849253459, ; 616: System.Runtime.InteropServices.dll => 0xe56ef253 => 105
	i32 3870376305, ; 617: System.Net.HttpListener.dll => 0xe6b14171 => 63
	i32 3873536506, ; 618: System.Security.Principal => 0xe6e179fa => 126
	i32 3875112723, ; 619: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 120
	i32 3885497537, ; 620: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 75
	i32 3885922214, ; 621: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 282
	i32 3888767677, ; 622: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 272
	i32 3889960447, ; 623: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 334
	i32 3896106733, ; 624: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 625: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 240
	i32 3901907137, ; 626: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 627: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 42
	i32 3921031405, ; 628: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 285
	i32 3928044579, ; 629: System.Xml.ReaderWriter => 0xea213423 => 152
	i32 3930554604, ; 630: System.Security.Principal.dll => 0xea4780ec => 126
	i32 3931092270, ; 631: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 270
	i32 3945713374, ; 632: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 633: System.Text.Encoding.CodePages => 0xebac8bfe => 131
	i32 3955647286, ; 634: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 228
	i32 3959773229, ; 635: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 259
	i32 3980434154, ; 636: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 329
	i32 3987592930, ; 637: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 311
	i32 4003436829, ; 638: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 639: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 227
	i32 4023392905, ; 640: System.IO.Pipelines => 0xefd01a89 => 211
	i32 4025784931, ; 641: System.Memory => 0xeff49a63 => 60
	i32 4027315940, ; 642: ConnectFour.dll => 0xf00bf6e4 => 0
	i32 4046471985, ; 643: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 199
	i32 4054681211, ; 644: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 88
	i32 4068434129, ; 645: System.Private.Xml.Linq.dll => 0xf27f60d1 => 85
	i32 4073602200, ; 646: System.Threading.dll => 0xf2ce3c98 => 144
	i32 4094352644, ; 647: Microsoft.Maui.Essentials.dll => 0xf40add04 => 201
	i32 4099507663, ; 648: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 649: System.Private.Uri => 0xf462c30d => 84
	i32 4101593132, ; 650: Xamarin.AndroidX.Emoji2 => 0xf479582c => 248
	i32 4101842092, ; 651: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 179
	i32 4102112229, ; 652: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 324
	i32 4125707920, ; 653: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 319
	i32 4126470640, ; 654: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 182
	i32 4127667938, ; 655: System.IO.FileSystem.Watcher => 0xf60736e2 => 48
	i32 4130442656, ; 656: System.AppContext => 0xf6318da0 => 6
	i32 4135016832, ; 657: ConnectFour.Models => 0xf6775980 => 337
	i32 4147896353, ; 658: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 88
	i32 4150914736, ; 659: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 331
	i32 4151237749, ; 660: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 661: System.Xml.XmlSerializer => 0xf7e95c85 => 158
	i32 4161255271, ; 662: System.Reflection.TypeExtensions => 0xf807b767 => 94
	i32 4164802419, ; 663: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 48
	i32 4181436372, ; 664: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 111
	i32 4182413190, ; 665: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 264
	i32 4185676441, ; 666: System.Security => 0xf97c5a99 => 128
	i32 4194278001, ; 667: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 177
	i32 4196529839, ; 668: System.Net.WebClient.dll => 0xfa21f6af => 74
	i32 4213026141, ; 669: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 207
	i32 4256097574, ; 670: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 241
	i32 4258378803, ; 671: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 263
	i32 4260525087, ; 672: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 673: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 210
	i32 4271975918, ; 674: Microsoft.Maui.Controls.dll => 0xfea12dee => 198
	i32 4274976490, ; 675: System.Runtime.Numerics => 0xfecef6ea => 108
	i32 4292120959, ; 676: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 264
	i32 4294763496 ; 677: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 250
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [678 x i32] [
	i32 66, ; 0
	i32 65, ; 1
	i32 106, ; 2
	i32 260, ; 3
	i32 294, ; 4
	i32 46, ; 5
	i32 78, ; 6
	i32 141, ; 7
	i32 204, ; 8
	i32 29, ; 9
	i32 335, ; 10
	i32 122, ; 11
	i32 202, ; 12
	i32 100, ; 13
	i32 278, ; 14
	i32 105, ; 15
	i32 278, ; 16
	i32 135, ; 17
	i32 298, ; 18
	i32 75, ; 19
	i32 122, ; 20
	i32 13, ; 21
	i32 234, ; 22
	i32 130, ; 23
	i32 280, ; 24
	i32 147, ; 25
	i32 332, ; 26
	i32 333, ; 27
	i32 18, ; 28
	i32 232, ; 29
	i32 26, ; 30
	i32 254, ; 31
	i32 1, ; 32
	i32 57, ; 33
	i32 40, ; 34
	i32 89, ; 35
	i32 237, ; 36
	i32 143, ; 37
	i32 256, ; 38
	i32 253, ; 39
	i32 304, ; 40
	i32 52, ; 41
	i32 67, ; 42
	i32 332, ; 43
	i32 223, ; 44
	i32 81, ; 45
	i32 203, ; 46
	i32 317, ; 47
	i32 255, ; 48
	i32 316, ; 49
	i32 129, ; 50
	i32 53, ; 51
	i32 145, ; 52
	i32 72, ; 53
	i32 141, ; 54
	i32 60, ; 55
	i32 142, ; 56
	i32 338, ; 57
	i32 161, ; 58
	i32 328, ; 59
	i32 238, ; 60
	i32 12, ; 61
	i32 251, ; 62
	i32 123, ; 63
	i32 148, ; 64
	i32 111, ; 65
	i32 162, ; 66
	i32 160, ; 67
	i32 253, ; 68
	i32 191, ; 69
	i32 266, ; 70
	i32 82, ; 71
	i32 315, ; 72
	i32 309, ; 73
	i32 188, ; 74
	i32 146, ; 75
	i32 298, ; 76
	i32 58, ; 77
	i32 184, ; 78
	i32 49, ; 79
	i32 101, ; 80
	i32 112, ; 81
	i32 172, ; 82
	i32 38, ; 83
	i32 291, ; 84
	i32 289, ; 85
	i32 118, ; 86
	i32 323, ; 87
	i32 50, ; 88
	i32 42, ; 89
	i32 117, ; 90
	i32 243, ; 91
	i32 321, ; 92
	i32 249, ; 93
	i32 79, ; 94
	i32 216, ; 95
	i32 285, ; 96
	i32 230, ; 97
	i32 8, ; 98
	i32 71, ; 99
	i32 303, ; 100
	i32 151, ; 101
	i32 300, ; 102
	i32 150, ; 103
	i32 90, ; 104
	i32 295, ; 105
	i32 43, ; 106
	i32 318, ; 107
	i32 306, ; 108
	i32 299, ; 109
	i32 107, ; 110
	i32 205, ; 111
	i32 127, ; 112
	i32 25, ; 113
	i32 220, ; 114
	i32 70, ; 115
	i32 53, ; 116
	i32 44, ; 117
	i32 327, ; 118
	i32 187, ; 119
	i32 244, ; 120
	i32 22, ; 121
	i32 258, ; 122
	i32 208, ; 123
	i32 84, ; 124
	i32 41, ; 125
	i32 156, ; 126
	i32 69, ; 127
	i32 271, ; 128
	i32 3, ; 129
	i32 40, ; 130
	i32 61, ; 131
	i32 16, ; 132
	i32 51, ; 133
	i32 330, ; 134
	i32 294, ; 135
	i32 103, ; 136
	i32 299, ; 137
	i32 292, ; 138
	i32 255, ; 139
	i32 33, ; 140
	i32 154, ; 141
	i32 83, ; 142
	i32 31, ; 143
	i32 12, ; 144
	i32 49, ; 145
	i32 54, ; 146
	i32 275, ; 147
	i32 35, ; 148
	i32 183, ; 149
	i32 305, ; 150
	i32 293, ; 151
	i32 228, ; 152
	i32 34, ; 153
	i32 56, ; 154
	i32 262, ; 155
	i32 190, ; 156
	i32 171, ; 157
	i32 17, ; 158
	i32 296, ; 159
	i32 160, ; 160
	i32 0, ; 161
	i32 318, ; 162
	i32 261, ; 163
	i32 186, ; 164
	i32 173, ; 165
	i32 218, ; 166
	i32 288, ; 167
	i32 175, ; 168
	i32 324, ; 169
	i32 149, ; 170
	i32 284, ; 171
	i32 269, ; 172
	i32 175, ; 173
	i32 322, ; 174
	i32 230, ; 175
	i32 179, ; 176
	i32 28, ; 177
	i32 50, ; 178
	i32 320, ; 179
	i32 289, ; 180
	i32 5, ; 181
	i32 304, ; 182
	i32 279, ; 183
	i32 283, ; 184
	i32 235, ; 185
	i32 300, ; 186
	i32 227, ; 187
	i32 246, ; 188
	i32 83, ; 189
	i32 288, ; 190
	i32 59, ; 191
	i32 110, ; 192
	i32 55, ; 193
	i32 334, ; 194
	i32 275, ; 195
	i32 97, ; 196
	i32 19, ; 197
	i32 239, ; 198
	i32 109, ; 199
	i32 99, ; 200
	i32 100, ; 201
	i32 302, ; 202
	i32 102, ; 203
	i32 292, ; 204
	i32 69, ; 205
	i32 209, ; 206
	i32 31, ; 207
	i32 101, ; 208
	i32 71, ; 209
	i32 210, ; 210
	i32 308, ; 211
	i32 9, ; 212
	i32 121, ; 213
	i32 44, ; 214
	i32 229, ; 215
	i32 188, ; 216
	i32 9, ; 217
	i32 41, ; 218
	i32 4, ; 219
	i32 276, ; 220
	i32 312, ; 221
	i32 192, ; 222
	i32 307, ; 223
	i32 30, ; 224
	i32 134, ; 225
	i32 90, ; 226
	i32 91, ; 227
	i32 327, ; 228
	i32 213, ; 229
	i32 47, ; 230
	i32 137, ; 231
	i32 110, ; 232
	i32 136, ; 233
	i32 170, ; 234
	i32 245, ; 235
	i32 113, ; 236
	i32 293, ; 237
	i32 153, ; 238
	i32 74, ; 239
	i32 77, ; 240
	i32 265, ; 241
	i32 36, ; 242
	i32 287, ; 243
	i32 195, ; 244
	i32 249, ; 245
	i32 242, ; 246
	i32 62, ; 247
	i32 134, ; 248
	i32 15, ; 249
	i32 114, ; 250
	i32 281, ; 251
	i32 290, ; 252
	i32 237, ; 253
	i32 46, ; 254
	i32 68, ; 255
	i32 78, ; 256
	i32 124, ; 257
	i32 174, ; 258
	i32 92, ; 259
	i32 119, ; 260
	i32 297, ; 261
	i32 26, ; 262
	i32 258, ; 263
	i32 95, ; 264
	i32 27, ; 265
	i32 233, ; 266
	i32 325, ; 267
	i32 303, ; 268
	i32 145, ; 269
	i32 211, ; 270
	i32 165, ; 271
	i32 4, ; 272
	i32 96, ; 273
	i32 32, ; 274
	i32 91, ; 275
	i32 280, ; 276
	i32 184, ; 277
	i32 21, ; 278
	i32 39, ; 279
	i32 166, ; 280
	i32 319, ; 281
	i32 251, ; 282
	i32 311, ; 283
	i32 189, ; 284
	i32 172, ; 285
	i32 265, ; 286
	i32 296, ; 287
	i32 290, ; 288
	i32 270, ; 289
	i32 2, ; 290
	i32 132, ; 291
	i32 109, ; 292
	i32 185, ; 293
	i32 218, ; 294
	i32 331, ; 295
	i32 220, ; 296
	i32 328, ; 297
	i32 56, ; 298
	i32 93, ; 299
	i32 195, ; 300
	i32 310, ; 301
	i32 37, ; 302
	i32 231, ; 303
	i32 25, ; 304
	i32 92, ; 305
	i32 87, ; 306
	i32 97, ; 307
	i32 10, ; 308
	i32 85, ; 309
	i32 98, ; 310
	i32 277, ; 311
	i32 180, ; 312
	i32 297, ; 313
	i32 222, ; 314
	i32 196, ; 315
	i32 307, ; 316
	i32 7, ; 317
	i32 262, ; 318
	i32 302, ; 319
	i32 219, ; 320
	i32 190, ; 321
	i32 86, ; 322
	i32 257, ; 323
	i32 150, ; 324
	i32 306, ; 325
	i32 32, ; 326
	i32 114, ; 327
	i32 80, ; 328
	i32 20, ; 329
	i32 11, ; 330
	i32 158, ; 331
	i32 3, ; 332
	i32 200, ; 333
	i32 314, ; 334
	i32 187, ; 335
	i32 185, ; 336
	i32 82, ; 337
	i32 301, ; 338
	i32 62, ; 339
	i32 316, ; 340
	i32 284, ; 341
	i32 139, ; 342
	i32 266, ; 343
	i32 153, ; 344
	i32 174, ; 345
	i32 194, ; 346
	i32 39, ; 347
	i32 115, ; 348
	i32 181, ; 349
	i32 221, ; 350
	i32 310, ; 351
	i32 273, ; 352
	i32 129, ; 353
	i32 73, ; 354
	i32 64, ; 355
	i32 320, ; 356
	i32 168, ; 357
	i32 225, ; 358
	i32 139, ; 359
	i32 104, ; 360
	i32 147, ; 361
	i32 68, ; 362
	i32 152, ; 363
	i32 193, ; 364
	i32 180, ; 365
	i32 119, ; 366
	i32 125, ; 367
	i32 315, ; 368
	i32 148, ; 369
	i32 248, ; 370
	i32 137, ; 371
	i32 235, ; 372
	i32 312, ; 373
	i32 20, ; 374
	i32 14, ; 375
	i32 133, ; 376
	i32 73, ; 377
	i32 57, ; 378
	i32 238, ; 379
	i32 163, ; 380
	i32 164, ; 381
	i32 198, ; 382
	i32 15, ; 383
	i32 72, ; 384
	i32 6, ; 385
	i32 23, ; 386
	i32 260, ; 387
	i32 219, ; 388
	i32 89, ; 389
	i32 313, ; 390
	i32 1, ; 391
	i32 216, ; 392
	i32 261, ; 393
	i32 283, ; 394
	i32 132, ; 395
	i32 67, ; 396
	i32 142, ; 397
	i32 322, ; 398
	i32 301, ; 399
	i32 252, ; 400
	i32 186, ; 401
	i32 86, ; 402
	i32 94, ; 403
	i32 242, ; 404
	i32 247, ; 405
	i32 317, ; 406
	i32 30, ; 407
	i32 212, ; 408
	i32 43, ; 409
	i32 256, ; 410
	i32 176, ; 411
	i32 193, ; 412
	i32 169, ; 413
	i32 336, ; 414
	i32 214, ; 415
	i32 221, ; 416
	i32 107, ; 417
	i32 154, ; 418
	i32 34, ; 419
	i32 22, ; 420
	i32 170, ; 421
	i32 112, ; 422
	i32 55, ; 423
	i32 281, ; 424
	i32 140, ; 425
	i32 116, ; 426
	i32 118, ; 427
	i32 108, ; 428
	i32 223, ; 429
	i32 135, ; 430
	i32 229, ; 431
	i32 189, ; 432
	i32 52, ; 433
	i32 103, ; 434
	i32 323, ; 435
	i32 203, ; 436
	i32 177, ; 437
	i32 199, ; 438
	i32 200, ; 439
	i32 131, ; 440
	i32 295, ; 441
	i32 286, ; 442
	i32 274, ; 443
	i32 329, ; 444
	i32 252, ; 445
	i32 204, ; 446
	i32 202, ; 447
	i32 155, ; 448
	i32 308, ; 449
	i32 239, ; 450
	i32 159, ; 451
	i32 130, ; 452
	i32 274, ; 453
	i32 157, ; 454
	i32 321, ; 455
	i32 263, ; 456
	i32 215, ; 457
	i32 176, ; 458
	i32 136, ; 459
	i32 286, ; 460
	i32 282, ; 461
	i32 165, ; 462
	i32 201, ; 463
	i32 214, ; 464
	i32 224, ; 465
	i32 291, ; 466
	i32 38, ; 467
	i32 250, ; 468
	i32 79, ; 469
	i32 54, ; 470
	i32 36, ; 471
	i32 95, ; 472
	i32 162, ; 473
	i32 168, ; 474
	i32 287, ; 475
	i32 80, ; 476
	i32 226, ; 477
	i32 96, ; 478
	i32 29, ; 479
	i32 155, ; 480
	i32 206, ; 481
	i32 18, ; 482
	i32 125, ; 483
	i32 117, ; 484
	i32 246, ; 485
	i32 277, ; 486
	i32 259, ; 487
	i32 206, ; 488
	i32 279, ; 489
	i32 161, ; 490
	i32 254, ; 491
	i32 212, ; 492
	i32 338, ; 493
	i32 276, ; 494
	i32 267, ; 495
	i32 166, ; 496
	i32 16, ; 497
	i32 178, ; 498
	i32 140, ; 499
	i32 314, ; 500
	i32 196, ; 501
	i32 123, ; 502
	i32 116, ; 503
	i32 337, ; 504
	i32 209, ; 505
	i32 113, ; 506
	i32 45, ; 507
	i32 138, ; 508
	i32 115, ; 509
	i32 33, ; 510
	i32 171, ; 511
	i32 93, ; 512
	i32 51, ; 513
	i32 268, ; 514
	i32 127, ; 515
	i32 149, ; 516
	i32 178, ; 517
	i32 24, ; 518
	i32 157, ; 519
	i32 245, ; 520
	i32 215, ; 521
	i32 144, ; 522
	i32 102, ; 523
	i32 87, ; 524
	i32 233, ; 525
	i32 58, ; 526
	i32 138, ; 527
	i32 98, ; 528
	i32 5, ; 529
	i32 13, ; 530
	i32 120, ; 531
	i32 133, ; 532
	i32 27, ; 533
	i32 309, ; 534
	i32 192, ; 535
	i32 70, ; 536
	i32 243, ; 537
	i32 24, ; 538
	i32 231, ; 539
	i32 272, ; 540
	i32 269, ; 541
	i32 326, ; 542
	i32 217, ; 543
	i32 224, ; 544
	i32 240, ; 545
	i32 164, ; 546
	i32 194, ; 547
	i32 273, ; 548
	i32 305, ; 549
	i32 99, ; 550
	i32 121, ; 551
	i32 244, ; 552
	i32 182, ; 553
	i32 159, ; 554
	i32 163, ; 555
	i32 247, ; 556
	i32 37, ; 557
	i32 197, ; 558
	i32 313, ; 559
	i32 17, ; 560
	i32 167, ; 561
	i32 326, ; 562
	i32 325, ; 563
	i32 217, ; 564
	i32 146, ; 565
	i32 236, ; 566
	i32 151, ; 567
	i32 128, ; 568
	i32 19, ; 569
	i32 63, ; 570
	i32 173, ; 571
	i32 205, ; 572
	i32 143, ; 573
	i32 169, ; 574
	i32 45, ; 575
	i32 213, ; 576
	i32 333, ; 577
	i32 222, ; 578
	i32 77, ; 579
	i32 59, ; 580
	i32 104, ; 581
	i32 271, ; 582
	i32 226, ; 583
	i32 47, ; 584
	i32 257, ; 585
	i32 330, ; 586
	i32 268, ; 587
	i32 14, ; 588
	i32 181, ; 589
	i32 66, ; 590
	i32 336, ; 591
	i32 167, ; 592
	i32 232, ; 593
	i32 236, ; 594
	i32 208, ; 595
	i32 335, ; 596
	i32 191, ; 597
	i32 76, ; 598
	i32 241, ; 599
	i32 106, ; 600
	i32 225, ; 601
	i32 267, ; 602
	i32 65, ; 603
	i32 61, ; 604
	i32 207, ; 605
	i32 156, ; 606
	i32 234, ; 607
	i32 10, ; 608
	i32 197, ; 609
	i32 11, ; 610
	i32 76, ; 611
	i32 124, ; 612
	i32 81, ; 613
	i32 183, ; 614
	i32 64, ; 615
	i32 105, ; 616
	i32 63, ; 617
	i32 126, ; 618
	i32 120, ; 619
	i32 75, ; 620
	i32 282, ; 621
	i32 272, ; 622
	i32 334, ; 623
	i32 8, ; 624
	i32 240, ; 625
	i32 2, ; 626
	i32 42, ; 627
	i32 285, ; 628
	i32 152, ; 629
	i32 126, ; 630
	i32 270, ; 631
	i32 23, ; 632
	i32 131, ; 633
	i32 228, ; 634
	i32 259, ; 635
	i32 329, ; 636
	i32 311, ; 637
	i32 28, ; 638
	i32 227, ; 639
	i32 211, ; 640
	i32 60, ; 641
	i32 0, ; 642
	i32 199, ; 643
	i32 88, ; 644
	i32 85, ; 645
	i32 144, ; 646
	i32 201, ; 647
	i32 35, ; 648
	i32 84, ; 649
	i32 248, ; 650
	i32 179, ; 651
	i32 324, ; 652
	i32 319, ; 653
	i32 182, ; 654
	i32 48, ; 655
	i32 6, ; 656
	i32 337, ; 657
	i32 88, ; 658
	i32 331, ; 659
	i32 21, ; 660
	i32 158, ; 661
	i32 94, ; 662
	i32 48, ; 663
	i32 111, ; 664
	i32 264, ; 665
	i32 128, ; 666
	i32 177, ; 667
	i32 74, ; 668
	i32 207, ; 669
	i32 241, ; 670
	i32 263, ; 671
	i32 7, ; 672
	i32 210, ; 673
	i32 198, ; 674
	i32 108, ; 675
	i32 264, ; 676
	i32 250 ; 677
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
