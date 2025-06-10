; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [118 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [354 x i32] [
	i32 u0x00345a11, ; 0: lib_System.Net.Requests.dll.so => 96
	i32 u0x00c8cc5d, ; 1: lib_Xamarin.AndroidX.Loader.dll.so => 63
	i32 u0x0119bc86, ; 2: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 38
	i32 u0x02664405, ; 3: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 29
	i32 u0x028aa24d, ; 4: System.Threading.Thread => 109
	i32 u0x03358480, ; 5: lib_Microsoft.Maui.dll.so => 45
	i32 u0x0335cdbc, ; 6: ca/Microsoft.Maui.Controls.resources => 1
	i32 u0x044bb714, ; 7: Microsoft.Maui.Graphics.dll => 47
	i32 u0x056606a6, ; 8: lib_System.Collections.NonGeneric.dll.so => 79
	i32 u0x06c2cd46, ; 9: zh-HK/Microsoft.Maui.Controls.resources => 31
	i32 u0x06ffddbc, ; 10: System.Runtime.InteropServices => 101
	i32 u0x0a0c2bd0, ; 11: lib_Xamarin.AndroidX.Activity.dll.so => 48
	i32 u0x0ade3a75, ; 12: Xamarin.AndroidX.SwipeRefreshLayout.dll => 70
	i32 u0x0aee6a3d, ; 13: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 30
	i32 u0x0aeedc53, ; 14: lib_Xamarin.Google.Android.Material.dll.so => 73
	i32 u0x0b721a36, ; 15: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 20
	i32 u0x0ba65f85, ; 16: vi/Microsoft.Maui.Controls.resources.dll => 30
	i32 u0x0be195c3, ; 17: zh-HK/Microsoft.Maui.Controls.resources.dll => 31
	i32 u0x0c38ff48, ; 18: System.ComponentModel => 84
	i32 u0x0dc2f416, ; 19: lib_Xamarin.AndroidX.CustomView.dll.so => 56
	i32 u0x0e762ada, ; 20: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 18
	i32 u0x10bf9929, ; 21: cs/Microsoft.Maui.Controls.resources.dll => 2
	i32 u0x113d3381, ; 22: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 25
	i32 u0x13031348, ; 23: Xamarin.AndroidX.Activity.dll => 48
	i32 u0x136bf828, ; 24: lib_System.Runtime.dll.so => 104
	i32 u0x14095832, ; 25: ja/Microsoft.Maui.Controls.resources.dll => 15
	i32 u0x153e1455, ; 26: it/Microsoft.Maui.Controls.resources.dll => 14
	i32 u0x15502fa0, ; 27: cs/Microsoft.Maui.Controls.resources => 2
	i32 u0x15c177ae, ; 28: lib_Microsoft.Extensions.Configuration.dll.so => 35
	i32 u0x15e184df, ; 29: lib_System.Runtime.Loader.dll.so => 102
	i32 u0x16a510e1, ; 30: System.Threading.Thread.dll => 109
	i32 u0x16fe439a, ; 31: System.Memory.dll => 93
	i32 u0x17969339, ; 32: _Microsoft.Android.Resource.Designer => 34
	i32 u0x19f6996b, ; 33: sv/Microsoft.Maui.Controls.resources.dll => 26
	i32 u0x1a61054f, ; 34: System.Collections => 81
	i32 u0x1ae0ec2c, ; 35: Xamarin.AndroidX.Fragment.dll => 58
	i32 u0x1b317bfd, ; 36: System.Web.HttpUtility.dll => 111
	i32 u0x1b5932ea, ; 37: lib_Mono.Android.Runtime.dll.so => 116
	i32 u0x1bc6ffe7, ; 38: lib_Java.Interop.dll.so => 115
	i32 u0x1bff388e, ; 39: System.dll => 113
	i32 u0x1c78d08a, ; 40: lib_System.Private.Uri.dll.so => 99
	i32 u0x1dbae811, ; 41: System.ObjectModel => 98
	i32 u0x1dd2dc50, ; 42: id/Microsoft.Maui.Controls.resources.dll => 13
	i32 u0x1e092f31, ; 43: fi/Microsoft.Maui.Controls.resources.dll => 7
	i32 u0x1e9789de, ; 44: Microsoft.Extensions.Primitives.dll => 42
	i32 u0x1f6bf43d, ; 45: hi/Microsoft.Maui.Controls.resources => 10
	i32 u0x20216150, ; 46: Microsoft.Extensions.Logging => 39
	i32 u0x2113b341, ; 47: AppNumeroDaSorte => 77
	i32 u0x21c4e49a, ; 48: AppNumeroDaSorte.dll => 77
	i32 u0x234b6fb2, ; 49: pt-BR/Microsoft.Maui.Controls.resources.dll => 21
	i32 u0x2397454a, ; 50: lib_System.Collections.Specialized.dll.so => 80
	i32 u0x2568904f, ; 51: Xamarin.AndroidX.CustomView => 56
	i32 u0x262d781c, ; 52: lib-de-Microsoft.Maui.Controls.resources.dll.so => 4
	i32 u0x27787397, ; 53: System.Text.Encodings.Web.dll => 106
	i32 u0x2814a96c, ; 54: System.Collections.Concurrent => 78
	i32 u0x28607aa1, ; 55: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 21
	i32 u0x2904cf94, ; 56: ca/Microsoft.Maui.Controls.resources.dll => 1
	i32 u0x29423679, ; 57: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 55
	i32 u0x2a1e8ecb, ; 58: ko/Microsoft.Maui.Controls.resources.dll => 16
	i32 u0x2a4afd4a, ; 59: de/Microsoft.Maui.Controls.resources.dll => 4
	i32 u0x2b15ed29, ; 60: System.Runtime.Loader.dll => 102
	i32 u0x2d445acd, ; 61: System.Net.Requests => 96
	i32 u0x2e394f87, ; 62: System.IO.Compression => 89
	i32 u0x2f0980eb, ; 63: Microsoft.Extensions.Options => 41
	i32 u0x30a0e95c, ; 64: lib_System.Threading.Thread.dll.so => 109
	i32 u0x311247b5, ; 65: System.Private.Uri.dll => 99
	i32 u0x317d5b75, ; 66: System.IO.Compression.Brotli => 88
	i32 u0x3312831d, ; 67: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 57
	i32 u0x33e88be1, ; 68: ar/Microsoft.Maui.Controls.resources => 0
	i32 u0x35e25008, ; 69: System.ComponentModel.Primitives.dll => 82
	i32 u0x373f6a31, ; 70: tr/Microsoft.Maui.Controls.resources.dll => 28
	i32 u0x37ea9cd7, ; 71: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 61
	i32 u0x38d89c1d, ; 72: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 59
	i32 u0x3b2c715c, ; 73: System.Collections.dll => 81
	i32 u0x3b3271e4, ; 74: zh-Hans/Microsoft.Maui.Controls.resources => 32
	i32 u0x3b4797e5, ; 75: es/Microsoft.Maui.Controls.resources => 6
	i32 u0x3c5e5b62, ; 76: Xamarin.AndroidX.SavedState.dll => 69
	i32 u0x3d548d92, ; 77: Microsoft.Extensions.DependencyInjection.Abstractions => 38
	i32 u0x3d5a6611, ; 78: da/Microsoft.Maui.Controls.resources.dll => 3
	i32 u0x3dbaaf8f, ; 79: Xamarin.AndroidX.AppCompat => 49
	i32 u0x3e444eb4, ; 80: System.Linq.Expressions.dll => 91
	i32 u0x3ebd41f6, ; 81: lib_System.Collections.dll.so => 81
	i32 u0x3eea4db8, ; 82: lib_Microsoft.Extensions.Primitives.dll.so => 42
	i32 u0x408b17f4, ; 83: System.ComponentModel.TypeConverter => 83
	i32 u0x409e66d8, ; 84: Xamarin.Kotlin.StdLib => 74
	i32 u0x41761b2c, ; 85: System => 113
	i32 u0x42be2972, ; 86: lib_System.Text.Encodings.Web.dll.so => 106
	i32 u0x4393e151, ; 87: lib-th-Microsoft.Maui.Controls.resources.dll.so => 27
	i32 u0x444e5c8e, ; 88: lib_System.ComponentModel.TypeConverter.dll.so => 83
	i32 u0x4474042c, ; 89: lib_System.Numerics.Vectors.dll.so => 97
	i32 u0x44845810, ; 90: lib_System.Net.Http.dll.so => 94
	i32 u0x463a8801, ; 91: Xamarin.AndroidX.Navigation.Runtime.dll => 66
	i32 u0x464305ed, ; 92: fi/Microsoft.Maui.Controls.resources => 7
	i32 u0x47b79c15, ; 93: pl/Microsoft.Maui.Controls.resources.dll => 20
	i32 u0x499b8219, ; 94: nb/Microsoft.Maui.Controls.resources.dll => 18
	i32 u0x4a0189ae, ; 95: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 10
	i32 u0x4a4cd262, ; 96: Xamarin.AndroidX.Collection.Jvm.dll => 52
	i32 u0x4ae97402, ; 97: lib_Microsoft.Maui.Graphics.dll.so => 47
	i32 u0x4b275854, ; 98: Xamarin.KotlinX.Serialization.Core.Jvm => 76
	i32 u0x4d14ee2b, ; 99: Xamarin.AndroidX.DrawerLayout.dll => 57
	i32 u0x4eed2679, ; 100: System.Linq => 92
	i32 u0x50255dd9, ; 101: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 11
	i32 u0x50acdfd7, ; 102: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 1
	i32 u0x52114ed3, ; 103: Xamarin.AndroidX.SavedState => 69
	i32 u0x533678bd, ; 104: lib_System.Private.CoreLib.dll.so => 114
	i32 u0x53cefc50, ; 105: Xamarin.AndroidX.CoordinatorLayout => 53
	i32 u0x55ab7451, ; 106: Xamarin.AndroidX.Lifecycle.Common.Jvm => 59
	i32 u0x55e55df2, ; 107: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 61
	i32 u0x568cd628, ; 108: System.Formats.Asn1.dll => 87
	i32 u0x57261233, ; 109: System.IO.Compression.dll => 89
	i32 u0x57924923, ; 110: Xamarin.AndroidX.AppCompat.AppCompatResources => 50
	i32 u0x57a5e912, ; 111: Microsoft.Extensions.Primitives => 42
	i32 u0x583e844f, ; 112: System.IO.Compression.Brotli.dll => 88
	i32 u0x58fd6613, ; 113: hi/Microsoft.Maui.Controls.resources.dll => 10
	i32 u0x5a48cf6c, ; 114: el/Microsoft.Maui.Controls.resources.dll => 5
	i32 u0x5bf8ca0f, ; 115: System.Text.RegularExpressions.dll => 108
	i32 u0x5c7be408, ; 116: sk/Microsoft.Maui.Controls.resources.dll => 25
	i32 u0x5cabc9a4, ; 117: fr/Microsoft.Maui.Controls.resources => 8
	i32 u0x5e0b6fdc, ; 118: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 76
	i32 u0x5e33306d, ; 119: sv/Microsoft.Maui.Controls.resources => 26
	i32 u0x5e7321d2, ; 120: lib_System.ComponentModel.Primitives.dll.so => 82
	i32 u0x5ed5f779, ; 121: zh-Hant/Microsoft.Maui.Controls.resources => 33
	i32 u0x60b0136a, ; 122: Xamarin.AndroidX.Loader.dll => 63
	i32 u0x60d97228, ; 123: Xamarin.AndroidX.ViewPager2 => 72
	i32 u0x6188ba7e, ; 124: Xamarin.AndroidX.CursorAdapter => 55
	i32 u0x61b9038d, ; 125: System.Net.Http.dll => 94
	i32 u0x61c036ca, ; 126: System.Text.RegularExpressions => 108
	i32 u0x62021776, ; 127: lib_System.IO.Compression.dll.so => 89
	i32 u0x620a8774, ; 128: lib_System.Xml.ReaderWriter.dll.so => 112
	i32 u0x62c6282e, ; 129: System.Runtime => 104
	i32 u0x62cec1a2, ; 130: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 75
	i32 u0x62d6ea10, ; 131: Xamarin.Google.Android.Material.dll => 73
	i32 u0x63fca3d0, ; 132: System.Net.Primitives.dll => 95
	i32 u0x641f3e5a, ; 133: System.Security.Cryptography => 105
	i32 u0x6715dc86, ; 134: Xamarin.AndroidX.CardView.dll => 51
	i32 u0x677cd287, ; 135: ro/Microsoft.Maui.Controls.resources.dll => 23
	i32 u0x68139a0d, ; 136: System.IO.Pipelines.dll => 90
	i32 u0x68f61ae4, ; 137: lib_System.Formats.Asn1.dll.so => 87
	i32 u0x690d4b7d, ; 138: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 33
	i32 u0x6947f945, ; 139: Xamarin.AndroidX.SwipeRefreshLayout => 70
	i32 u0x6988f147, ; 140: Microsoft.Extensions.Logging.dll => 39
	i32 u0x69f4f41d, ; 141: lib_Xamarin.AndroidX.AppCompat.dll.so => 49
	i32 u0x6a216153, ; 142: Mono.Android.Runtime.dll => 116
	i32 u0x6a96652d, ; 143: Xamarin.AndroidX.Fragment => 58
	i32 u0x6afaf338, ; 144: lib_System.Threading.dll.so => 110
	i32 u0x6b645ada, ; 145: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 8
	i32 u0x6bcd3296, ; 146: Xamarin.AndroidX.Loader => 63
	i32 u0x6be1e423, ; 147: nb/Microsoft.Maui.Controls.resources => 18
	i32 u0x6c111525, ; 148: Xamarin.Kotlin.StdLib.dll => 74
	i32 u0x6c13413e, ; 149: Xamarin.Google.Android.Material => 73
	i32 u0x6c652ce8, ; 150: Xamarin.AndroidX.Navigation.UI.dll => 67
	i32 u0x6c96614d, ; 151: hu/Microsoft.Maui.Controls.resources => 12
	i32 u0x6cff90ba, ; 152: Microsoft.Extensions.Logging.Abstractions.dll => 40
	i32 u0x6dcaebf7, ; 153: uk/Microsoft.Maui.Controls.resources.dll => 29
	i32 u0x6ec71a65, ; 154: System.Linq.Expressions => 91
	i32 u0x7070c6c0, ; 155: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 32
	i32 u0x71dc7c8b, ; 156: System.Collections.NonGeneric.dll => 79
	i32 u0x72fcebde, ; 157: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 50
	i32 u0x731dd955, ; 158: lib_Mono.Android.dll.so => 117
	i32 u0x73fbecbe, ; 159: lib_System.Memory.dll.so => 93
	i32 u0x74d743bf, ; 160: ja/Microsoft.Maui.Controls.resources => 15
	i32 u0x75533a5e, ; 161: Microsoft.Extensions.Configuration.dll => 35
	i32 u0x781074ce, ; 162: hr/Microsoft.Maui.Controls.resources => 11
	i32 u0x78b622b1, ; 163: ar/Microsoft.Maui.Controls.resources.dll => 0
	i32 u0x7970be4f, ; 164: lib-he-Microsoft.Maui.Controls.resources.dll.so => 9
	i32 u0x79d00016, ; 165: it/Microsoft.Maui.Controls.resources => 14
	i32 u0x79eb68ee, ; 166: System.Private.Xml => 100
	i32 u0x7a80bd4e, ; 167: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 60
	i32 u0x7b350579, ; 168: lib__Microsoft.Android.Resource.Designer.dll.so => 34
	i32 u0x7bf8cdab, ; 169: System.Runtime.dll => 104
	i32 u0x7c9bf920, ; 170: System.Numerics.Vectors => 97
	i32 u0x7ec9ffe9, ; 171: System.Console => 85
	i32 u0x7fb38cd2, ; 172: System.Collections.Specialized => 80
	i32 u0x7fdcdc37, ; 173: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 16
	i32 u0x8030853e, ; 174: ko/Microsoft.Maui.Controls.resources => 16
	i32 u0x8044e1bd, ; 175: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 17
	i32 u0x80bd55ad, ; 176: Microsoft.Maui => 45
	i32 u0x810c11c2, ; 177: ro/Microsoft.Maui.Controls.resources => 23
	i32 u0x816751d8, ; 178: lib_System.Diagnostics.DiagnosticSource.dll.so => 86
	i32 u0x820d22b3, ; 179: Microsoft.Extensions.Options.dll => 41
	i32 u0x82a8237c, ; 180: Microsoft.Extensions.Logging.Abstractions => 40
	i32 u0x82b6c85e, ; 181: System.ObjectModel.dll => 98
	i32 u0x82bb5429, ; 182: lib_System.Linq.Expressions.dll.so => 91
	i32 u0x83323b38, ; 183: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 75
	i32 u0x8334206b, ; 184: System.Net.Http => 94
	i32 u0x8628f1a4, ; 185: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 24
	i32 u0x86bba59b, ; 186: lib_Microsoft.Maui.Controls.dll.so => 43
	i32 u0x871c9c1b, ; 187: Microsoft.Extensions.Configuration.Abstractions => 36
	i32 u0x875633cc, ; 188: fr/Microsoft.Maui.Controls.resources.dll => 8
	i32 u0x87a1a22b, ; 189: lib-it-Microsoft.Maui.Controls.resources.dll.so => 14
	i32 u0x87e25095, ; 190: Xamarin.AndroidX.RecyclerView.dll => 68
	i32 u0x87e7fdbb, ; 191: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 19
	i32 u0x8873eb17, ; 192: th/Microsoft.Maui.Controls.resources => 27
	i32 u0x896b7878, ; 193: System.Private.CoreLib.dll => 114
	i32 u0x8c20c628, ; 194: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 7
	i32 u0x8c20f140, ; 195: lib_System.Console.dll.so => 85
	i32 u0x8c40e0db, ; 196: System.Net.Primitives => 95
	i32 u0x8d24e767, ; 197: System.Xml.ReaderWriter.dll => 112
	i32 u0x8d3fac99, ; 198: tr/Microsoft.Maui.Controls.resources => 28
	i32 u0x8d52b2e2, ; 199: Microsoft.Extensions.Configuration => 35
	i32 u0x8dcb0101, ; 200: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 65
	i32 u0x8e02310f, ; 201: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 0
	i32 u0x8f24faee, ; 202: System.Web.HttpUtility => 111
	i32 u0x8f8c64e2, ; 203: lib_System.Private.Xml.dll.so => 100
	i32 u0x905caa9d, ; 204: nl/Microsoft.Maui.Controls.resources => 19
	i32 u0x911615a7, ; 205: lib_Xamarin.AndroidX.Fragment.dll.so => 58
	i32 u0x912896e5, ; 206: System.Console.dll => 85
	i32 u0x93918882, ; 207: Java.Interop.dll => 115
	i32 u0x93dba8a1, ; 208: Microsoft.Maui.Controls => 43
	i32 u0x9438d78e, ; 209: lib_System.Text.Json.dll.so => 107
	i32 u0x94a1db18, ; 210: lib-id-Microsoft.Maui.Controls.resources.dll.so => 13
	i32 u0x9593ae7f, ; 211: lib_Xamarin.AndroidX.SavedState.dll.so => 69
	i32 u0x963ac2da, ; 212: sk/Microsoft.Maui.Controls.resources => 25
	i32 u0x96bea474, ; 213: lib_Microsoft.Maui.Controls.Xaml.dll.so => 44
	i32 u0x9930ee42, ; 214: System.Text.Encodings.Web => 106
	i32 u0x9b500441, ; 215: Xamarin.KotlinX.Coroutines.Core.Jvm => 75
	i32 u0x9bfe3a41, ; 216: System.Private.Xml.dll => 100
	i32 u0x9c375496, ; 217: Xamarin.AndroidX.CursorAdapter.dll => 55
	i32 u0x9c96ac4c, ; 218: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 67
	i32 u0x9e78dac1, ; 219: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 62
	i32 u0x9ec4cf01, ; 220: System.Runtime.Loader => 102
	i32 u0x9f7ea921, ; 221: lib_System.Runtime.InteropServices.dll.so => 101
	i32 u0xa0fb56af, ; 222: lib_System.Text.RegularExpressions.dll.so => 108
	i32 u0xa25c90e5, ; 223: lib_Xamarin.AndroidX.Core.dll.so => 54
	i32 u0xa262a30f, ; 224: System.Runtime.Numerics.dll => 103
	i32 u0xa2ce8457, ; 225: lib-es-Microsoft.Maui.Controls.resources.dll.so => 6
	i32 u0xa2e0939b, ; 226: Xamarin.AndroidX.Activity => 48
	i32 u0xa32eb6f0, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 50
	i32 u0xa4672f3b, ; 228: Microsoft.Maui.Controls.Xaml => 44
	i32 u0xa493aa02, ; 229: lib_System.Collections.Concurrent.dll.so => 78
	i32 u0xa4caf7a7, ; 230: Microsoft.Maui.dll => 45
	i32 u0xa4e79dfd, ; 231: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 61
	i32 u0xa5a0a402, ; 232: Xamarin.AndroidX.ViewPager.dll => 71
	i32 u0xa5b67c07, ; 233: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 59
	i32 u0xa7008e0b, ; 234: Microsoft.Maui.Graphics => 47
	i32 u0xa7042ae3, ; 235: uk/Microsoft.Maui.Controls.resources => 29
	i32 u0xa741ef0b, ; 236: es/Microsoft.Maui.Controls.resources.dll => 6
	i32 u0xa744f665, ; 237: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 66
	i32 u0xa78103bc, ; 238: Xamarin.AndroidX.CoordinatorLayout.dll => 53
	i32 u0xa81b119f, ; 239: lib_System.Security.Cryptography.dll.so => 105
	i32 u0xa8c61dcb, ; 240: nl/Microsoft.Maui.Controls.resources.dll => 19
	i32 u0xaa107fc4, ; 241: Xamarin.AndroidX.ViewPager => 71
	i32 u0xaa4e51ff, ; 242: el/Microsoft.Maui.Controls.resources => 5
	i32 u0xaa8a4878, ; 243: Microsoft.Maui.Essentials => 46
	i32 u0xabbc23e8, ; 244: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 76
	i32 u0xabdea79a, ; 245: ru/Microsoft.Maui.Controls.resources => 24
	i32 u0xad6f1e8a, ; 246: System.Private.CoreLib => 114
	i32 u0xaddb6d38, ; 247: Xamarin.AndroidX.ViewPager2.dll => 72
	i32 u0xae037813, ; 248: System.Numerics.Vectors.dll => 97
	i32 u0xaeb2d8a5, ; 249: lib_Microsoft.Extensions.Options.dll.so => 41
	i32 u0xb0682092, ; 250: System.ComponentModel.dll => 84
	i32 u0xb18af942, ; 251: Xamarin.AndroidX.DrawerLayout => 57
	i32 u0xb223fa8c, ; 252: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 2
	i32 u0xb514b305, ; 253: _Microsoft.Android.Resource.Designer.dll => 34
	i32 u0xb63fa9f0, ; 254: Xamarin.AndroidX.Navigation.Common => 64
	i32 u0xb65adef9, ; 255: Mono.Android.Runtime => 116
	i32 u0xb660be12, ; 256: System.ComponentModel.Primitives => 82
	i32 u0xb6a153b2, ; 257: lib_Xamarin.AndroidX.ViewPager2.dll.so => 72
	i32 u0xb76be845, ; 258: hu/Microsoft.Maui.Controls.resources.dll => 12
	i32 u0xb8fd311b, ; 259: System.Formats.Asn1 => 87
	i32 u0xbaa520e7, ; 260: lib_System.ObjectModel.dll.so => 98
	i32 u0xbc98c93d, ; 261: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 52
	i32 u0xbd113355, ; 262: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 64
	i32 u0xbd78b0c8, ; 263: Xamarin.AndroidX.Navigation.Fragment.dll => 65
	i32 u0xbff2e236, ; 264: System.Threading => 110
	i32 u0xc235e84d, ; 265: Xamarin.AndroidX.CardView => 51
	i32 u0xc591efe9, ; 266: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 36
	i32 u0xc5b097e4, ; 267: System.Net.Requests.dll => 96
	i32 u0xc5b776df, ; 268: Xamarin.AndroidX.CustomView.dll => 56
	i32 u0xc774da4f, ; 269: Xamarin.AndroidX.Navigation.Runtime => 66
	i32 u0xc821fc10, ; 270: lib_System.ComponentModel.dll.so => 84
	i32 u0xc82afec1, ; 271: System.Text.Json => 107
	i32 u0xc86c06e3, ; 272: Xamarin.AndroidX.Core => 54
	i32 u0xc8a662e9, ; 273: Java.Interop => 115
	i32 u0xc92a6809, ; 274: Xamarin.AndroidX.RecyclerView => 68
	i32 u0xcc5af6ee, ; 275: Microsoft.Extensions.DependencyInjection.dll => 37
	i32 u0xce70fda2, ; 276: hr/Microsoft.Maui.Controls.resources.dll => 11
	i32 u0xcef19b37, ; 277: System.ComponentModel.TypeConverter.dll => 83
	i32 u0xcf3163e6, ; 278: Mono.Android => 117
	i32 u0xcf663a21, ; 279: ru/Microsoft.Maui.Controls.resources.dll => 24
	i32 u0xcfa20c36, ; 280: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 70
	i32 u0xcfbaacae, ; 281: System.Text.Json.dll => 107
	i32 u0xd328ac54, ; 282: vi/Microsoft.Maui.Controls.resources => 30
	i32 u0xd4045e1b, ; 283: lib_System.dll.so => 113
	i32 u0xd622b752, ; 284: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 23
	i32 u0xd664cdf2, ; 285: de/Microsoft.Maui.Controls.resources => 4
	i32 u0xd715a361, ; 286: System.Linq.dll => 92
	i32 u0xd7f95f5a, ; 287: da/Microsoft.Maui.Controls.resources => 3
	i32 u0xd8bba49d, ; 288: lib_Xamarin.AndroidX.RecyclerView.dll.so => 68
	i32 u0xd90e5f5a, ; 289: Xamarin.AndroidX.Lifecycle.LiveData.Core => 60
	i32 u0xd930cda0, ; 290: Xamarin.AndroidX.Navigation.Fragment => 65
	i32 u0xd96cf6f7, ; 291: pt-BR/Microsoft.Maui.Controls.resources => 21
	i32 u0xd9f65f5e, ; 292: lib-el-Microsoft.Maui.Controls.resources.dll.so => 5
	i32 u0xd9fdda56, ; 293: Microsoft.Extensions.Configuration.Abstractions.dll => 36
	i32 u0xda4773dd, ; 294: he/Microsoft.Maui.Controls.resources => 9
	i32 u0xdae8aa5e, ; 295: Mono.Android.dll => 117
	i32 u0xdbb50d93, ; 296: ms/Microsoft.Maui.Controls.resources => 17
	i32 u0xdc5370c5, ; 297: lib_System.Web.HttpUtility.dll.so => 111
	i32 u0xdc68940c, ; 298: zh-Hant/Microsoft.Maui.Controls.resources.dll => 33
	i32 u0xde068c70, ; 299: Xamarin.AndroidX.Navigation.Common.dll => 64
	i32 u0xdf6f3870, ; 300: System.Diagnostics.DiagnosticSource => 86
	i32 u0xe13414bb, ; 301: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 12
	i32 u0xe1f0a5d8, ; 302: lib_Xamarin.AndroidX.ViewPager.dll.so => 71
	i32 u0xe2098b0b, ; 303: System.Collections.NonGeneric => 79
	i32 u0xe250cda6, ; 304: lib_Microsoft.Extensions.Logging.dll.so => 39
	i32 u0xe2513246, ; 305: lib_System.Runtime.Numerics.dll.so => 103
	i32 u0xe2a3f2e8, ; 306: System.Collections.Specialized.dll => 80
	i32 u0xe34ee011, ; 307: lib_System.IO.Pipelines.dll.so => 90
	i32 u0xe3df9d2b, ; 308: System.Security.Cryptography.dll => 105
	i32 u0xe4873adf, ; 309: lib_AppNumeroDaSorte.dll.so => 77
	i32 u0xe4fab729, ; 310: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 38
	i32 u0xe56ef253, ; 311: System.Runtime.InteropServices.dll => 101
	i32 u0xe625b819, ; 312: lib_Xamarin.AndroidX.CardView.dll.so => 51
	i32 u0xe7dc15ff, ; 313: zh-Hans/Microsoft.Maui.Controls.resources.dll => 32
	i32 u0xe839deed, ; 314: System.Collections.Concurrent.dll => 78
	i32 u0xe843daa0, ; 315: Xamarin.AndroidX.Core.dll => 54
	i32 u0xe90fdb70, ; 316: Xamarin.AndroidX.Collection.Jvm => 52
	i32 u0xe99f7d24, ; 317: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 28
	i32 u0xea213423, ; 318: System.Xml.ReaderWriter => 112
	i32 u0xea4fb52e, ; 319: Xamarin.AndroidX.Navigation.UI => 67
	i32 u0xeab81858, ; 320: lib_Microsoft.Maui.Essentials.dll.so => 46
	i32 u0xeaf598f6, ; 321: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 40
	i32 u0xebc66336, ; 322: Xamarin.AndroidX.AppCompat.dll => 49
	i32 u0xed1090ae, ; 323: lib_System.Net.Primitives.dll.so => 95
	i32 u0xed409aea, ; 324: th/Microsoft.Maui.Controls.resources.dll => 27
	i32 u0xed96d41f, ; 325: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 53
	i32 u0xedadd6e2, ; 326: he/Microsoft.Maui.Controls.resources.dll => 9
	i32 u0xefd01a89, ; 327: System.IO.Pipelines => 90
	i32 u0xeff49a63, ; 328: System.Memory => 93
	i32 u0xf121f953, ; 329: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 60
	i32 u0xf1304331, ; 330: Microsoft.Maui.Controls.Xaml.dll => 44
	i32 u0xf1676aaa, ; 331: lib-da-Microsoft.Maui.Controls.resources.dll.so => 3
	i32 u0xf29c5384, ; 332: id/Microsoft.Maui.Controls.resources => 13
	i32 u0xf2ce3c98, ; 333: System.Threading.dll => 110
	i32 u0xf2dd3fc4, ; 334: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 15
	i32 u0xf323e0a6, ; 335: lib_Xamarin.Kotlin.StdLib.dll.so => 74
	i32 u0xf40add04, ; 336: Microsoft.Maui.Essentials.dll => 46
	i32 u0xf462c30d, ; 337: System.Private.Uri => 99
	i32 u0xf48143e5, ; 338: pt/Microsoft.Maui.Controls.resources.dll => 22
	i32 u0xf5185c24, ; 339: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 22
	i32 u0xf5861a4f, ; 340: pl/Microsoft.Maui.Controls.resources => 20
	i32 u0xf5e94e90, ; 341: ms/Microsoft.Maui.Controls.resources.dll => 17
	i32 u0xf5f4f1f0, ; 342: Microsoft.Extensions.DependencyInjection => 37
	i32 u0xf5fdf056, ; 343: lib_Microsoft.Extensions.DependencyInjection.dll.so => 37
	i32 u0xf86129d4, ; 344: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 26
	i32 u0xf94a8f86, ; 345: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 62
	i32 u0xfa50891f, ; 346: lib_System.Linq.dll.so => 92
	i32 u0xfb0af295, ; 347: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 31
	i32 u0xfb1dad5d, ; 348: System.Diagnostics.DiagnosticSource.dll => 86
	i32 u0xfbc4b67c, ; 349: lib_System.IO.Compression.Brotli.dll.so => 88
	i32 u0xfc5f7d36, ; 350: pt/Microsoft.Maui.Controls.resources => 22
	i32 u0xfea12dee, ; 351: Microsoft.Maui.Controls.dll => 43
	i32 u0xfecef6ea, ; 352: System.Runtime.Numerics => 103
	i32 u0xffd4917f ; 353: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 62
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [354 x i32] [
	i32 96, i32 63, i32 38, i32 29, i32 109, i32 45, i32 1, i32 47,
	i32 79, i32 31, i32 101, i32 48, i32 70, i32 30, i32 73, i32 20,
	i32 30, i32 31, i32 84, i32 56, i32 18, i32 2, i32 25, i32 48,
	i32 104, i32 15, i32 14, i32 2, i32 35, i32 102, i32 109, i32 93,
	i32 34, i32 26, i32 81, i32 58, i32 111, i32 116, i32 115, i32 113,
	i32 99, i32 98, i32 13, i32 7, i32 42, i32 10, i32 39, i32 77,
	i32 77, i32 21, i32 80, i32 56, i32 4, i32 106, i32 78, i32 21,
	i32 1, i32 55, i32 16, i32 4, i32 102, i32 96, i32 89, i32 41,
	i32 109, i32 99, i32 88, i32 57, i32 0, i32 82, i32 28, i32 61,
	i32 59, i32 81, i32 32, i32 6, i32 69, i32 38, i32 3, i32 49,
	i32 91, i32 81, i32 42, i32 83, i32 74, i32 113, i32 106, i32 27,
	i32 83, i32 97, i32 94, i32 66, i32 7, i32 20, i32 18, i32 10,
	i32 52, i32 47, i32 76, i32 57, i32 92, i32 11, i32 1, i32 69,
	i32 114, i32 53, i32 59, i32 61, i32 87, i32 89, i32 50, i32 42,
	i32 88, i32 10, i32 5, i32 108, i32 25, i32 8, i32 76, i32 26,
	i32 82, i32 33, i32 63, i32 72, i32 55, i32 94, i32 108, i32 89,
	i32 112, i32 104, i32 75, i32 73, i32 95, i32 105, i32 51, i32 23,
	i32 90, i32 87, i32 33, i32 70, i32 39, i32 49, i32 116, i32 58,
	i32 110, i32 8, i32 63, i32 18, i32 74, i32 73, i32 67, i32 12,
	i32 40, i32 29, i32 91, i32 32, i32 79, i32 50, i32 117, i32 93,
	i32 15, i32 35, i32 11, i32 0, i32 9, i32 14, i32 100, i32 60,
	i32 34, i32 104, i32 97, i32 85, i32 80, i32 16, i32 16, i32 17,
	i32 45, i32 23, i32 86, i32 41, i32 40, i32 98, i32 91, i32 75,
	i32 94, i32 24, i32 43, i32 36, i32 8, i32 14, i32 68, i32 19,
	i32 27, i32 114, i32 7, i32 85, i32 95, i32 112, i32 28, i32 35,
	i32 65, i32 0, i32 111, i32 100, i32 19, i32 58, i32 85, i32 115,
	i32 43, i32 107, i32 13, i32 69, i32 25, i32 44, i32 106, i32 75,
	i32 100, i32 55, i32 67, i32 62, i32 102, i32 101, i32 108, i32 54,
	i32 103, i32 6, i32 48, i32 50, i32 44, i32 78, i32 45, i32 61,
	i32 71, i32 59, i32 47, i32 29, i32 6, i32 66, i32 53, i32 105,
	i32 19, i32 71, i32 5, i32 46, i32 76, i32 24, i32 114, i32 72,
	i32 97, i32 41, i32 84, i32 57, i32 2, i32 34, i32 64, i32 116,
	i32 82, i32 72, i32 12, i32 87, i32 98, i32 52, i32 64, i32 65,
	i32 110, i32 51, i32 36, i32 96, i32 56, i32 66, i32 84, i32 107,
	i32 54, i32 115, i32 68, i32 37, i32 11, i32 83, i32 117, i32 24,
	i32 70, i32 107, i32 30, i32 113, i32 23, i32 4, i32 92, i32 3,
	i32 68, i32 60, i32 65, i32 21, i32 5, i32 36, i32 9, i32 117,
	i32 17, i32 111, i32 33, i32 64, i32 86, i32 12, i32 71, i32 79,
	i32 39, i32 103, i32 80, i32 90, i32 105, i32 77, i32 38, i32 101,
	i32 51, i32 32, i32 78, i32 54, i32 52, i32 28, i32 112, i32 67,
	i32 46, i32 40, i32 49, i32 95, i32 27, i32 53, i32 9, i32 90,
	i32 93, i32 60, i32 44, i32 3, i32 13, i32 110, i32 15, i32 74,
	i32 46, i32 99, i32 22, i32 22, i32 20, i32 17, i32 37, i32 37,
	i32 26, i32 62, i32 92, i32 31, i32 86, i32 88, i32 22, i32 43,
	i32 103, i32 62
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

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

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
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
