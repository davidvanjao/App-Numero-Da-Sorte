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

@assembly_image_cache = dso_local local_unnamed_addr global [317 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [951 x i32] [
	i32 u0x0027eb9e, ; 0: System.Net.NetworkInformation.dll => 69
	i32 u0x00345a11, ; 1: lib_System.Net.Requests.dll.so => 73
	i32 u0x005332a8, ; 2: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 225
	i32 u0x009b21bb, ; 3: System.Net.NameResolution.dll => 68
	i32 u0x00c8cc5d, ; 4: lib_Xamarin.AndroidX.Loader.dll.so => 240
	i32 u0x00e0bbf7, ; 5: lib_System.Xml.XmlSerializer.dll.so => 163
	i32 u0x00efe298, ; 6: System.Runtime.Intrinsics.dll => 109
	i32 u0x0119bc86, ; 7: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 178
	i32 u0x01f2c4e1, ; 8: Xamarin.AndroidX.Lifecycle.Runtime => 232
	i32 u0x0211b5dc, ; 9: Xamarin.Google.Guava.ListenableFuture.dll => 269
	i32 u0x02139ac3, ; 10: System.IO.FileSystem.DriveInfo => 48
	i32 u0x025a8054, ; 11: System.Net.WebSockets.dll => 81
	i32 u0x02664405, ; 12: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 308
	i32 u0x028aa24d, ; 13: System.Threading.Thread => 146
	i32 u0x02bda0f5, ; 14: Xamarin.KotlinX.AtomicFU.Jvm => 273
	i32 u0x03358480, ; 15: lib_Microsoft.Maui.dll.so => 186
	i32 u0x0335cdbc, ; 16: ca/Microsoft.Maui.Controls.resources => 280
	i32 u0x03f75868, ; 17: System.Diagnostics.StackTrace => 30
	i32 u0x0410f24b, ; 18: System.Security.Cryptography.Primitives => 125
	i32 u0x044bb714, ; 19: Microsoft.Maui.Graphics.dll => 188
	i32 u0x04e7b0a1, ; 20: System.Runtime.CompilerServices.VisualC.dll => 103
	i32 u0x056606a6, ; 21: lib_System.Collections.NonGeneric.dll.so => 10
	i32 u0x060d4943, ; 22: Xamarin.AndroidX.SlidingPaneLayout => 253
	i32 u0x065dd880, ; 23: lib_System.Linq.Queryable.dll.so => 61
	i32 u0x06c2cd46, ; 24: zh-HK/Microsoft.Maui.Controls.resources => 310
	i32 u0x06e4e181, ; 25: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 269
	i32 u0x06ee56d3, ; 26: lib_System.Net.Mail.dll.so => 67
	i32 u0x06ffddbc, ; 27: System.Runtime.InteropServices => 108
	i32 u0x072f9521, ; 28: Xamarin.AndroidX.SlidingPaneLayout.dll => 253
	i32 u0x074aea82, ; 29: System.Threading.Channels.dll => 140
	i32 u0x0772c6a7, ; 30: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i32 u0x0881c32f, ; 31: System.Net.WebHeaderCollection => 78
	i32 u0x08f064cf, ; 32: System.Security.Cryptography.Primitives.dll => 125
	i32 u0x097ed3c0, ; 33: System.ComponentModel.Annotations => 13
	i32 u0x098905a2, ; 34: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 207
	i32 u0x09d975c3, ; 35: Xamarin.AndroidX.Collection.dll => 204
	i32 u0x09e60a6e, ; 36: Xamarin.KotlinX.AtomicFU.dll => 272
	i32 u0x0a0c2bd0, ; 37: lib_Xamarin.AndroidX.Activity.dll.so => 193
	i32 u0x0a81994f, ; 38: System.ServiceProcess => 133
	i32 u0x0ade3a75, ; 39: Xamarin.AndroidX.SwipeRefreshLayout.dll => 255
	i32 u0x0ae43932, ; 40: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 256
	i32 u0x0aee6a3d, ; 41: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 309
	i32 u0x0aeedc53, ; 42: lib_Xamarin.Google.Android.Material.dll.so => 265
	i32 u0x0afca281, ; 43: System.ValueTuple.dll => 152
	i32 u0x0b0de1c3, ; 44: lib_System.Xml.XPath.XDocument.dll.so => 160
	i32 u0x0b63b1e1, ; 45: lib_System.Net.Http.Json.dll.so => 64
	i32 u0x0b721a36, ; 46: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 299
	i32 u0x0ba65f85, ; 47: vi/Microsoft.Maui.Controls.resources.dll => 309
	i32 u0x0ba8e231, ; 48: lib_System.Net.ServicePoint.dll.so => 75
	i32 u0x0be195c3, ; 49: zh-HK/Microsoft.Maui.Controls.resources.dll => 310
	i32 u0x0c38ff48, ; 50: System.ComponentModel => 18
	i32 u0x0c7b2e71, ; 51: Xamarin.AndroidX.Browser.dll => 202
	i32 u0x0cfa66a6, ; 52: lib_System.IO.Compression.FileSystem.dll.so => 44
	i32 u0x0d1f8edb, ; 53: System.Diagnostics.Debug => 26
	i32 u0x0d73bff4, ; 54: lib_Microsoft.Extensions.Logging.Debug.dll.so => 181
	i32 u0x0db8d509, ; 55: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 225
	i32 u0x0dc10265, ; 56: Microsoft.CSharp.dll => 1
	i32 u0x0dc2f416, ; 57: lib_Xamarin.AndroidX.CustomView.dll.so => 214
	i32 u0x0dcb05c4, ; 58: System.Linq.Parallel => 60
	i32 u0x0dd133ce, ; 59: System.Globalization => 42
	i32 u0x0e762ada, ; 60: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 297
	i32 u0x0eb2f8c5, ; 61: System.Reflection.Emit.Lightweight => 92
	i32 u0x0ec71be0, ; 62: lib_System.Security.SecureString.dll.so => 130
	i32 u0x0ecfdca9, ; 63: lib_Xamarin.Android.Glide.dll.so => 189
	i32 u0x0f99119d, ; 64: Xamarin.AndroidX.ConstraintLayout.dll => 208
	i32 u0x107abf20, ; 65: System.Threading.Timer.dll => 148
	i32 u0x109c6ab8, ; 66: Xamarin.AndroidX.Lifecycle.LiveData.dll => 228
	i32 u0x10b7d2b7, ; 67: Xamarin.AndroidX.Interpolator => 224
	i32 u0x10bf9929, ; 68: cs/Microsoft.Maui.Controls.resources.dll => 281
	i32 u0x10c1d9f6, ; 69: lib_System.Data.DataSetExtensions.dll.so => 23
	i32 u0x113d3381, ; 70: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 304
	i32 u0x1159791e, ; 71: System.IO.Pipes.AccessControl.dll => 55
	i32 u0x11d123fd, ; 72: System.Net.Ping.dll => 70
	i32 u0x13031348, ; 73: Xamarin.AndroidX.Activity.dll => 193
	i32 u0x132b30dd, ; 74: System.Numerics => 84
	i32 u0x1331a702, ; 75: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 267
	i32 u0x136bf828, ; 76: lib_System.Runtime.dll.so => 117
	i32 u0x14095832, ; 77: ja/Microsoft.Maui.Controls.resources.dll => 294
	i32 u0x146817a2, ; 78: Xamarin.AndroidX.Lifecycle.Common => 226
	i32 u0x14eaf2a7, ; 79: lib_System.ComponentModel.Annotations.dll.so => 13
	i32 u0x153e1455, ; 80: it/Microsoft.Maui.Controls.resources.dll => 293
	i32 u0x15502fa0, ; 81: cs/Microsoft.Maui.Controls.resources => 281
	i32 u0x15766b7b, ; 82: System.ServiceModel.Web => 132
	i32 u0x15c177ae, ; 83: lib_Microsoft.Extensions.Configuration.dll.so => 175
	i32 u0x15e184df, ; 84: lib_System.Runtime.Loader.dll.so => 110
	i32 u0x15ebe147, ; 85: System.IO.Pipes => 56
	i32 u0x16101ba2, ; 86: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 314
	i32 u0x1658bf94, ; 87: System.Transactions.Local => 150
	i32 u0x16646418, ; 88: System.Net.ServicePoint.dll => 75
	i32 u0x16a510e1, ; 89: System.Threading.Thread.dll => 146
	i32 u0x16fe439a, ; 90: System.Memory.dll => 63
	i32 u0x1766c1f7, ; 91: System.Threading.ThreadPool.dll => 147
	i32 u0x1778984a, ; 92: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 249
	i32 u0x17969339, ; 93: _Microsoft.Android.Resource.Designer => 316
	i32 u0x180c08d0, ; 94: WindowsBase => 166
	i32 u0x195d1904, ; 95: Xamarin.AndroidX.Lifecycle.Runtime.Android => 233
	i32 u0x198cd3eb, ; 96: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i32 u0x19f6996b, ; 97: sv/Microsoft.Maui.Controls.resources.dll => 305
	i32 u0x1a4e3ec4, ; 98: Xamarin.AndroidX.ConstraintLayout.Core => 209
	i32 u0x1a61054f, ; 99: System.Collections => 12
	i32 u0x1ae0ec2c, ; 100: Xamarin.AndroidX.Fragment.dll => 222
	i32 u0x1ae969b2, ; 101: System.Security.Cryptography.X509Certificates => 126
	i32 u0x1b317bfd, ; 102: System.Web.HttpUtility.dll => 153
	i32 u0x1b46a9fd, ; 103: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 234
	i32 u0x1b5932ea, ; 104: lib_Mono.Android.Runtime.dll.so => 171
	i32 u0x1b611806, ; 105: System.Runtime.Serialization.Primitives.dll => 114
	i32 u0x1bc4415d, ; 106: mscorlib => 167
	i32 u0x1bc6ffe7, ; 107: lib_Java.Interop.dll.so => 169
	i32 u0x1bcdaf18, ; 108: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 241
	i32 u0x1bff388e, ; 109: System.dll => 165
	i32 u0x1c690cb9, ; 110: Xamarin.AndroidX.Interpolator.dll => 224
	i32 u0x1c78d08a, ; 111: lib_System.Private.Uri.dll.so => 87
	i32 u0x1d05f80c, ; 112: Xamarin.AndroidX.LocalBroadcastManager.dll => 241
	i32 u0x1d48410e, ; 113: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 253
	i32 u0x1d4d8185, ; 114: lib_System.Runtime.Serialization.dll.so => 116
	i32 u0x1dbae811, ; 115: System.ObjectModel => 85
	i32 u0x1dd2dc50, ; 116: id/Microsoft.Maui.Controls.resources.dll => 292
	i32 u0x1e092f31, ; 117: fi/Microsoft.Maui.Controls.resources.dll => 286
	i32 u0x1e9789de, ; 118: Microsoft.Extensions.Primitives.dll => 183
	i32 u0x1f1dceb7, ; 119: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i32 u0x1f443e2d, ; 120: lib_System.AppContext.dll.so => 6
	i32 u0x1f6088c2, ; 121: System.Transactions.dll => 151
	i32 u0x1f6bf43d, ; 122: hi/Microsoft.Maui.Controls.resources => 289
	i32 u0x1f9b4faa, ; 123: System.Linq.Queryable => 61
	i32 u0x20216150, ; 124: Microsoft.Extensions.Logging => 179
	i32 u0x20303736, ; 125: System.IO.FileSystem.dll => 51
	i32 u0x2080b118, ; 126: System.Runtime.Extensions => 104
	i32 u0x20924146, ; 127: System.Runtime.Serialization.Xml => 115
	i32 u0x20bbb280, ; 128: System.Globalization.Calendars => 40
	i32 u0x2113b341, ; 129: AppNumeroDaSorte => 0
	i32 u0x213954e7, ; 130: Jsr305Binding => 266
	i32 u0x21c4e49a, ; 131: AppNumeroDaSorte.dll => 0
	i32 u0x21f36ef8, ; 132: Xamarin.AndroidX.Window.Extensions.Core.Core => 264
	i32 u0x22697083, ; 133: System.Security.Cryptography.Cng => 121
	i32 u0x234b6fb2, ; 134: pt-BR/Microsoft.Maui.Controls.resources.dll => 300
	i32 u0x236793de, ; 135: lib_GoogleGson.dll.so => 174
	i32 u0x2386616a, ; 136: lib_System.ServiceModel.Web.dll.so => 132
	i32 u0x2397454a, ; 137: lib_System.Collections.Specialized.dll.so => 11
	i32 u0x23d83352, ; 138: System.IO.IsolatedStorage.dll => 52
	i32 u0x23eaab34, ; 139: lib_System.Core.dll.so => 21
	i32 u0x24154ecb, ; 140: System.IO.Compression.FileSystem => 44
	i32 u0x2459aaf0, ; 141: lib_System.Net.Sockets.dll.so => 76
	i32 u0x2493d7b9, ; 142: System.Security.Cryptography.Algorithms => 120
	i32 u0x2512d1c5, ; 143: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 233
	i32 u0x2568904f, ; 144: Xamarin.AndroidX.CustomView => 214
	i32 u0x26233b86, ; 145: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 220
	i32 u0x26249f17, ; 146: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 215
	i32 u0x262968a7, ; 147: lib_System.Reflection.Extensions.dll.so => 94
	i32 u0x262d781c, ; 148: lib-de-Microsoft.Maui.Controls.resources.dll.so => 283
	i32 u0x2660a755, ; 149: System.Net => 82
	i32 u0x27787397, ; 150: System.Text.Encodings.Web.dll => 137
	i32 u0x278c7790, ; 151: Xamarin.AndroidX.VersionedParcelable => 260
	i32 u0x27b53050, ; 152: lib_System.Data.Common.dll.so => 22
	i32 u0x27b6d01f, ; 153: Xamarin.AndroidX.Arch.Core.Common.dll => 200
	i32 u0x2814a96c, ; 154: System.Collections.Concurrent => 8
	i32 u0x282acf5e, ; 155: lib_System.IO.FileSystem.dll.so => 51
	i32 u0x28607aa1, ; 156: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 300
	i32 u0x287c1a88, ; 157: Xamarin.KotlinX.AtomicFU => 272
	i32 u0x28bdabca, ; 158: System.Net.Security => 74
	i32 u0x2904cf94, ; 159: ca/Microsoft.Maui.Controls.resources.dll => 280
	i32 u0x29293ff5, ; 160: System.Xml.Linq.dll => 156
	i32 u0x29352520, ; 161: Xamarin.KotlinX.Coroutines.Android.dll => 274
	i32 u0x29423679, ; 162: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 213
	i32 u0x295a9e3d, ; 163: System.Windows => 155
	i32 u0x296c7566, ; 164: lib_System.Xml.dll.so => 164
	i32 u0x29af2b3b, ; 165: System.Reflection.Emit => 93
	i32 u0x29bd7e5b, ; 166: Xamarin.Jetbrains.Annotations => 270
	i32 u0x29be9df3, ; 167: System.IO.Compression.ZipFile => 45
	i32 u0x2a1e8ecb, ; 168: ko/Microsoft.Maui.Controls.resources.dll => 295
	i32 u0x2a4afd4a, ; 169: de/Microsoft.Maui.Controls.resources.dll => 283
	i32 u0x2b15ed29, ; 170: System.Runtime.Loader.dll => 110
	i32 u0x2ba1ca8c, ; 171: lib_System.Security.dll.so => 131
	i32 u0x2bd14e96, ; 172: System.Security.SecureString.dll => 130
	i32 u0x2cd6293c, ; 173: System.Diagnostics.Contracts.dll => 25
	i32 u0x2d052d0c, ; 174: Xamarin.Android.Glide.Annotations.dll => 190
	i32 u0x2d322560, ; 175: lib_System.Xml.XmlDocument.dll.so => 162
	i32 u0x2d445acd, ; 176: System.Net.Requests => 73
	i32 u0x2d745423, ; 177: System.IO.Pipes.dll => 56
	i32 u0x2e394f87, ; 178: System.IO.Compression => 46
	i32 u0x2eec5558, ; 179: lib_System.Reflection.dll.so => 98
	i32 u0x2f0980eb, ; 180: Microsoft.Extensions.Options => 182
	i32 u0x2f0fe5eb, ; 181: lib_System.Reflection.DispatchProxy.dll.so => 90
	i32 u0x2f1c1e69, ; 182: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 215
	i32 u0x2ff6fb9f, ; 183: System.Data.Common => 22
	i32 u0x302809e9, ; 184: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 230
	i32 u0x30a0e95c, ; 185: lib_System.Threading.Thread.dll.so => 146
	i32 u0x311247b5, ; 186: System.Private.Uri.dll => 87
	i32 u0x317d5b75, ; 187: System.IO.Compression.Brotli => 43
	i32 u0x31a103c6, ; 188: System.Xml.XPath.dll => 161
	i32 u0x31b69d60, ; 189: System.Net.Quic => 72
	i32 u0x3246f6cd, ; 190: Xamarin.AndroidX.Print => 246
	i32 u0x3312831d, ; 191: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 217
	i32 u0x33e88be1, ; 192: ar/Microsoft.Maui.Controls.resources => 279
	i32 u0x340ac0b8, ; 193: Microsoft.VisualBasic => 3
	i32 u0x34505120, ; 194: System.Globalization.dll => 42
	i32 u0x3463c971, ; 195: System.Net.Http.Json => 64
	i32 u0x34a66c56, ; 196: lib_System.IO.Pipes.dll.so => 56
	i32 u0x352e5794, ; 197: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 268
	i32 u0x35e25008, ; 198: System.ComponentModel.Primitives.dll => 16
	i32 u0x3612ff2c, ; 199: lib_System.IO.dll.so => 58
	i32 u0x364e69a3, ; 200: System.IO.MemoryMappedFiles.dll => 53
	i32 u0x36e9595b, ; 201: lib_System.Transactions.dll.so => 151
	i32 u0x370eff4f, ; 202: lib_System.Globalization.Extensions.dll.so => 41
	i32 u0x373f6a31, ; 203: tr/Microsoft.Maui.Controls.resources.dll => 307
	i32 u0x3751ef41, ; 204: Xamarin.Google.Guava.ListenableFuture => 269
	i32 u0x3787b992, ; 205: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i32 u0x37ea9cd7, ; 206: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 237
	i32 u0x382704bd, ; 207: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 220
	i32 u0x38c136f7, ; 208: System.Runtime.InteropServices.JavaScript.dll => 106
	i32 u0x38d89c1d, ; 209: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 227
	i32 u0x39481653, ; 210: lib_mscorlib.dll.so => 167
	i32 u0x399f1f06, ; 211: Xamarin.Google.Crypto.Tink.Android => 267
	i32 u0x39adca5e, ; 212: Xamarin.AndroidX.Lifecycle.Common.dll => 226
	i32 u0x3a20ecf3, ; 213: System.Diagnostics.Tracing => 34
	i32 u0x3a2aaa1d, ; 214: System.Xml.XDocument => 159
	i32 u0x3a8b0a79, ; 215: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 274
	i32 u0x3acd0267, ; 216: System.Private.DataContractSerialization.dll => 86
	i32 u0x3ad7b407, ; 217: System.Diagnostics.Tools => 32
	i32 u0x3b008d80, ; 218: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 218
	i32 u0x3b2c715c, ; 219: System.Collections.dll => 12
	i32 u0x3b3271e4, ; 220: zh-Hans/Microsoft.Maui.Controls.resources => 311
	i32 u0x3b458447, ; 221: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i32 u0x3b45fb35, ; 222: System.IO.FileSystem => 51
	i32 u0x3b4797e5, ; 223: es/Microsoft.Maui.Controls.resources => 285
	i32 u0x3bb6bd33, ; 224: System.IO.UnmanagedMemoryStream.dll => 57
	i32 u0x3c5e5b62, ; 225: Xamarin.AndroidX.SavedState.dll => 250
	i32 u0x3cbffa41, ; 226: System.Drawing => 36
	i32 u0x3d548d92, ; 227: Microsoft.Extensions.DependencyInjection.Abstractions => 178
	i32 u0x3d5a6611, ; 228: da/Microsoft.Maui.Controls.resources.dll => 282
	i32 u0x3d7be038, ; 229: Xamarin.Google.ErrorProne.Annotations.dll => 268
	i32 u0x3dbaaf8f, ; 230: Xamarin.AndroidX.AppCompat => 198
	i32 u0x3dc84a49, ; 231: System.Drawing.Primitives.dll => 35
	i32 u0x3df150e9, ; 232: lib_Xamarin.AndroidX.Interpolator.dll.so => 224
	i32 u0x3e444eb4, ; 233: System.Linq.Expressions.dll => 59
	i32 u0x3e5c42fd, ; 234: lib_System.Reflection.TypeExtensions.dll.so => 97
	i32 u0x3eb776a1, ; 235: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 236
	i32 u0x3ebd41f6, ; 236: lib_System.Collections.dll.so => 12
	i32 u0x3ecd3024, ; 237: lib_System.Resources.Reader.dll.so => 99
	i32 u0x3eea4db8, ; 238: lib_Microsoft.Extensions.Primitives.dll.so => 183
	i32 u0x3f3e1e33, ; 239: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 231
	i32 u0x3f9dcf8c, ; 240: GoogleGson => 174
	i32 u0x408b17f4, ; 241: System.ComponentModel.TypeConverter => 17
	i32 u0x409e66d8, ; 242: Xamarin.Kotlin.StdLib => 271
	i32 u0x41761b2c, ; 243: System => 165
	i32 u0x4232ae7b, ; 244: lib_System.Reflection.Emit.dll.so => 93
	i32 u0x42be2972, ; 245: lib_System.Text.Encodings.Web.dll.so => 137
	i32 u0x42c091c1, ; 246: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 192
	i32 u0x42da3e50, ; 247: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 234
	i32 u0x43362f15, ; 248: Microsoft.Extensions.Logging.Debug => 181
	i32 u0x4393e151, ; 249: lib-th-Microsoft.Maui.Controls.resources.dll.so => 306
	i32 u0x441f18e1, ; 250: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i32 u0x444e5c8e, ; 251: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i32 u0x44549c93, ; 252: lib_System.Net.WebProxy.dll.so => 79
	i32 u0x4474042c, ; 253: lib_System.Numerics.Vectors.dll.so => 83
	i32 u0x447dc2e6, ; 254: Xamarin.AndroidX.Window => 263
	i32 u0x44845810, ; 255: lib_System.Net.Http.dll.so => 65
	i32 u0x44c3958b, ; 256: lib_System.Private.DataContractSerialization.dll.so => 86
	i32 u0x45bde382, ; 257: lib_System.Windows.dll.so => 155
	i32 u0x45c677b2, ; 258: System.Web.dll => 154
	i32 u0x460b48eb, ; 259: Xamarin.AndroidX.VectorDrawable.Animated => 259
	i32 u0x463a8801, ; 260: Xamarin.AndroidX.Navigation.Runtime.dll => 244
	i32 u0x464305ed, ; 261: fi/Microsoft.Maui.Controls.resources => 286
	i32 u0x466ae52b, ; 262: lib_System.Threading.Overlapped.dll.so => 141
	i32 u0x47a87de7, ; 263: lib_System.Resources.Writer.dll.so => 101
	i32 u0x47b79c15, ; 264: pl/Microsoft.Maui.Controls.resources.dll => 299
	i32 u0x47c7b4fa, ; 265: Xamarin.AndroidX.Arch.Core.Common => 200
	i32 u0x480a69ad, ; 266: System.Diagnostics.Process => 29
	i32 u0x48aa6be3, ; 267: System.IO.IsolatedStorage => 52
	i32 u0x48bf92c4, ; 268: lib_Xamarin.AndroidX.Collection.dll.so => 204
	i32 u0x49654709, ; 269: lib_System.Threading.Timer.dll.so => 148
	i32 u0x499b8219, ; 270: nb/Microsoft.Maui.Controls.resources.dll => 297
	i32 u0x4a0189ae, ; 271: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 289
	i32 u0x4a18f6f7, ; 272: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 264
	i32 u0x4a4cd262, ; 273: Xamarin.AndroidX.Collection.Jvm.dll => 205
	i32 u0x4aaf6f7c, ; 274: Microsoft.Win32.Registry => 5
	i32 u0x4ae97402, ; 275: lib_Microsoft.Maui.Graphics.dll.so => 188
	i32 u0x4b275854, ; 276: Xamarin.KotlinX.Serialization.Core.Jvm => 278
	i32 u0x4b5eebe5, ; 277: Xamarin.AndroidX.Startup.StartupRuntime.dll => 254
	i32 u0x4b64b158, ; 278: Xamarin.KotlinX.Coroutines.Core.dll => 275
	i32 u0x4b863c7a, ; 279: lib_System.Private.Xml.Linq.dll.so => 88
	i32 u0x4b8a64a7, ; 280: Xamarin.AndroidX.VectorDrawable => 258
	i32 u0x4bb12d98, ; 281: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i32 u0x4be46b58, ; 282: Xamarin.AndroidX.Collection.Ktx => 206
	i32 u0x4c071bea, ; 283: Xamarin.KotlinX.Coroutines.Android => 274
	i32 u0x4c3393c5, ; 284: Xamarin.AndroidX.Annotation.Jvm => 197
	i32 u0x4d14ee2b, ; 285: Xamarin.AndroidX.DrawerLayout.dll => 217
	i32 u0x4de0ce3b, ; 286: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 247
	i32 u0x4e08a30b, ; 287: System.Private.DataContractSerialization => 86
	i32 u0x4e98c997, ; 288: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 264
	i32 u0x4ed70c83, ; 289: Xamarin.AndroidX.Window.dll => 263
	i32 u0x4eed2679, ; 290: System.Linq => 62
	i32 u0x4f97822f, ; 291: System.Runtime.Serialization.Json.dll => 113
	i32 u0x50255dd9, ; 292: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 290
	i32 u0x50acdfd7, ; 293: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 280
	i32 u0x514d38cd, ; 294: System.IO => 58
	i32 u0x52114ed3, ; 295: Xamarin.AndroidX.SavedState => 250
	i32 u0x523dc4c1, ; 296: System.Resources.ResourceManager => 100
	i32 u0x533678bd, ; 297: lib_System.Private.CoreLib.dll.so => 173
	i32 u0x53701274, ; 298: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i32 u0x53936ab4, ; 299: System.Configuration.dll => 19
	i32 u0x53cefc50, ; 300: Xamarin.AndroidX.CoordinatorLayout => 210
	i32 u0x53f80ba6, ; 301: System.Runtime.Serialization.Formatters.dll => 112
	i32 u0x5423e47b, ; 302: System.Runtime.CompilerServices.Unsafe => 102
	i32 u0x54246761, ; 303: lib_System.Diagnostics.Tools.dll.so => 32
	i32 u0x5498bac9, ; 304: lib_Microsoft.VisualBasic.dll.so => 3
	i32 u0x54ca50cb, ; 305: System.Runtime.CompilerServices.VisualC => 103
	i32 u0x557217fe, ; 306: lib_System.Numerics.dll.so => 84
	i32 u0x557b5293, ; 307: System.Runtime.Handles => 105
	i32 u0x558bc221, ; 308: Xamarin.Google.Crypto.Tink.Android.dll => 267
	i32 u0x55ab7451, ; 309: Xamarin.AndroidX.Lifecycle.Common.Jvm => 227
	i32 u0x55d10363, ; 310: System.Net.Quic.dll => 72
	i32 u0x55dfaca3, ; 311: lib_Microsoft.Win32.Primitives.dll.so => 4
	i32 u0x55e55df2, ; 312: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 237
	i32 u0x568cd628, ; 313: System.Formats.Asn1.dll => 38
	i32 u0x569fcb36, ; 314: System.Diagnostics.Tools.dll => 32
	i32 u0x56c018af, ; 315: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i32 u0x56e36530, ; 316: System.Runtime.Extensions.dll => 104
	i32 u0x56e7a7ad, ; 317: System.Net.Security.dll => 74
	i32 u0x5718a9ef, ; 318: System.Collections.Immutable.dll => 9
	i32 u0x57201017, ; 319: System.Security.Cryptography.OpenSsl => 124
	i32 u0x57261233, ; 320: System.IO.Compression.dll => 46
	i32 u0x57924923, ; 321: Xamarin.AndroidX.AppCompat.AppCompatResources => 199
	i32 u0x57a5e912, ; 322: Microsoft.Extensions.Primitives => 183
	i32 u0x5833866d, ; 323: System.Collections.Immutable => 9
	i32 u0x583e844f, ; 324: System.IO.Compression.Brotli.dll => 43
	i32 u0x58a57897, ; 325: Microsoft.Win32.Primitives => 4
	i32 u0x58cffa99, ; 326: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 251
	i32 u0x58fd6613, ; 327: hi/Microsoft.Maui.Controls.resources.dll => 289
	i32 u0x596b5b3a, ; 328: lib_System.Drawing.Primitives.dll.so => 35
	i32 u0x5a48cf6c, ; 329: el/Microsoft.Maui.Controls.resources.dll => 284
	i32 u0x5b9331b6, ; 330: System.Diagnostics.TextWriterTraceListener => 31
	i32 u0x5be451c7, ; 331: lib_Xamarin.AndroidX.Browser.dll.so => 202
	i32 u0x5bf8ca0f, ; 332: System.Text.RegularExpressions.dll => 139
	i32 u0x5bfdbb43, ; 333: System.Reflection.Emit.dll => 93
	i32 u0x5c680b40, ; 334: System.Reflection.Extensions.dll => 94
	i32 u0x5c7be408, ; 335: sk/Microsoft.Maui.Controls.resources.dll => 304
	i32 u0x5cabc9a4, ; 336: fr/Microsoft.Maui.Controls.resources => 287
	i32 u0x5d552ab7, ; 337: System.IO.FileSystem.Primitives => 49
	i32 u0x5d5a6c40, ; 338: System.Threading.Tasks.Dataflow.dll => 142
	i32 u0x5dccd455, ; 339: System.Runtime.Serialization.Json => 113
	i32 u0x5e0b6fdc, ; 340: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 278
	i32 u0x5e2d7514, ; 341: System.Threading.Overlapped => 141
	i32 u0x5e2e3abe, ; 342: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i32 u0x5e33306d, ; 343: sv/Microsoft.Maui.Controls.resources => 305
	i32 u0x5e5114e2, ; 344: Xamarin.AndroidX.DocumentFile.dll => 216
	i32 u0x5e7321d2, ; 345: lib_System.ComponentModel.Primitives.dll.so => 16
	i32 u0x5ed5f779, ; 346: zh-Hant/Microsoft.Maui.Controls.resources => 312
	i32 u0x5ef2ee25, ; 347: System.Runtime.Serialization.dll => 116
	i32 u0x5f3ec4dd, ; 348: Xamarin.Google.ErrorProne.Annotations => 268
	i32 u0x5f6f0b5b, ; 349: System.Xml.Serialization => 158
	i32 u0x5f93db6e, ; 350: Microsoft.Maui.Controls.HotReload.Forms.dll => 313
	i32 u0x5fa7b851, ; 351: System.Net.WebClient => 77
	i32 u0x6078995d, ; 352: System.Net.WebSockets.Client.dll => 80
	i32 u0x60892624, ; 353: lib_System.Formats.Tar.dll.so => 39
	i32 u0x60b0136a, ; 354: Xamarin.AndroidX.Loader.dll => 240
	i32 u0x60b33958, ; 355: System.Dynamic.Runtime => 37
	i32 u0x60d97228, ; 356: Xamarin.AndroidX.ViewPager2 => 262
	i32 u0x60ec189c, ; 357: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 201
	i32 u0x6176eff7, ; 358: Xamarin.AndroidX.Emoji2.ViewsHelper => 220
	i32 u0x6188ba7e, ; 359: Xamarin.AndroidX.CursorAdapter => 213
	i32 u0x61b9038d, ; 360: System.Net.Http.dll => 65
	i32 u0x61c036ca, ; 361: System.Text.RegularExpressions => 139
	i32 u0x61d59e0e, ; 362: System.ComponentModel.EventBasedAsync.dll => 15
	i32 u0x62021776, ; 363: lib_System.IO.Compression.dll.so => 46
	i32 u0x620a8774, ; 364: lib_System.Xml.ReaderWriter.dll.so => 157
	i32 u0x625755ef, ; 365: lib_WindowsBase.dll.so => 166
	i32 u0x62c6282e, ; 366: System.Runtime => 117
	i32 u0x62cec1a2, ; 367: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 276
	i32 u0x62d6c1e4, ; 368: Xamarin.AndroidX.Tracing.Tracing.dll => 256
	i32 u0x62d6ea10, ; 369: Xamarin.Google.Android.Material.dll => 265
	i32 u0x638b1991, ; 370: Xamarin.AndroidX.ConstraintLayout => 208
	i32 u0x63dee9da, ; 371: System.IO.FileSystem.DriveInfo.dll => 48
	i32 u0x63fca3d0, ; 372: System.Net.Primitives.dll => 71
	i32 u0x640c0103, ; 373: System.Net.WebSockets => 81
	i32 u0x641f3e5a, ; 374: System.Security.Cryptography => 127
	i32 u0x64d1e4f5, ; 375: System.Reflection.Metadata => 95
	i32 u0x6525abc9, ; 376: System.Security.Cryptography.Csp => 122
	i32 u0x654b1498, ; 377: lib_System.Transactions.Local.dll.so => 150
	i32 u0x656b7698, ; 378: System.Diagnostics.Debug.dll => 26
	i32 u0x6670b12e, ; 379: lib_System.Security.AccessControl.dll.so => 118
	i32 u0x66888819, ; 380: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 230
	i32 u0x66e27484, ; 381: System.Reflection.dll => 98
	i32 u0x66ffb0f8, ; 382: System.Diagnostics.FileVersionInfo.dll => 28
	i32 u0x6715dc86, ; 383: Xamarin.AndroidX.CardView.dll => 203
	i32 u0x67577fe1, ; 384: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i32 u0x677cd287, ; 385: ro/Microsoft.Maui.Controls.resources.dll => 302
	i32 u0x67fe8db2, ; 386: System.Transactions.Local.dll => 150
	i32 u0x68139a0d, ; 387: System.IO.Pipelines.dll => 54
	i32 u0x6816ab6a, ; 388: Mono.Android.Export => 170
	i32 u0x6853a83d, ; 389: Microsoft.Win32.Primitives.dll => 4
	i32 u0x68cc9d1e, ; 390: System.Resources.Reader.dll => 99
	i32 u0x68f61ae4, ; 391: lib_System.Formats.Asn1.dll.so => 38
	i32 u0x690d4b7d, ; 392: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 312
	i32 u0x69239124, ; 393: System.Diagnostics.TraceSource.dll => 33
	i32 u0x693efa35, ; 394: lib_System.Net.WebHeaderCollection.dll.so => 78
	i32 u0x6942234e, ; 395: System.Reflection.Extensions => 94
	i32 u0x6947f945, ; 396: Xamarin.AndroidX.SwipeRefreshLayout => 255
	i32 u0x6988f147, ; 397: Microsoft.Extensions.Logging.dll => 179
	i32 u0x69ae5451, ; 398: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i32 u0x69dc03cc, ; 399: System.Core.dll => 21
	i32 u0x69ec0683, ; 400: System.Globalization.Extensions.dll => 41
	i32 u0x69f4f41d, ; 401: lib_Xamarin.AndroidX.AppCompat.dll.so => 198
	i32 u0x6a216153, ; 402: Mono.Android.Runtime.dll => 171
	i32 u0x6a539b49, ; 403: lib_System.Runtime.Extensions.dll.so => 104
	i32 u0x6a96652d, ; 404: Xamarin.AndroidX.Fragment => 222
	i32 u0x6afaf338, ; 405: lib_System.Threading.dll.so => 149
	i32 u0x6b645ada, ; 406: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 287
	i32 u0x6bcd3296, ; 407: Xamarin.AndroidX.Loader => 240
	i32 u0x6be1e423, ; 408: nb/Microsoft.Maui.Controls.resources => 297
	i32 u0x6c111525, ; 409: Xamarin.Kotlin.StdLib.dll => 271
	i32 u0x6c13413e, ; 410: Xamarin.Google.Android.Material => 265
	i32 u0x6c5562e0, ; 411: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 275
	i32 u0x6c652ce8, ; 412: Xamarin.AndroidX.Navigation.UI.dll => 245
	i32 u0x6c687fa7, ; 413: Microsoft.VisualBasic.Core => 2
	i32 u0x6c96614d, ; 414: hu/Microsoft.Maui.Controls.resources => 291
	i32 u0x6cbab720, ; 415: System.Text.Encoding.Extensions => 135
	i32 u0x6cc30c8c, ; 416: System.Runtime.Serialization.Formatters => 112
	i32 u0x6cea70ab, ; 417: Microsoft.VisualStudio.DesignTools.TapContract => 315
	i32 u0x6cf3d432, ; 418: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 260
	i32 u0x6cff90ba, ; 419: Microsoft.Extensions.Logging.Abstractions.dll => 180
	i32 u0x6dcaebf7, ; 420: uk/Microsoft.Maui.Controls.resources.dll => 308
	i32 u0x6e1ed932, ; 421: Xamarin.Android.Glide.Annotations => 190
	i32 u0x6ec71a65, ; 422: System.Linq.Expressions => 59
	i32 u0x6f7a29e4, ; 423: System.Reflection.Primitives => 96
	i32 u0x6fab02f2, ; 424: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 208
	i32 u0x7009e4c3, ; 425: System.Formats.Tar.dll => 39
	i32 u0x705fa726, ; 426: Xamarin.AndroidX.Arch.Core.Runtime.dll => 201
	i32 u0x7068d361, ; 427: Microsoft.VisualStudio.DesignTools.TapContract.dll => 315
	i32 u0x7070c6c0, ; 428: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 311
	i32 u0x70972b6d, ; 429: System.Diagnostics.Contracts => 25
	i32 u0x70a66bdd, ; 430: System.Reflection.Metadata.dll => 95
	i32 u0x7124cf39, ; 431: System.Reflection.DispatchProxy => 90
	i32 u0x71490522, ; 432: System.Resources.ResourceManager.dll => 100
	i32 u0x71dc7c8b, ; 433: System.Collections.NonGeneric.dll => 10
	i32 u0x72fcebde, ; 434: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 199
	i32 u0x731dd955, ; 435: lib_Mono.Android.dll.so => 172
	i32 u0x739bd4a8, ; 436: System.Private.Xml.Linq => 88
	i32 u0x73b20433, ; 437: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i32 u0x73fbecbe, ; 438: lib_System.Memory.dll.so => 63
	i32 u0x74126030, ; 439: lib_System.Net.WebClient.dll.so => 77
	i32 u0x74a1c5bb, ; 440: System.Resources.Writer => 101
	i32 u0x74d743bf, ; 441: ja/Microsoft.Maui.Controls.resources => 294
	i32 u0x74eee4ef, ; 442: Xamarin.AndroidX.Security.SecurityCrypto.dll => 252
	i32 u0x75533a5e, ; 443: Microsoft.Extensions.Configuration.dll => 175
	i32 u0x7593c33f, ; 444: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i32 u0x765c50a4, ; 445: Xamarin.Android.Glide.GifDecoder => 192
	i32 u0x77ec19b4, ; 446: System.Buffers.dll => 7
	i32 u0x781074ce, ; 447: hr/Microsoft.Maui.Controls.resources => 290
	i32 u0x784d3e49, ; 448: lib_System.Net.dll.so => 82
	i32 u0x785e97f1, ; 449: Xamarin.AndroidX.Lifecycle.ViewModel => 236
	i32 u0x78b622b1, ; 450: ar/Microsoft.Maui.Controls.resources.dll => 279
	i32 u0x790376c9, ; 451: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 196
	i32 u0x791a414b, ; 452: Xamarin.Android.Glide => 189
	i32 u0x7970be4f, ; 453: lib-he-Microsoft.Maui.Controls.resources.dll.so => 288
	i32 u0x79d00016, ; 454: it/Microsoft.Maui.Controls.resources => 293
	i32 u0x79eb68ee, ; 455: System.Private.Xml => 89
	i32 u0x7a80bd4e, ; 456: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 229
	i32 u0x7aca0819, ; 457: System.Windows.dll => 155
	i32 u0x7b350579, ; 458: lib__Microsoft.Android.Resource.Designer.dll.so => 316
	i32 u0x7b473a37, ; 459: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 223
	i32 u0x7b6f419e, ; 460: System.Diagnostics.TraceSource => 33
	i32 u0x7b8f6ff7, ; 461: lib_System.Runtime.Serialization.Json.dll.so => 113
	i32 u0x7bf8cdab, ; 462: System.Runtime.dll => 117
	i32 u0x7c51ebd4, ; 463: lib_System.Net.HttpListener.dll.so => 66
	i32 u0x7c9bf920, ; 464: System.Numerics.Vectors => 83
	i32 u0x7d702d52, ; 465: lib_System.Text.Encoding.dll.so => 136
	i32 u0x7ec9ffe9, ; 466: System.Console => 20
	i32 u0x7fb38cd2, ; 467: System.Collections.Specialized => 11
	i32 u0x7fc7a41e, ; 468: System.Xml.XmlSerializer.dll => 163
	i32 u0x7fd90a71, ; 469: lib_System.Text.Encoding.CodePages.dll.so => 134
	i32 u0x7fdcdc37, ; 470: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 295
	i32 u0x7ff65cf5, ; 471: Microsoft.VisualBasic.dll => 3
	i32 u0x802a7166, ; 472: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i32 u0x8030853e, ; 473: ko/Microsoft.Maui.Controls.resources => 295
	i32 u0x8044e1bd, ; 474: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 296
	i32 u0x8081c489, ; 475: lib_Jsr305Binding.dll.so => 266
	i32 u0x80bd55ad, ; 476: Microsoft.Maui => 186
	i32 u0x80f2f56e, ; 477: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i32 u0x810c11c2, ; 478: ro/Microsoft.Maui.Controls.resources => 302
	i32 u0x8115bdf3, ; 479: lib_System.Resources.ResourceManager.dll.so => 100
	i32 u0x816751d8, ; 480: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i32 u0x81a110ae, ; 481: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i32 u0x820d22b3, ; 482: Microsoft.Extensions.Options.dll => 182
	i32 u0x82364da2, ; 483: lib_System.Buffers.dll.so => 7
	i32 u0x82a8237c, ; 484: Microsoft.Extensions.Logging.Abstractions => 180
	i32 u0x82b6c85e, ; 485: System.ObjectModel.dll => 85
	i32 u0x82bb5429, ; 486: lib_System.Linq.Expressions.dll.so => 59
	i32 u0x82c1cf3e, ; 487: lib_System.Net.Quic.dll.so => 72
	i32 u0x832ec206, ; 488: lib_System.Diagnostics.StackTrace.dll.so => 30
	i32 u0x83323b38, ; 489: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 276
	i32 u0x8334206b, ; 490: System.Net.Http => 65
	i32 u0x842e93b2, ; 491: Xamarin.AndroidX.VectorDrawable.Animated.dll => 259
	i32 u0x8471e4ec, ; 492: System.Threading.Tasks.Parallel => 144
	i32 u0x857e4dd2, ; 493: lib_System.Net.WebSockets.dll.so => 81
	i32 u0x85cc8d80, ; 494: Xamarin.AndroidX.LocalBroadcastManager => 241
	i32 u0x8628f1a4, ; 495: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 303
	i32 u0x863c6ac5, ; 496: System.Xml.Serialization.dll => 158
	i32 u0x867c9c52, ; 497: System.Globalization.Extensions => 41
	i32 u0x86b0fd78, ; 498: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 238
	i32 u0x86bba59b, ; 499: lib_Microsoft.Maui.Controls.dll.so => 184
	i32 u0x8702d9a2, ; 500: System.Security.AccessControl.dll => 118
	i32 u0x871c9c1b, ; 501: Microsoft.Extensions.Configuration.Abstractions => 176
	i32 u0x872eeb7b, ; 502: Xamarin.Android.Glide.DiskLruCache.dll => 191
	i32 u0x875633cc, ; 503: fr/Microsoft.Maui.Controls.resources.dll => 287
	i32 u0x87a1a22b, ; 504: lib-it-Microsoft.Maui.Controls.resources.dll.so => 293
	i32 u0x87e25095, ; 505: Xamarin.AndroidX.RecyclerView.dll => 248
	i32 u0x87e7fdbb, ; 506: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 298
	i32 u0x881f94da, ; 507: lib_netstandard.dll.so => 168
	i32 u0x8873eb17, ; 508: th/Microsoft.Maui.Controls.resources => 306
	i32 u0x887ae6a1, ; 509: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 233
	i32 u0x88acefcd, ; 510: System.ServiceModel.Web.dll => 132
	i32 u0x88d8bfaa, ; 511: System.Net.Sockets => 76
	i32 u0x88ffe49e, ; 512: System.Net.Mail => 67
	i32 u0x896b7878, ; 513: System.Private.CoreLib.dll => 173
	i32 u0x8a068af2, ; 514: Xamarin.AndroidX.Annotation.dll => 195
	i32 u0x8a52059a, ; 515: System.Threading.Tasks.Parallel.dll => 144
	i32 u0x8a92797b, ; 516: lib_Xamarin.AndroidX.DocumentFile.dll.so => 216
	i32 u0x8b804dbf, ; 517: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i32 u0x8bbaa2cd, ; 518: System.ValueTuple => 152
	i32 u0x8c20c628, ; 519: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 286
	i32 u0x8c20f140, ; 520: lib_System.Console.dll.so => 20
	i32 u0x8c40e0db, ; 521: System.Net.Primitives => 71
	i32 u0x8d19e4a2, ; 522: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 228
	i32 u0x8d24e767, ; 523: System.Xml.ReaderWriter.dll => 157
	i32 u0x8d3fac99, ; 524: tr/Microsoft.Maui.Controls.resources => 307
	i32 u0x8d52b2e2, ; 525: Microsoft.Extensions.Configuration => 175
	i32 u0x8d52d3de, ; 526: lib_System.Threading.Tasks.dll.so => 145
	i32 u0x8dc6dbce, ; 527: System.Security.Cryptography.Csp.dll => 122
	i32 u0x8dcb0101, ; 528: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 243
	i32 u0x8e02310f, ; 529: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 279
	i32 u0x8e114655, ; 530: System.Security.Principal.Windows.dll => 128
	i32 u0x8f24faee, ; 531: System.Web.HttpUtility => 153
	i32 u0x8f41c524, ; 532: Xamarin.AndroidX.Emoji2.dll => 219
	i32 u0x8f4e087a, ; 533: lib_System.Web.dll.so => 154
	i32 u0x8f8c64e2, ; 534: lib_System.Private.Xml.dll.so => 89
	i32 u0x8fa56e96, ; 535: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 314
	i32 u0x905355ed, ; 536: System.Threading.Tasks.Dataflow => 142
	i32 u0x905caa9d, ; 537: nl/Microsoft.Maui.Controls.resources => 298
	i32 u0x906d466b, ; 538: Xamarin.AndroidX.Collection.Ktx.dll => 206
	i32 u0x90e50509, ; 539: lib_System.Reflection.Primitives.dll.so => 96
	i32 u0x911615a7, ; 540: lib_Xamarin.AndroidX.Fragment.dll.so => 222
	i32 u0x912896e5, ; 541: System.Console.dll => 20
	i32 u0x9130f5e7, ; 542: System.ComponentModel.DataAnnotations.dll => 14
	i32 u0x91abdf3a, ; 543: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 254
	i32 u0x924edee6, ; 544: System.Text.Encoding.dll => 136
	i32 u0x928c75ca, ; 545: System.Net.Sockets.dll => 76
	i32 u0x92916334, ; 546: System.Linq.Parallel.dll => 60
	i32 u0x92f50938, ; 547: Xamarin.AndroidX.ConstraintLayout.Core.dll => 209
	i32 u0x93554fdc, ; 548: netstandard.dll => 168
	i32 u0x93634cc0, ; 549: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 230
	i32 u0x93918882, ; 550: Java.Interop.dll => 169
	i32 u0x93dba8a1, ; 551: Microsoft.Maui.Controls => 184
	i32 u0x940d5c2f, ; 552: System.ComponentModel.EventBasedAsync => 15
	i32 u0x94147f61, ; 553: System.Net.ServicePoint => 75
	i32 u0x9438d78e, ; 554: lib_System.Text.Json.dll.so => 138
	i32 u0x9469ba86, ; 555: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 232
	i32 u0x94798bc5, ; 556: System.AppContext.dll => 6
	i32 u0x94a1db18, ; 557: lib-id-Microsoft.Maui.Controls.resources.dll.so => 292
	i32 u0x94fad8e5, ; 558: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 194
	i32 u0x95178668, ; 559: System.Data.DataSetExtensions => 23
	i32 u0x955cf248, ; 560: Xamarin.AndroidX.Lifecycle.Runtime.dll => 232
	i32 u0x9593ae7f, ; 561: lib_Xamarin.AndroidX.SavedState.dll.so => 250
	i32 u0x963ac2da, ; 562: sk/Microsoft.Maui.Controls.resources => 304
	i32 u0x9659e17c, ; 563: Xamarin.Android.Glide.dll => 189
	i32 u0x96bea474, ; 564: lib_Microsoft.Maui.Controls.Xaml.dll.so => 185
	i32 u0x974b89a2, ; 565: System.Reflection.Emit.Lightweight.dll => 92
	i32 u0x98ba5a04, ; 566: Microsoft.CSharp => 1
	i32 u0x9930ee42, ; 567: System.Text.Encodings.Web => 137
	i32 u0x999dcf0d, ; 568: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 235
	i32 u0x99e2e424, ; 569: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 234
	i32 u0x99e370f2, ; 570: Xamarin.AndroidX.VectorDrawable.dll => 258
	i32 u0x9a1756ac, ; 571: System.Text.Encoding.Extensions.dll => 135
	i32 u0x9a20430d, ; 572: System.Net.Ping => 70
	i32 u0x9a5a3337, ; 573: System.Threading.ThreadPool => 147
	i32 u0x9b24ab96, ; 574: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i32 u0x9b500441, ; 575: Xamarin.KotlinX.Coroutines.Core.Jvm => 276
	i32 u0x9b5e5b1c, ; 576: lib_System.Diagnostics.Contracts.dll.so => 25
	i32 u0x9be14c08, ; 577: Xamarin.AndroidX.Fragment.Ktx => 223
	i32 u0x9bf052c1, ; 578: Microsoft.Extensions.Logging.Debug.dll => 181
	i32 u0x9bfe3a41, ; 579: System.Private.Xml.dll => 89
	i32 u0x9c165ff9, ; 580: System.Reflection.TypeExtensions.dll => 97
	i32 u0x9c375496, ; 581: Xamarin.AndroidX.CursorAdapter.dll => 213
	i32 u0x9c70e6c9, ; 582: Xamarin.AndroidX.DynamicAnimation => 218
	i32 u0x9c96ac4c, ; 583: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 245
	i32 u0x9c97ad4a, ; 584: System.Diagnostics.TextWriterTraceListener.dll => 31
	i32 u0x9cc03a58, ; 585: System.IO.Compression.ZipFile.dll => 45
	i32 u0x9cd341b2, ; 586: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i32 u0x9cf12c56, ; 587: Xamarin.AndroidX.Lifecycle.LiveData => 228
	i32 u0x9e78dac1, ; 588: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 239
	i32 u0x9ec022c0, ; 589: Xamarin.Android.Glide.DiskLruCache => 191
	i32 u0x9ec4cf01, ; 590: System.Runtime.Loader => 110
	i32 u0x9ecf752a, ; 591: System.Xml.XDocument.dll => 159
	i32 u0x9ee22cc0, ; 592: System.Drawing.Primitives => 35
	i32 u0x9f3b757e, ; 593: Xamarin.KotlinX.Coroutines.Core => 275
	i32 u0x9f7ea921, ; 594: lib_System.Runtime.InteropServices.dll.so => 108
	i32 u0x9f8c6f40, ; 595: System.Data.Common.dll => 22
	i32 u0xa026a50c, ; 596: System.Runtime.Serialization.Xml.dll => 115
	i32 u0xa090e36a, ; 597: System.IO.dll => 58
	i32 u0xa0fb56af, ; 598: lib_System.Text.RegularExpressions.dll.so => 139
	i32 u0xa0ff7514, ; 599: Xamarin.AndroidX.Tracing.Tracing => 256
	i32 u0xa1d8b647, ; 600: System.Threading.Tasks.dll => 145
	i32 u0xa1fd7d9f, ; 601: System.Security.Claims => 119
	i32 u0xa21f5a1f, ; 602: System.Security.Cryptography.Cng.dll => 121
	i32 u0xa25c90e5, ; 603: lib_Xamarin.AndroidX.Core.dll.so => 211
	i32 u0xa262a30f, ; 604: System.Runtime.Numerics.dll => 111
	i32 u0xa2ce8457, ; 605: lib-es-Microsoft.Maui.Controls.resources.dll.so => 285
	i32 u0xa2e0939b, ; 606: Xamarin.AndroidX.Activity => 193
	i32 u0xa30769e5, ; 607: System.Threading.Channels => 140
	i32 u0xa32eb6f0, ; 608: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 199
	i32 u0xa35f8f92, ; 609: System.IO.Pipes.AccessControl => 55
	i32 u0xa3c818c7, ; 610: lib_System.Net.WebSockets.Client.dll.so => 80
	i32 u0xa3cc7fa7, ; 611: System.Runtime.InteropServices.JavaScript => 106
	i32 u0xa4672f3b, ; 612: Microsoft.Maui.Controls.Xaml => 185
	i32 u0xa493aa02, ; 613: lib_System.Collections.Concurrent.dll.so => 8
	i32 u0xa4caf7a7, ; 614: Microsoft.Maui.dll => 186
	i32 u0xa4d4aaf8, ; 615: lib_System.Security.Cryptography.Cng.dll.so => 121
	i32 u0xa4db22c6, ; 616: System.Text.Encoding.CodePages.dll => 134
	i32 u0xa4e79dfd, ; 617: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 237
	i32 u0xa522693c, ; 618: Xamarin.Jetbrains.Annotations.dll => 270
	i32 u0xa52ac270, ; 619: lib_Xamarin.AndroidX.Window.dll.so => 263
	i32 u0xa553c739, ; 620: lib_System.ValueTuple.dll.so => 152
	i32 u0xa5a0a402, ; 621: Xamarin.AndroidX.ViewPager.dll => 261
	i32 u0xa5b3182d, ; 622: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 249
	i32 u0xa5b67c07, ; 623: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 227
	i32 u0xa5c5753c, ; 624: lib_System.Collections.Immutable.dll.so => 9
	i32 u0xa5ea80d9, ; 625: lib_Xamarin.Android.Glide.Annotations.dll.so => 190
	i32 u0xa6133c7f, ; 626: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i32 u0xa630ecdd, ; 627: Xamarin.AndroidX.Fragment.Ktx.dll => 223
	i32 u0xa668c988, ; 628: lib_System.Net.NameResolution.dll.so => 68
	i32 u0xa7008e0b, ; 629: Microsoft.Maui.Graphics => 188
	i32 u0xa7042ae3, ; 630: uk/Microsoft.Maui.Controls.resources => 308
	i32 u0xa715dd7e, ; 631: System.Xml.XPath.XDocument.dll => 160
	i32 u0xa741ef0b, ; 632: es/Microsoft.Maui.Controls.resources.dll => 285
	i32 u0xa744f665, ; 633: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 244
	i32 u0xa78103bc, ; 634: Xamarin.AndroidX.CoordinatorLayout.dll => 210
	i32 u0xa8032c67, ; 635: lib_Microsoft.Win32.Registry.dll.so => 5
	i32 u0xa80db4e1, ; 636: System.Xml.dll => 164
	i32 u0xa81b119f, ; 637: lib_System.Security.Cryptography.dll.so => 127
	i32 u0xa8282c09, ; 638: System.ServiceProcess.dll => 133
	i32 u0xa8298928, ; 639: Xamarin.AndroidX.ResourceInspection.Annotation => 249
	i32 u0xa85a7b6c, ; 640: System.Xml.XmlDocument => 162
	i32 u0xa8c61dcb, ; 641: nl/Microsoft.Maui.Controls.resources.dll => 298
	i32 u0xa9379a4f, ; 642: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 238
	i32 u0xa9d96f9b, ; 643: System.Threading.Overlapped.dll => 141
	i32 u0xaa107fc4, ; 644: Xamarin.AndroidX.ViewPager => 261
	i32 u0xaa2b531f, ; 645: lib_System.Globalization.dll.so => 42
	i32 u0xaa36a797, ; 646: Xamarin.AndroidX.Transition => 257
	i32 u0xaa4e51ff, ; 647: el/Microsoft.Maui.Controls.resources => 284
	i32 u0xaa88e550, ; 648: Mono.Android.Export.dll => 170
	i32 u0xaa8a4878, ; 649: Microsoft.Maui.Essentials => 187
	i32 u0xab123e9a, ; 650: Xamarin.AndroidX.Activity.Ktx.dll => 194
	i32 u0xab5f85c3, ; 651: Jsr305Binding.dll => 266
	i32 u0xab606289, ; 652: System.Globalization.Calendars.dll => 40
	i32 u0xabbc23e8, ; 653: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 278
	i32 u0xabdea79a, ; 654: ru/Microsoft.Maui.Controls.resources => 303
	i32 u0xabf58099, ; 655: Xamarin.AndroidX.ExifInterface => 221
	i32 u0xac1dd496, ; 656: System.Net.dll => 82
	i32 u0xacd6baa9, ; 657: System.IO.UnmanagedMemoryStream => 57
	i32 u0xace3f9b4, ; 658: System.Dynamic.Runtime.dll => 37
	i32 u0xace7ba82, ; 659: lib_System.Security.Principal.Windows.dll.so => 128
	i32 u0xacf080de, ; 660: System.Reflection => 98
	i32 u0xad2a79b6, ; 661: mscorlib.dll => 167
	i32 u0xad6f1e8a, ; 662: System.Private.CoreLib => 173
	i32 u0xad90894d, ; 663: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 277
	i32 u0xaddb6d38, ; 664: Xamarin.AndroidX.ViewPager2.dll => 262
	i32 u0xae037813, ; 665: System.Numerics.Vectors.dll => 83
	i32 u0xae1ce33f, ; 666: Xamarin.AndroidX.Annotation.Experimental.dll => 196
	i32 u0xaeb2d8a5, ; 667: lib_Microsoft.Extensions.Options.dll.so => 182
	i32 u0xaf06273c, ; 668: System.Resources.Reader => 99
	i32 u0xaf3a6b91, ; 669: lib_System.Diagnostics.Debug.dll.so => 26
	i32 u0xaf4af872, ; 670: System.Diagnostics.StackTrace.dll => 30
	i32 u0xaf624531, ; 671: System.Xml.XPath.XDocument => 160
	i32 u0xaf8b1081, ; 672: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 251
	i32 u0xb0682092, ; 673: System.ComponentModel.dll => 18
	i32 u0xb0ed41f3, ; 674: System.Security.Principal.Windows => 128
	i32 u0xb128f886, ; 675: System.Security.Cryptography.Algorithms.dll => 120
	i32 u0xb18af942, ; 676: Xamarin.AndroidX.DrawerLayout => 217
	i32 u0xb1a434a2, ; 677: lib_System.Xml.Linq.dll.so => 156
	i32 u0xb1a7d210, ; 678: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 235
	i32 u0xb21220a3, ; 679: Xamarin.AndroidX.Security.SecurityCrypto => 252
	i32 u0xb223fa8c, ; 680: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 281
	i32 u0xb28cab85, ; 681: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 191
	i32 u0xb294d40b, ; 682: lib_System.Net.Ping.dll.so => 70
	i32 u0xb2a03f9f, ; 683: Xamarin.AndroidX.Lifecycle.Process.dll => 231
	i32 u0xb3d3821c, ; 684: Xamarin.AndroidX.Startup.StartupRuntime => 254
	i32 u0xb434b64b, ; 685: WindowsBase.dll => 166
	i32 u0xb443fdf2, ; 686: Xamarin.AndroidX.Legacy.Support.Core.Utils => 225
	i32 u0xb514b305, ; 687: _Microsoft.Android.Resource.Designer.dll => 316
	i32 u0xb58d85d9, ; 688: lib_System.Runtime.Handles.dll.so => 105
	i32 u0xb62a9ccb, ; 689: Xamarin.AndroidX.SavedState.SavedState.Ktx => 251
	i32 u0xb63fa9f0, ; 690: Xamarin.AndroidX.Navigation.Common => 242
	i32 u0xb6490b5e, ; 691: lib_Mono.Android.Export.dll.so => 170
	i32 u0xb65adef9, ; 692: Mono.Android.Runtime => 171
	i32 u0xb660be12, ; 693: System.ComponentModel.Primitives => 16
	i32 u0xb6a153b2, ; 694: lib_Xamarin.AndroidX.ViewPager2.dll.so => 262
	i32 u0xb70c6fb4, ; 695: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 258
	i32 u0xb755818f, ; 696: System.Threading.Tasks => 145
	i32 u0xb76be845, ; 697: hu/Microsoft.Maui.Controls.resources.dll => 291
	i32 u0xb7e7c341, ; 698: lib_System.Globalization.Calendars.dll.so => 40
	i32 u0xb838e2b0, ; 699: System.Security.Cryptography.X509Certificates.dll => 126
	i32 u0xb8c22b7f, ; 700: System.Security.Claims.dll => 119
	i32 u0xb8fd311b, ; 701: System.Formats.Asn1 => 38
	i32 u0xb979e222, ; 702: System.Runtime.Serialization => 116
	i32 u0xba0dbf1c, ; 703: System.IO.FileSystem.AccessControl.dll => 47
	i32 u0xba4127cb, ; 704: System.Threading.Tasks.Extensions => 143
	i32 u0xbaa520e7, ; 705: lib_System.ObjectModel.dll.so => 85
	i32 u0xbab301d1, ; 706: System.Security.AccessControl => 118
	i32 u0xbb95ee37, ; 707: System.Diagnostics.Tracing.dll => 34
	i32 u0xbba64c02, ; 708: GoogleGson.dll => 174
	i32 u0xbc4c6465, ; 709: System.Reflection.Primitives.dll => 96
	i32 u0xbc652da7, ; 710: System.IO.MemoryMappedFiles => 53
	i32 u0xbc98c93d, ; 711: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 205
	i32 u0xbcc610a0, ; 712: lib_System.Reflection.Metadata.dll.so => 95
	i32 u0xbd113355, ; 713: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 242
	i32 u0xbd78b0c8, ; 714: Xamarin.AndroidX.Navigation.Fragment.dll => 243
	i32 u0xbddce8a2, ; 715: lib_System.Security.Principal.dll.so => 129
	i32 u0xbe3f07c2, ; 716: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i32 u0xbe4755f4, ; 717: System.Security.SecureString => 130
	i32 u0xbe592c0c, ; 718: System.Web => 154
	i32 u0xbefef58f, ; 719: System.Data.dll => 24
	i32 u0xbf506931, ; 720: System.Xml.XmlDocument.dll => 162
	i32 u0xbf6fd745, ; 721: Xamarin.AndroidX.DocumentFile => 216
	i32 u0xbff2e236, ; 722: System.Threading => 149
	i32 u0xc04c3c0a, ; 723: System.Runtime.Handles.dll => 105
	i32 u0xc095e070, ; 724: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 226
	i32 u0xc1c6ebf4, ; 725: System.Reflection.DispatchProxy.dll => 90
	i32 u0xc217efb6, ; 726: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 209
	i32 u0xc235e84d, ; 727: Xamarin.AndroidX.CardView => 203
	i32 u0xc2a37b91, ; 728: System.Linq.Queryable.dll => 61
	i32 u0xc2a993fa, ; 729: System.Threading.Tasks.Extensions.dll => 143
	i32 u0xc3428433, ; 730: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i32 u0xc35f7fa4, ; 731: System.Resources.Writer.dll => 101
	i32 u0xc37f65ce, ; 732: Microsoft.Win32.Registry.dll => 5
	i32 u0xc3888e16, ; 733: System.ComponentModel.Annotations.dll => 13
	i32 u0xc3ba1d80, ; 734: lib_System.Security.Cryptography.Csp.dll.so => 122
	i32 u0xc4251ff9, ; 735: System.Security.Cryptography.Encoding => 123
	i32 u0xc4684d9e, ; 736: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i32 u0xc4a8494a, ; 737: System.Text.Encoding => 136
	i32 u0xc4e76306, ; 738: System.Diagnostics.FileVersionInfo => 28
	i32 u0xc591efe9, ; 739: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 176
	i32 u0xc5b097e4, ; 740: System.Net.Requests.dll => 73
	i32 u0xc5b776df, ; 741: Xamarin.AndroidX.CustomView.dll => 214
	i32 u0xc5b79d28, ; 742: System.Data => 24
	i32 u0xc69f3b41, ; 743: lib_System.Data.dll.so => 24
	i32 u0xc71af05d, ; 744: Xamarin.AndroidX.Arch.Core.Runtime => 201
	i32 u0xc76e512c, ; 745: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 247
	i32 u0xc774da4f, ; 746: Xamarin.AndroidX.Navigation.Runtime => 244
	i32 u0xc7a3b0f0, ; 747: lib_Xamarin.AndroidX.Transition.dll.so => 257
	i32 u0xc7b797d0, ; 748: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 212
	i32 u0xc821fc10, ; 749: lib_System.ComponentModel.dll.so => 18
	i32 u0xc82afec1, ; 750: System.Text.Json => 138
	i32 u0xc8693088, ; 751: Xamarin.AndroidX.Activity.Ktx => 194
	i32 u0xc86c06e3, ; 752: Xamarin.AndroidX.Core => 211
	i32 u0xc8a662e9, ; 753: Java.Interop => 169
	i32 u0xc8d10307, ; 754: lib_System.Diagnostics.TraceSource.dll.so => 33
	i32 u0xc92a6809, ; 755: Xamarin.AndroidX.RecyclerView => 248
	i32 u0xca5de1fa, ; 756: System.Runtime.CompilerServices.Unsafe.dll => 102
	i32 u0xcae37e41, ; 757: System.Security.Cryptography.OpenSsl.dll => 124
	i32 u0xcaf7bd4b, ; 758: Xamarin.AndroidX.CustomView.PoolingContainer => 215
	i32 u0xcb5af55c, ; 759: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i32 u0xcc5af6ee, ; 760: Microsoft.Extensions.DependencyInjection.dll => 177
	i32 u0xcc6479a0, ; 761: System.Xml => 164
	i32 u0xcc7d82b4, ; 762: netstandard => 168
	i32 u0xcd1dd0db, ; 763: Xamarin.AndroidX.DynamicAnimation.dll => 218
	i32 u0xcd5a809f, ; 764: System.Formats.Tar => 39
	i32 u0xcdd8cd54, ; 765: lib_Xamarin.AndroidX.Emoji2.dll.so => 219
	i32 u0xce3fa116, ; 766: lib_System.Diagnostics.Process.dll.so => 29
	i32 u0xce70fda2, ; 767: hr/Microsoft.Maui.Controls.resources.dll => 290
	i32 u0xcef19b37, ; 768: System.ComponentModel.TypeConverter.dll => 17
	i32 u0xcf3163e6, ; 769: Mono.Android => 172
	i32 u0xcf663a21, ; 770: ru/Microsoft.Maui.Controls.resources.dll => 303
	i32 u0xcfa20c36, ; 771: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 255
	i32 u0xcfbaacae, ; 772: System.Text.Json.dll => 138
	i32 u0xcfd0c798, ; 773: System.Transactions => 151
	i32 u0xd0418592, ; 774: Xamarin.AndroidX.Concurrent.Futures.dll => 207
	i32 u0xd0f73226, ; 775: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 273
	i32 u0xd128d608, ; 776: System.Xml.Linq => 156
	i32 u0xd1854eb4, ; 777: System.Security.dll => 131
	i32 u0xd2757232, ; 778: System.Configuration => 19
	i32 u0xd2ff69f1, ; 779: System.Net.HttpListener => 66
	i32 u0xd310c033, ; 780: lib_Xamarin.Jetbrains.Annotations.dll.so => 270
	i32 u0xd328ac54, ; 781: vi/Microsoft.Maui.Controls.resources => 309
	i32 u0xd4045e1b, ; 782: lib_System.dll.so => 165
	i32 u0xd404ddfe, ; 783: lib_System.Runtime.Intrinsics.dll.so => 109
	i32 u0xd432d20b, ; 784: System.Threading.Timer => 148
	i32 u0xd457e5c9, ; 785: lib_Microsoft.CSharp.dll.so => 1
	i32 u0xd47cb45a, ; 786: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 200
	i32 u0xd496c3c3, ; 787: lib_Xamarin.AndroidX.ExifInterface.dll.so => 221
	i32 u0xd4d2575b, ; 788: System.IO.FileSystem.AccessControl => 47
	i32 u0xd505225a, ; 789: lib_System.Xml.XPath.dll.so => 161
	i32 u0xd622b752, ; 790: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 302
	i32 u0xd664cdf2, ; 791: de/Microsoft.Maui.Controls.resources => 283
	i32 u0xd6665034, ; 792: Xamarin.Android.Glide.GifDecoder.dll => 192
	i32 u0xd67a52b3, ; 793: System.Net.WebSockets.Client => 80
	i32 u0xd715a361, ; 794: System.Linq.dll => 62
	i32 u0xd7f95f5a, ; 795: da/Microsoft.Maui.Controls.resources => 282
	i32 u0xd804d57a, ; 796: System.Runtime.InteropServices.RuntimeInformation => 107
	i32 u0xd832fda6, ; 797: Xamarin.AndroidX.Print.dll => 246
	i32 u0xd889aee8, ; 798: lib_System.Threading.Channels.dll.so => 140
	i32 u0xd8950487, ; 799: Xamarin.AndroidX.Annotation.Experimental => 196
	i32 u0xd8bba49d, ; 800: lib_Xamarin.AndroidX.RecyclerView.dll.so => 248
	i32 u0xd8dbab5d, ; 801: System.IO.FileSystem.Primitives.dll => 49
	i32 u0xd90e5f5a, ; 802: Xamarin.AndroidX.Lifecycle.LiveData.Core => 229
	i32 u0xd92e86f1, ; 803: Xamarin.KotlinX.Serialization.Core.dll => 277
	i32 u0xd930cda0, ; 804: Xamarin.AndroidX.Navigation.Fragment => 243
	i32 u0xd943a729, ; 805: System.ComponentModel.DataAnnotations => 14
	i32 u0xd96cf6f7, ; 806: pt-BR/Microsoft.Maui.Controls.resources => 300
	i32 u0xd9f65f5e, ; 807: lib-el-Microsoft.Maui.Controls.resources.dll.so => 284
	i32 u0xd9fdda56, ; 808: Microsoft.Extensions.Configuration.Abstractions.dll => 176
	i32 u0xda2f27df, ; 809: System.Net.NetworkInformation => 69
	i32 u0xda4773dd, ; 810: he/Microsoft.Maui.Controls.resources => 288
	i32 u0xdabf74ac, ; 811: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 197
	i32 u0xdae8aa5e, ; 812: Mono.Android.dll => 172
	i32 u0xdb258bb2, ; 813: Microsoft.Maui.Controls.HotReload.Forms => 313
	i32 u0xdb7f7e5d, ; 814: Xamarin.AndroidX.Browser => 202
	i32 u0xdb9df1ce, ; 815: Xamarin.AndroidX.Concurrent.Futures => 207
	i32 u0xdbb50d93, ; 816: ms/Microsoft.Maui.Controls.resources => 296
	i32 u0xdc5370c5, ; 817: lib_System.Web.HttpUtility.dll.so => 153
	i32 u0xdc68940c, ; 818: zh-Hant/Microsoft.Maui.Controls.resources.dll => 312
	i32 u0xdc96bdf5, ; 819: System.Net.WebProxy.dll => 79
	i32 u0xdcefb51d, ; 820: Xamarin.AndroidX.Core.Core.Ktx.dll => 212
	i32 u0xdd864306, ; 821: System.Runtime.Intrinsics => 109
	i32 u0xdda814c6, ; 822: Xamarin.AndroidX.Annotation => 195
	i32 u0xde068c70, ; 823: Xamarin.AndroidX.Navigation.Common.dll => 242
	i32 u0xde7354ab, ; 824: System.Net.NameResolution => 68
	i32 u0xdecad304, ; 825: System.Net.Http.Json.dll => 64
	i32 u0xdf1b1ecd, ; 826: lib_System.ServiceProcess.dll.so => 133
	i32 u0xdf6f3870, ; 827: System.Diagnostics.DiagnosticSource => 27
	i32 u0xdf9a7f42, ; 828: System.Xml.XPath => 161
	i32 u0xdfd65a5d, ; 829: lib_System.Diagnostics.Tracing.dll.so => 34
	i32 u0xe05b6245, ; 830: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 235
	i32 u0xe082f700, ; 831: lib_Xamarin.AndroidX.Print.dll.so => 246
	i32 u0xe12f62fc, ; 832: lib_System.Threading.ThreadPool.dll.so => 147
	i32 u0xe13414bb, ; 833: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 291
	i32 u0xe1a41194, ; 834: lib_System.Xml.XDocument.dll.so => 159
	i32 u0xe1ae15d6, ; 835: Xamarin.AndroidX.Collection => 204
	i32 u0xe1eea3e4, ; 836: lib_System.IO.Compression.ZipFile.dll.so => 45
	i32 u0xe1f0a5d8, ; 837: lib_Xamarin.AndroidX.ViewPager.dll.so => 261
	i32 u0xe2098b0b, ; 838: System.Collections.NonGeneric => 10
	i32 u0xe250cda6, ; 839: lib_Microsoft.Extensions.Logging.dll.so => 179
	i32 u0xe2513246, ; 840: lib_System.Runtime.Numerics.dll.so => 111
	i32 u0xe27c1b41, ; 841: lib_Xamarin.KotlinX.AtomicFU.dll.so => 272
	i32 u0xe2a3f2e8, ; 842: System.Collections.Specialized.dll => 11
	i32 u0xe34ee011, ; 843: lib_System.IO.Pipelines.dll.so => 54
	i32 u0xe3774f52, ; 844: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i32 u0xe3a54a09, ; 845: System.Net.WebProxy => 79
	i32 u0xe3c7860c, ; 846: lib_System.Security.Claims.dll.so => 119
	i32 u0xe3df9d2b, ; 847: System.Security.Cryptography.dll => 127
	i32 u0xe4436460, ; 848: System.Numerics.dll => 84
	i32 u0xe4873adf, ; 849: lib_AppNumeroDaSorte.dll.so => 0
	i32 u0xe4fab729, ; 850: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 178
	i32 u0xe52378b9, ; 851: System.Net.Mail.dll => 67
	i32 u0xe56ef253, ; 852: System.Runtime.InteropServices.dll => 108
	i32 u0xe625b819, ; 853: lib_Xamarin.AndroidX.CardView.dll.so => 203
	i32 u0xe6b14171, ; 854: System.Net.HttpListener.dll => 66
	i32 u0xe6ca3640, ; 855: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 206
	i32 u0xe6e179fa, ; 856: System.Security.Principal => 129
	i32 u0xe6f98713, ; 857: System.Security.Cryptography.Encoding.dll => 123
	i32 u0xe797fcc1, ; 858: System.Net.WebHeaderCollection.dll => 78
	i32 u0xe79e77a6, ; 859: Xamarin.AndroidX.Transition.dll => 257
	i32 u0xe7c9e2bd, ; 860: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 247
	i32 u0xe7dc15ff, ; 861: zh-Hans/Microsoft.Maui.Controls.resources.dll => 311
	i32 u0xe839deed, ; 862: System.Collections.Concurrent.dll => 8
	i32 u0xe843daa0, ; 863: Xamarin.AndroidX.Core.dll => 211
	i32 u0xe89260c1, ; 864: Microsoft.VisualBasic.Core.dll => 2
	i32 u0xe90fdb70, ; 865: Xamarin.AndroidX.Collection.Jvm => 205
	i32 u0xe92ace5f, ; 866: lib_System.Linq.Parallel.dll.so => 60
	i32 u0xe99f7d24, ; 867: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 307
	i32 u0xe9b2d35e, ; 868: System.IO.Compression.FileSystem.dll => 44
	i32 u0xe9b630ed, ; 869: Xamarin.AndroidX.VersionedParcelable.dll => 260
	i32 u0xea0092d6, ; 870: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i32 u0xea213423, ; 871: System.Xml.ReaderWriter => 157
	i32 u0xea4780ec, ; 872: System.Security.Principal.dll => 129
	i32 u0xea4fb52e, ; 873: Xamarin.AndroidX.Navigation.UI => 245
	i32 u0xeab81858, ; 874: lib_Microsoft.Maui.Essentials.dll.so => 187
	i32 u0xeaf244cc, ; 875: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i32 u0xeaf598f6, ; 876: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 180
	i32 u0xeb2ecede, ; 877: System.Data.DataSetExtensions.dll => 23
	i32 u0xeb5560c9, ; 878: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i32 u0xebac8bfe, ; 879: System.Text.Encoding.CodePages => 134
	i32 u0xebb0254b, ; 880: lib_System.Net.NetworkInformation.dll.so => 69
	i32 u0xebc66336, ; 881: Xamarin.AndroidX.AppCompat.dll => 198
	i32 u0xec05582d, ; 882: Xamarin.AndroidX.Lifecycle.Process => 231
	i32 u0xed1090ae, ; 883: lib_System.Net.Primitives.dll.so => 71
	i32 u0xed409aea, ; 884: th/Microsoft.Maui.Controls.resources.dll => 306
	i32 u0xed96d41f, ; 885: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 210
	i32 u0xedadd6e2, ; 886: he/Microsoft.Maui.Controls.resources.dll => 288
	i32 u0xedf6669b, ; 887: lib_System.Drawing.dll.so => 36
	i32 u0xee9f991d, ; 888: System.Diagnostics.Process.dll => 29
	i32 u0xeeefb9c8, ; 889: lib_System.Dynamic.Runtime.dll.so => 37
	i32 u0xef5e8475, ; 890: Xamarin.AndroidX.Annotation.Jvm.dll => 197
	i32 u0xefd01a89, ; 891: System.IO.Pipelines => 54
	i32 u0xeff49a63, ; 892: System.Memory => 63
	i32 u0xeff49c4a, ; 893: lib_System.Text.Encoding.Extensions.dll.so => 135
	i32 u0xf09122fc, ; 894: lib_System.IO.IsolatedStorage.dll.so => 52
	i32 u0xf0ba55d9, ; 895: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 313
	i32 u0xf121f953, ; 896: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 229
	i32 u0xf1304331, ; 897: Microsoft.Maui.Controls.Xaml.dll => 185
	i32 u0xf15cb56d, ; 898: Xamarin.KotlinX.Serialization.Core => 277
	i32 u0xf1676aaa, ; 899: lib-da-Microsoft.Maui.Controls.resources.dll.so => 282
	i32 u0xf1ad867b, ; 900: System.Reflection.Emit.ILGeneration => 91
	i32 u0xf27f60d1, ; 901: System.Private.Xml.Linq.dll => 88
	i32 u0xf29c5384, ; 902: id/Microsoft.Maui.Controls.resources => 292
	i32 u0xf2ce3c98, ; 903: System.Threading.dll => 149
	i32 u0xf2dd3fc4, ; 904: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 294
	i32 u0xf323e0a6, ; 905: lib_Xamarin.Kotlin.StdLib.dll.so => 271
	i32 u0xf33c42ef, ; 906: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 259
	i32 u0xf3a16066, ; 907: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 236
	i32 u0xf40add04, ; 908: Microsoft.Maui.Essentials.dll => 187
	i32 u0xf42589bc, ; 909: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i32 u0xf45985cf, ; 910: System.Drawing.dll => 36
	i32 u0xf462c30d, ; 911: System.Private.Uri => 87
	i32 u0xf479582c, ; 912: Xamarin.AndroidX.Emoji2 => 219
	i32 u0xf47b0a29, ; 913: lib_System.Configuration.dll.so => 19
	i32 u0xf48143e5, ; 914: pt/Microsoft.Maui.Controls.resources.dll => 301
	i32 u0xf5185c24, ; 915: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 301
	i32 u0xf53cb11d, ; 916: lib_System.Net.Security.dll.so => 74
	i32 u0xf5861a4f, ; 917: pl/Microsoft.Maui.Controls.resources => 299
	i32 u0xf5e94e90, ; 918: ms/Microsoft.Maui.Controls.resources.dll => 296
	i32 u0xf5f4f1f0, ; 919: Microsoft.Extensions.DependencyInjection => 177
	i32 u0xf5fdf056, ; 920: lib_Microsoft.Extensions.DependencyInjection.dll.so => 177
	i32 u0xf60736e2, ; 921: System.IO.FileSystem.Watcher => 50
	i32 u0xf6318da0, ; 922: System.AppContext => 6
	i32 u0xf73be021, ; 923: System.Reflection.Emit.ILGeneration.dll => 91
	i32 u0xf76edc75, ; 924: System.Core => 21
	i32 u0xf7e95c85, ; 925: System.Xml.XmlSerializer => 163
	i32 u0xf807b767, ; 926: System.Reflection.TypeExtensions => 97
	i32 u0xf83dd773, ; 927: System.IO.FileSystem.Watcher.dll => 50
	i32 u0xf8420da3, ; 928: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 315
	i32 u0xf86129d4, ; 929: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 305
	i32 u0xf93ba7d4, ; 930: System.Runtime.Serialization.Primitives => 114
	i32 u0xf94a8f86, ; 931: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 239
	i32 u0xf951b10e, ; 932: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 314
	i32 u0xf97c5a99, ; 933: System.Security => 131
	i32 u0xfa21f6af, ; 934: System.Net.WebClient.dll => 77
	i32 u0xfa50891f, ; 935: lib_System.Linq.dll.so => 62
	i32 u0xfa6ae1e2, ; 936: lib_Xamarin.AndroidX.Annotation.dll.so => 195
	i32 u0xfb0af295, ; 937: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 310
	i32 u0xfb1dad5d, ; 938: System.Diagnostics.DiagnosticSource.dll => 27
	i32 u0xfbc4b67c, ; 939: lib_System.IO.Compression.Brotli.dll.so => 43
	i32 u0xfc0a7526, ; 940: Xamarin.KotlinX.AtomicFU.Jvm.dll => 273
	i32 u0xfc5f7d36, ; 941: pt/Microsoft.Maui.Controls.resources => 301
	i32 u0xfdaee526, ; 942: Xamarin.AndroidX.Core.Core.Ktx => 212
	i32 u0xfdd1b433, ; 943: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 238
	i32 u0xfdf2741f, ; 944: System.Buffers => 7
	i32 u0xfe42d509, ; 945: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 252
	i32 u0xfea12dee, ; 946: Microsoft.Maui.Controls.dll => 184
	i32 u0xfecef6ea, ; 947: System.Runtime.Numerics => 111
	i32 u0xff912ee3, ; 948: lib_System.Xml.Serialization.dll.so => 158
	i32 u0xffd4917f, ; 949: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 239
	i32 u0xfffce3e8 ; 950: Xamarin.AndroidX.ExifInterface.dll => 221
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [951 x i32] [
	i32 69, i32 73, i32 225, i32 68, i32 240, i32 163, i32 109, i32 178,
	i32 232, i32 269, i32 48, i32 81, i32 308, i32 146, i32 273, i32 186,
	i32 280, i32 30, i32 125, i32 188, i32 103, i32 10, i32 253, i32 61,
	i32 310, i32 269, i32 67, i32 108, i32 253, i32 140, i32 31, i32 78,
	i32 125, i32 13, i32 207, i32 204, i32 272, i32 193, i32 133, i32 255,
	i32 256, i32 309, i32 265, i32 152, i32 160, i32 64, i32 299, i32 309,
	i32 75, i32 310, i32 18, i32 202, i32 44, i32 26, i32 181, i32 225,
	i32 1, i32 214, i32 60, i32 42, i32 297, i32 92, i32 130, i32 189,
	i32 208, i32 148, i32 228, i32 224, i32 281, i32 23, i32 304, i32 55,
	i32 70, i32 193, i32 84, i32 267, i32 117, i32 294, i32 226, i32 13,
	i32 293, i32 281, i32 132, i32 175, i32 110, i32 56, i32 314, i32 150,
	i32 75, i32 146, i32 63, i32 147, i32 249, i32 316, i32 166, i32 233,
	i32 123, i32 305, i32 209, i32 12, i32 222, i32 126, i32 153, i32 234,
	i32 171, i32 114, i32 167, i32 169, i32 241, i32 165, i32 224, i32 87,
	i32 241, i32 253, i32 116, i32 85, i32 292, i32 286, i32 183, i32 125,
	i32 6, i32 151, i32 289, i32 61, i32 179, i32 51, i32 104, i32 115,
	i32 40, i32 0, i32 266, i32 0, i32 264, i32 121, i32 300, i32 174,
	i32 132, i32 11, i32 52, i32 21, i32 44, i32 76, i32 120, i32 233,
	i32 214, i32 220, i32 215, i32 94, i32 283, i32 82, i32 137, i32 260,
	i32 22, i32 200, i32 8, i32 51, i32 300, i32 272, i32 74, i32 280,
	i32 156, i32 274, i32 213, i32 155, i32 164, i32 93, i32 270, i32 45,
	i32 295, i32 283, i32 110, i32 131, i32 130, i32 25, i32 190, i32 162,
	i32 73, i32 56, i32 46, i32 98, i32 182, i32 90, i32 215, i32 22,
	i32 230, i32 146, i32 87, i32 43, i32 161, i32 72, i32 246, i32 217,
	i32 279, i32 3, i32 42, i32 64, i32 56, i32 268, i32 16, i32 58,
	i32 53, i32 151, i32 41, i32 307, i32 269, i32 14, i32 237, i32 220,
	i32 106, i32 227, i32 167, i32 267, i32 226, i32 34, i32 159, i32 274,
	i32 86, i32 32, i32 218, i32 12, i32 311, i32 142, i32 51, i32 285,
	i32 57, i32 250, i32 36, i32 178, i32 282, i32 268, i32 198, i32 35,
	i32 224, i32 59, i32 97, i32 236, i32 12, i32 99, i32 183, i32 231,
	i32 174, i32 17, i32 271, i32 165, i32 93, i32 137, i32 192, i32 234,
	i32 181, i32 306, i32 124, i32 17, i32 79, i32 83, i32 263, i32 65,
	i32 86, i32 155, i32 154, i32 259, i32 244, i32 286, i32 141, i32 101,
	i32 299, i32 200, i32 29, i32 52, i32 204, i32 148, i32 297, i32 289,
	i32 264, i32 205, i32 5, i32 188, i32 278, i32 254, i32 275, i32 88,
	i32 258, i32 115, i32 206, i32 274, i32 197, i32 217, i32 247, i32 86,
	i32 264, i32 263, i32 62, i32 113, i32 290, i32 280, i32 58, i32 250,
	i32 100, i32 173, i32 50, i32 19, i32 210, i32 112, i32 102, i32 32,
	i32 3, i32 103, i32 84, i32 105, i32 267, i32 227, i32 72, i32 4,
	i32 237, i32 38, i32 32, i32 57, i32 104, i32 74, i32 9, i32 124,
	i32 46, i32 199, i32 183, i32 9, i32 43, i32 4, i32 251, i32 289,
	i32 35, i32 284, i32 31, i32 202, i32 139, i32 93, i32 94, i32 304,
	i32 287, i32 49, i32 142, i32 113, i32 278, i32 141, i32 2, i32 305,
	i32 216, i32 16, i32 312, i32 116, i32 268, i32 158, i32 313, i32 77,
	i32 80, i32 39, i32 240, i32 37, i32 262, i32 201, i32 220, i32 213,
	i32 65, i32 139, i32 15, i32 46, i32 157, i32 166, i32 117, i32 276,
	i32 256, i32 265, i32 208, i32 48, i32 71, i32 81, i32 127, i32 95,
	i32 122, i32 150, i32 26, i32 118, i32 230, i32 98, i32 28, i32 203,
	i32 103, i32 302, i32 150, i32 54, i32 170, i32 4, i32 99, i32 38,
	i32 312, i32 33, i32 78, i32 94, i32 255, i32 179, i32 106, i32 21,
	i32 41, i32 198, i32 171, i32 104, i32 222, i32 149, i32 287, i32 240,
	i32 297, i32 271, i32 265, i32 275, i32 245, i32 2, i32 291, i32 135,
	i32 112, i32 315, i32 260, i32 180, i32 308, i32 190, i32 59, i32 96,
	i32 208, i32 39, i32 201, i32 315, i32 311, i32 25, i32 95, i32 90,
	i32 100, i32 10, i32 199, i32 172, i32 88, i32 49, i32 63, i32 77,
	i32 101, i32 294, i32 252, i32 175, i32 47, i32 192, i32 7, i32 290,
	i32 82, i32 236, i32 279, i32 196, i32 189, i32 288, i32 293, i32 89,
	i32 229, i32 155, i32 316, i32 223, i32 33, i32 113, i32 117, i32 66,
	i32 83, i32 136, i32 20, i32 11, i32 163, i32 134, i32 295, i32 3,
	i32 28, i32 295, i32 296, i32 266, i32 186, i32 112, i32 302, i32 100,
	i32 27, i32 15, i32 182, i32 7, i32 180, i32 85, i32 59, i32 72,
	i32 30, i32 276, i32 65, i32 259, i32 144, i32 81, i32 241, i32 303,
	i32 158, i32 41, i32 238, i32 184, i32 118, i32 176, i32 191, i32 287,
	i32 293, i32 248, i32 298, i32 168, i32 306, i32 233, i32 132, i32 76,
	i32 67, i32 173, i32 195, i32 144, i32 216, i32 107, i32 152, i32 286,
	i32 20, i32 71, i32 228, i32 157, i32 307, i32 175, i32 145, i32 122,
	i32 243, i32 279, i32 128, i32 153, i32 219, i32 154, i32 89, i32 314,
	i32 142, i32 298, i32 206, i32 96, i32 222, i32 20, i32 14, i32 254,
	i32 136, i32 76, i32 60, i32 209, i32 168, i32 230, i32 169, i32 184,
	i32 15, i32 75, i32 138, i32 232, i32 6, i32 292, i32 194, i32 23,
	i32 232, i32 250, i32 304, i32 189, i32 185, i32 92, i32 1, i32 137,
	i32 235, i32 234, i32 258, i32 135, i32 70, i32 147, i32 114, i32 276,
	i32 25, i32 223, i32 181, i32 89, i32 97, i32 213, i32 218, i32 245,
	i32 31, i32 45, i32 144, i32 228, i32 239, i32 191, i32 110, i32 159,
	i32 35, i32 275, i32 108, i32 22, i32 115, i32 58, i32 139, i32 256,
	i32 145, i32 119, i32 121, i32 211, i32 111, i32 285, i32 193, i32 140,
	i32 199, i32 55, i32 80, i32 106, i32 185, i32 8, i32 186, i32 121,
	i32 134, i32 237, i32 270, i32 263, i32 152, i32 261, i32 249, i32 227,
	i32 9, i32 190, i32 48, i32 223, i32 68, i32 188, i32 308, i32 160,
	i32 285, i32 244, i32 210, i32 5, i32 164, i32 127, i32 133, i32 249,
	i32 162, i32 298, i32 238, i32 141, i32 261, i32 42, i32 257, i32 284,
	i32 170, i32 187, i32 194, i32 266, i32 40, i32 278, i32 303, i32 221,
	i32 82, i32 57, i32 37, i32 128, i32 98, i32 167, i32 173, i32 277,
	i32 262, i32 83, i32 196, i32 182, i32 99, i32 26, i32 30, i32 160,
	i32 251, i32 18, i32 128, i32 120, i32 217, i32 156, i32 235, i32 252,
	i32 281, i32 191, i32 70, i32 231, i32 254, i32 166, i32 225, i32 316,
	i32 105, i32 251, i32 242, i32 170, i32 171, i32 16, i32 262, i32 258,
	i32 145, i32 291, i32 40, i32 126, i32 119, i32 38, i32 116, i32 47,
	i32 143, i32 85, i32 118, i32 34, i32 174, i32 96, i32 53, i32 205,
	i32 95, i32 242, i32 243, i32 129, i32 102, i32 130, i32 154, i32 24,
	i32 162, i32 216, i32 149, i32 105, i32 226, i32 90, i32 209, i32 203,
	i32 61, i32 143, i32 91, i32 101, i32 5, i32 13, i32 122, i32 123,
	i32 120, i32 136, i32 28, i32 176, i32 73, i32 214, i32 24, i32 24,
	i32 201, i32 247, i32 244, i32 257, i32 212, i32 18, i32 138, i32 194,
	i32 211, i32 169, i32 33, i32 248, i32 102, i32 124, i32 215, i32 92,
	i32 177, i32 164, i32 168, i32 218, i32 39, i32 219, i32 29, i32 290,
	i32 17, i32 172, i32 303, i32 255, i32 138, i32 151, i32 207, i32 273,
	i32 156, i32 131, i32 19, i32 66, i32 270, i32 309, i32 165, i32 109,
	i32 148, i32 1, i32 200, i32 221, i32 47, i32 161, i32 302, i32 283,
	i32 192, i32 80, i32 62, i32 282, i32 107, i32 246, i32 140, i32 196,
	i32 248, i32 49, i32 229, i32 277, i32 243, i32 14, i32 300, i32 284,
	i32 176, i32 69, i32 288, i32 197, i32 172, i32 313, i32 202, i32 207,
	i32 296, i32 153, i32 312, i32 79, i32 212, i32 109, i32 195, i32 242,
	i32 68, i32 64, i32 133, i32 27, i32 161, i32 34, i32 235, i32 246,
	i32 147, i32 291, i32 159, i32 204, i32 45, i32 261, i32 10, i32 179,
	i32 111, i32 272, i32 11, i32 54, i32 53, i32 79, i32 119, i32 127,
	i32 84, i32 0, i32 178, i32 67, i32 108, i32 203, i32 66, i32 206,
	i32 129, i32 123, i32 78, i32 257, i32 247, i32 311, i32 8, i32 211,
	i32 2, i32 205, i32 60, i32 307, i32 44, i32 260, i32 143, i32 157,
	i32 129, i32 245, i32 187, i32 55, i32 180, i32 23, i32 107, i32 134,
	i32 69, i32 198, i32 231, i32 71, i32 306, i32 210, i32 288, i32 36,
	i32 29, i32 37, i32 197, i32 54, i32 63, i32 135, i32 52, i32 313,
	i32 229, i32 185, i32 277, i32 282, i32 91, i32 88, i32 292, i32 149,
	i32 294, i32 271, i32 259, i32 236, i32 187, i32 126, i32 36, i32 87,
	i32 219, i32 19, i32 301, i32 301, i32 74, i32 299, i32 296, i32 177,
	i32 177, i32 50, i32 6, i32 91, i32 21, i32 163, i32 97, i32 50,
	i32 315, i32 305, i32 114, i32 239, i32 314, i32 131, i32 77, i32 62,
	i32 195, i32 310, i32 27, i32 43, i32 273, i32 301, i32 212, i32 238,
	i32 7, i32 252, i32 184, i32 111, i32 158, i32 239, i32 221
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ e7876a4f92d894b40c191a24c2b74f06d4bf4573"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
