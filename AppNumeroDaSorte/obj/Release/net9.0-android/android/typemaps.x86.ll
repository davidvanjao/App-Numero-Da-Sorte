; ModuleID = 'typemaps.x86.ll'
source_filename = "typemaps.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.TypeMapJava = type {
	i32, ; uint32_t module_index
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_name_index
}

%struct.TypeMapModule = type {
	[16 x i8], ; uint8_t module_uuid[16]
	i32, ; uint32_t entry_count
	i32, ; uint32_t duplicate_count
	ptr, ; TypeMapModuleEntry map
	ptr, ; TypeMapModuleEntry duplicate_map
	ptr, ; char* assembly_name
	ptr, ; MonoImage image
	i32, ; uint32_t java_name_width
	ptr ; uint8_t java_map
}

%struct.TypeMapModuleEntry = type {
	i32, ; uint32_t type_token_id
	i32 ; uint32_t java_map_index
}

@map_module_count = dso_local local_unnamed_addr constant i32 35, align 4

@java_type_count = dso_local local_unnamed_addr constant i32 1073, align 4

; Managed modules map
@map_modules = dso_local local_unnamed_addr global [35 x %struct.TypeMapModule] [
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x05, i8 u0x6b, i8 u0x32, i8 u0x78, i8 u0x6a, i8 u0xdb, i8 u0xb8, i8 u0x43, i8 u0x91, i8 u0x2a, i8 u0x03, i8 u0x9d, i8 u0x89, i8 u0x79, i8 u0x6f, i8 u0x26 ], ; module_uuid: 78326b05-db6a-43b8-912a-039d89796f26
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module0_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.0_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 0
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x0a, i8 u0x45, i8 u0x1c, i8 u0xf6, i8 u0x6e, i8 u0xec, i8 u0xc7, i8 u0x4a, i8 u0xb7, i8 u0x9a, i8 u0xbf, i8 u0x3d, i8 u0x89, i8 u0xd7, i8 u0xa8, i8 u0x73 ], ; module_uuid: f61c450a-ec6e-4ac7-b79a-bf3d89d7a873
		i32 17, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module1_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module1_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.1_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Common
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 1
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x0d, i8 u0x35, i8 u0x9d, i8 u0x07, i8 u0xd9, i8 u0x9a, i8 u0x5c, i8 u0x49, i8 u0xaf, i8 u0xc4, i8 u0xa0, i8 u0x71, i8 u0xad, i8 u0x56, i8 u0xaf, i8 u0x16 ], ; module_uuid: 079d350d-9ad9-495c-afc4-a071ad56af16
		i32 5, ; uint32_t entry_count
		i32 3, ; uint32_t duplicate_count
		ptr @module2_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module2_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.2_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.Common.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 2
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x11, i8 u0x78, i8 u0x2b, i8 u0xd4, i8 u0x9c, i8 u0xbd, i8 u0xb4, i8 u0x4f, i8 u0xb9, i8 u0x1f, i8 u0xbe, i8 u0x3f, i8 u0x2e, i8 u0xfc, i8 u0xfe, i8 u0x04 ], ; module_uuid: d42b7811-bd9c-4fb4-b91f-be3f2efcfe04
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module3_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.3_assembly_name, ; assembly_name: AppNumeroDaSorte
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 3
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x13, i8 u0xbf, i8 u0x0f, i8 u0x5f, i8 u0x17, i8 u0x41, i8 u0x49, i8 u0x4b, i8 u0xbe, i8 u0xb5, i8 u0xa2, i8 u0x0a, i8 u0x03, i8 u0xc4, i8 u0xf0, i8 u0x62 ], ; module_uuid: 5f0fbf13-4117-4b49-beb5-a20a03c4f062
		i32 2, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module4_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.4_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat.AppCompatResources
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 4
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x17, i8 u0x67, i8 u0xc7, i8 u0x99, i8 u0x0a, i8 u0xeb, i8 u0x13, i8 u0x49, i8 u0xb1, i8 u0xc2, i8 u0x0f, i8 u0xd7, i8 u0x85, i8 u0xb7, i8 u0x55, i8 u0xf9 ], ; module_uuid: 99c76717-eb0a-4913-b1c2-0fd785b755f9
		i32 3, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module5_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.5_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 5
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x17, i8 u0xa7, i8 u0xf6, i8 u0x4f, i8 u0x28, i8 u0x51, i8 u0x76, i8 u0x48, i8 u0x8b, i8 u0x83, i8 u0xc9, i8 u0x22, i8 u0xbb, i8 u0xa7, i8 u0xda, i8 u0xc1 ], ; module_uuid: 4ff6a717-5128-4876-8b83-c922bba7dac1
		i32 25, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module6_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module6_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.6_assembly_name, ; assembly_name: Xamarin.Kotlin.StdLib
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 6
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x2a, i8 u0xfd, i8 u0x54, i8 u0x2c, i8 u0x4a, i8 u0x35, i8 u0x55, i8 u0x4f, i8 u0xb0, i8 u0x72, i8 u0x05, i8 u0x1a, i8 u0x3a, i8 u0x76, i8 u0x3e, i8 u0x65 ], ; module_uuid: 2c54fd2a-354a-4f55-b072-051a3a763e65
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module7_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module7_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.7_assembly_name, ; assembly_name: Xamarin.AndroidX.CustomView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 7
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x45, i8 u0xe7, i8 u0x96, i8 u0xd2, i8 u0x0f, i8 u0xc0, i8 u0x61, i8 u0x4d, i8 u0xa5, i8 u0x4d, i8 u0x6d, i8 u0x83, i8 u0x12, i8 u0xc6, i8 u0x39, i8 u0x7e ], ; module_uuid: d296e745-c00f-4d61-a54d-6d8312c6397e
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module8_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module8_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.8_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.UI
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 8
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x58, i8 u0x5a, i8 u0x0b, i8 u0xff, i8 u0x61, i8 u0x25, i8 u0xdf, i8 u0x4e, i8 u0x82, i8 u0x67, i8 u0xda, i8 u0xec, i8 u0xcc, i8 u0x7b, i8 u0x4c, i8 u0x19 ], ; module_uuid: ff0b5a58-2561-4edf-8267-daeccc7b4c19
		i32 7, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module9_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module9_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.9_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager2
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 9
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x73, i8 u0xd9, i8 u0x36, i8 u0x3f, i8 u0x27, i8 u0x21, i8 u0x20, i8 u0x40, i8 u0xaf, i8 u0x9a, i8 u0x7f, i8 u0x10, i8 u0x8f, i8 u0xe5, i8 u0xd9, i8 u0x92 ], ; module_uuid: 3f36d973-2127-4020-af9a-7f108fe5d992
		i32 9, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module10_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module10_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.10_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.ViewModel.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 10
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x76, i8 u0x7a, i8 u0xe4, i8 u0x7c, i8 u0x84, i8 u0x5f, i8 u0x41, i8 u0x4c, i8 u0x80, i8 u0xd9, i8 u0xad, i8 u0x48, i8 u0x8b, i8 u0x03, i8 u0xc3, i8 u0x71 ], ; module_uuid: 7ce47a76-5f84-4c41-80d9-ad488b03c371
		i32 67, ; uint32_t entry_count
		i32 25, ; uint32_t duplicate_count
		ptr @module11_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module11_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.11_assembly_name, ; assembly_name: Xamarin.Google.Android.Material
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 11
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x7c, i8 u0x71, i8 u0x9f, i8 u0x97, i8 u0x41, i8 u0xe8, i8 u0x93, i8 u0x4f, i8 u0x8b, i8 u0xed, i8 u0x4d, i8 u0x1c, i8 u0x31, i8 u0x0f, i8 u0x74, i8 u0xaf ], ; module_uuid: 979f717c-e841-4f93-8bed-4d1c310f74af
		i32 41, ; uint32_t entry_count
		i32 21, ; uint32_t duplicate_count
		ptr @module12_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module12_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.12_assembly_name, ; assembly_name: Xamarin.AndroidX.RecyclerView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 12
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x84, i8 u0x6d, i8 u0x53, i8 u0xfa, i8 u0xf6, i8 u0xe2, i8 u0x93, i8 u0x49, i8 u0x8f, i8 u0x5b, i8 u0x9a, i8 u0xf0, i8 u0xdc, i8 u0xd1, i8 u0x9e, i8 u0x8d ], ; module_uuid: fa536d84-e2f6-4993-8f5b-9af0dcd19e8d
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module13_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.13_assembly_name, ; assembly_name: Xamarin.AndroidX.Collection.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 13
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x89, i8 u0x4e, i8 u0x7b, i8 u0x5f, i8 u0x8f, i8 u0x56, i8 u0x47, i8 u0x4f, i8 u0xa7, i8 u0xb1, i8 u0x11, i8 u0x41, i8 u0x66, i8 u0xe6, i8 u0x22, i8 u0xc5 ], ; module_uuid: 5f7b4e89-568f-4f47-a7b1-114166e622c5
		i32 7, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module14_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module14_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.14_assembly_name, ; assembly_name: Xamarin.AndroidX.ViewPager
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 14
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8c, i8 u0xa0, i8 u0xed, i8 u0x95, i8 u0x2b, i8 u0x1b, i8 u0x51, i8 u0x44, i8 u0x94, i8 u0x4c, i8 u0x08, i8 u0x70, i8 u0x09, i8 u0xf4, i8 u0xe6, i8 u0xca ], ; module_uuid: 95eda08c-1b2b-4451-944c-087009f4e6ca
		i32 3, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module15_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module15_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.15_assembly_name, ; assembly_name: Xamarin.AndroidX.CoordinatorLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 15
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x8e, i8 u0xf1, i8 u0xfd, i8 u0xd8, i8 u0x88, i8 u0x11, i8 u0x7f, i8 u0x45, i8 u0xb7, i8 u0xef, i8 u0x45, i8 u0xbe, i8 u0xb3, i8 u0x98, i8 u0x57, i8 u0x2f ], ; module_uuid: d8fdf18e-1188-457f-b7ef-45beb398572f
		i32 13, ; uint32_t entry_count
		i32 6, ; uint32_t duplicate_count
		ptr @module16_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module16_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.16_assembly_name, ; assembly_name: Xamarin.AndroidX.Activity
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 16
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x93, i8 u0x59, i8 u0xc3, i8 u0x66, i8 u0xfd, i8 u0xc2, i8 u0x53, i8 u0x49, i8 u0xba, i8 u0x75, i8 u0x33, i8 u0x20, i8 u0xc6, i8 u0xca, i8 u0xca, i8 u0x7a ], ; module_uuid: 66c35993-c2fd-4953-ba75-3320c6caca7a
		i32 69, ; uint32_t entry_count
		i32 23, ; uint32_t duplicate_count
		ptr @module17_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module17_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.17_assembly_name, ; assembly_name: Xamarin.AndroidX.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 17
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x98, i8 u0xa6, i8 u0x98, i8 u0x0d, i8 u0x79, i8 u0x29, i8 u0xe4, i8 u0x46, i8 u0xb0, i8 u0xb1, i8 u0x81, i8 u0xe2, i8 u0xdf, i8 u0x2c, i8 u0x04, i8 u0x33 ], ; module_uuid: 0d98a698-2979-46e4-b0b1-81e2df2c0433
		i32 5, ; uint32_t entry_count
		i32 4, ; uint32_t duplicate_count
		ptr @module18_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module18_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.18_assembly_name, ; assembly_name: Xamarin.AndroidX.Loader
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 18
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0x9b, i8 u0x16, i8 u0x20, i8 u0xbe, i8 u0xd5, i8 u0xbe, i8 u0x1d, i8 u0x4e, i8 u0x8e, i8 u0x04, i8 u0xd4, i8 u0x19, i8 u0x11, i8 u0xb2, i8 u0xcc, i8 u0xa2 ], ; module_uuid: be20169b-bed5-4e1d-8e04-d41911b2cca2
		i32 107, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module19_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.19_assembly_name, ; assembly_name: Microsoft.Maui.Controls
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 19
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xaa, i8 u0xc7, i8 u0xe7, i8 u0xac, i8 u0x4e, i8 u0x33, i8 u0xf6, i8 u0x4a, i8 u0x8e, i8 u0x98, i8 u0xd4, i8 u0x33, i8 u0xf0, i8 u0xee, i8 u0xe5, i8 u0x73 ], ; module_uuid: ace7c7aa-334e-4af6-8e98-d433f0eee573
		i32 5, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module20_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module20_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.20_assembly_name, ; assembly_name: Xamarin.KotlinX.Coroutines.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 20
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xac, i8 u0x7a, i8 u0x74, i8 u0xa8, i8 u0xec, i8 u0x21, i8 u0x45, i8 u0x49, i8 u0xba, i8 u0xe6, i8 u0xed, i8 u0x5b, i8 u0x04, i8 u0x82, i8 u0x2f, i8 u0x5c ], ; module_uuid: a8747aac-21ec-4945-bae6-ed5b04822f5c
		i32 8, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module21_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.21_assembly_name, ; assembly_name: Microsoft.Maui.Essentials
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 21
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xb7, i8 u0x0b, i8 u0x1e, i8 u0x8c, i8 u0xe3, i8 u0x0a, i8 u0x85, i8 u0x4e, i8 u0xb0, i8 u0xef, i8 u0x0d, i8 u0xb0, i8 u0x93, i8 u0xfd, i8 u0x98, i8 u0x28 ], ; module_uuid: 8c1e0bb7-0ae3-4e85-b0ef-0db093fd9828
		i32 4, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module22_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module22_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.22_assembly_name, ; assembly_name: Xamarin.AndroidX.DrawerLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 22
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc1, i8 u0xe0, i8 u0x72, i8 u0xce, i8 u0x6f, i8 u0xf5, i8 u0xa7, i8 u0x45, i8 u0x85, i8 u0xf5, i8 u0x54, i8 u0x39, i8 u0x96, i8 u0x04, i8 u0x31, i8 u0xd8 ], ; module_uuid: ce72e0c1-f56f-45a7-85f5-5439960431d8
		i32 56, ; uint32_t entry_count
		i32 19, ; uint32_t duplicate_count
		ptr @module23_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module23_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.23_assembly_name, ; assembly_name: Xamarin.AndroidX.AppCompat
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 23
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc5, i8 u0xa2, i8 u0xbf, i8 u0x67, i8 u0x8f, i8 u0xfc, i8 u0x1d, i8 u0x47, i8 u0x95, i8 u0x61, i8 u0x23, i8 u0xfe, i8 u0x54, i8 u0x72, i8 u0x1e, i8 u0xf2 ], ; module_uuid: 67bfa2c5-fc8f-471d-9561-23fe54721ef2
		i32 20, ; uint32_t entry_count
		i32 10, ; uint32_t duplicate_count
		ptr @module24_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module24_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.24_assembly_name, ; assembly_name: Xamarin.AndroidX.Fragment
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 24
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xc7, i8 u0x06, i8 u0x2d, i8 u0x59, i8 u0x45, i8 u0xd1, i8 u0x6f, i8 u0x46, i8 u0xa2, i8 u0x00, i8 u0x1d, i8 u0x67, i8 u0x1c, i8 u0x28, i8 u0x33, i8 u0x5d ], ; module_uuid: 592d06c7-d145-466f-a200-1d671c28335d
		i32 3, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module25_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module25_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.25_assembly_name, ; assembly_name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 25
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xd4, i8 u0x06, i8 u0x47, i8 u0x7b, i8 u0xcd, i8 u0xb3, i8 u0x43, i8 u0x47, i8 u0x8b, i8 u0xbc, i8 u0x6c, i8 u0x97, i8 u0x30, i8 u0x4c, i8 u0x82, i8 u0x2c ], ; module_uuid: 7b4706d4-b3cd-4743-8bbc-6c97304c822c
		i32 487, ; uint32_t entry_count
		i32 197, ; uint32_t duplicate_count
		ptr @module26_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module26_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.26_assembly_name, ; assembly_name: Mono.Android
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 26
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xdd, i8 u0xcd, i8 u0xe8, i8 u0xb1, i8 u0x46, i8 u0x23, i8 u0xca, i8 u0x45, i8 u0xaa, i8 u0x1d, i8 u0x25, i8 u0xba, i8 u0x1e, i8 u0x85, i8 u0xf6, i8 u0x8c ], ; module_uuid: b1e8cddd-2346-45ca-aa1d-25ba1e85f68c
		i32 10, ; uint32_t entry_count
		i32 9, ; uint32_t duplicate_count
		ptr @module27_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module27_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.27_assembly_name, ; assembly_name: Xamarin.KotlinX.Serialization.Core.Jvm
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 27
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe5, i8 u0x27, i8 u0x5b, i8 u0xe4, i8 u0x63, i8 u0xbe, i8 u0xe6, i8 u0x40, i8 u0x87, i8 u0x92, i8 u0xa5, i8 u0x11, i8 u0x90, i8 u0x37, i8 u0x07, i8 u0x4a ], ; module_uuid: e45b27e5-be63-40e6-8792-a5119037074a
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module28_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.28_assembly_name, ; assembly_name: Microsoft.Maui.Graphics
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 28
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xe7, i8 u0x14, i8 u0xfd, i8 u0x3e, i8 u0x3e, i8 u0xff, i8 u0x71, i8 u0x4e, i8 u0x9d, i8 u0x81, i8 u0x4d, i8 u0x36, i8 u0xcd, i8 u0x8b, i8 u0x4e, i8 u0x12 ], ; module_uuid: 3efd14e7-ff3e-4e71-9d81-4d36cd8b4e12
		i32 1, ; uint32_t entry_count
		i32 0, ; uint32_t duplicate_count
		ptr @module29_managed_to_java, ; TypeMapModuleEntry* map
		ptr null, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.29_assembly_name, ; assembly_name: Xamarin.AndroidX.CardView
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 29
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xef, i8 u0x56, i8 u0x14, i8 u0x24, i8 u0x36, i8 u0x19, i8 u0xca, i8 u0x4a, i8 u0x9c, i8 u0x1e, i8 u0xe5, i8 u0xf7, i8 u0x94, i8 u0xdc, i8 u0x98, i8 u0xff ], ; module_uuid: 241456ef-1936-4aca-9c1e-e5f794dc98ff
		i32 2, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module30_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module30_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.30_assembly_name, ; assembly_name: Xamarin.AndroidX.SavedState
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 30
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf2, i8 u0x08, i8 u0x00, i8 u0x42, i8 u0xab, i8 u0xf5, i8 u0xe3, i8 u0x47, i8 u0xb3, i8 u0xef, i8 u0x9c, i8 u0x42, i8 u0xd2, i8 u0x8c, i8 u0xea, i8 u0x8a ], ; module_uuid: 420008f2-f5ab-47e3-b3ef-9c42d28cea8a
		i32 76, ; uint32_t entry_count
		i32 5, ; uint32_t duplicate_count
		ptr @module31_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module31_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.31_assembly_name, ; assembly_name: Microsoft.Maui
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 31
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf2, i8 u0x20, i8 u0x87, i8 u0x0c, i8 u0x75, i8 u0x4f, i8 u0x7b, i8 u0x40, i8 u0xb7, i8 u0x6d, i8 u0xea, i8 u0x98, i8 u0x67, i8 u0x04, i8 u0xcd, i8 u0x3c ], ; module_uuid: 0c8720f2-4f75-407b-b76d-ea986704cd3c
		i32 1, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module32_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module32_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.32_assembly_name, ; assembly_name: Xamarin.AndroidX.CursorAdapter
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 32
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xf9, i8 u0xf1, i8 u0x00, i8 u0x54, i8 u0x1e, i8 u0xae, i8 u0xbf, i8 u0x41, i8 u0x9a, i8 u0xb8, i8 u0x76, i8 u0x88, i8 u0x03, i8 u0xb7, i8 u0xf0, i8 u0x49 ], ; module_uuid: 5400f1f9-ae1e-41bf-9ab8-768803b7f049
		i32 4, ; uint32_t entry_count
		i32 2, ; uint32_t duplicate_count
		ptr @module33_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module33_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.33_assembly_name, ; assembly_name: Xamarin.AndroidX.SwipeRefreshLayout
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	}, ; 33
	%struct.TypeMapModule {
		[16 x i8] [ i8 u0xfe, i8 u0xcd, i8 u0xb4, i8 u0x7a, i8 u0xe8, i8 u0x93, i8 u0x4c, i8 u0x44, i8 u0xb1, i8 u0xb2, i8 u0x1f, i8 u0x85, i8 u0x10, i8 u0xcd, i8 u0x54, i8 u0x74 ], ; module_uuid: 7ab4cdfe-93e8-444c-b1b2-1f8510cd5474
		i32 6, ; uint32_t entry_count
		i32 1, ; uint32_t duplicate_count
		ptr @module34_managed_to_java, ; TypeMapModuleEntry* map
		ptr @module34_managed_to_java_duplicates, ; TypeMapModuleEntry* duplicate_map
		ptr @.TypeMapModule.34_assembly_name, ; assembly_name: Xamarin.AndroidX.Navigation.Runtime
		ptr null, ; MonoImage* image
		i32 0, ; uint32_t java_name_width
		ptr null; uint8_t* java_map
	} ; 34
], align 4

; Java types name hashes
@map_java_hashes = dso_local local_unnamed_addr constant [1073 x i32] [
	i32 u0x00478dcb, ; 0 => android/animation/Animator$AnimatorListener
	i32 u0x004cab3f, ; 1 => crc6452ffdc5b34af3a0f/MauiSwipeView
	i32 u0x00bc506a, ; 2 => java/lang/Object
	i32 u0x00bedaaf, ; 3 => java/lang/AutoCloseable
	i32 u0x00c42a04, ; 4 => android/text/style/LineHeightSpan
	i32 u0x00e478f9, ; 5 => androidx/recyclerview/widget/LinearLayoutManager
	i32 u0x00fb0a3a, ; 6 => kotlin/reflect/KParameter
	i32 u0x010e2046, ; 7 => androidx/fragment/app/Fragment
	i32 u0x01c47bce, ; 8 => android/widget/ListAdapter
	i32 u0x01e97a1e, ; 9 => java/security/cert/Certificate
	i32 u0x02088ffa, ; 10 => android/content/pm/PackageItemInfo
	i32 u0x02142dda, ; 11 => android/webkit/WebResourceResponse
	i32 u0x023d7f57, ; 12 => kotlin/reflect/KTypeProjection$Companion
	i32 u0x026bf8c9, ; 13 => mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor
	i32 u0x02d3cbcb, ; 14 => mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor
	i32 u0x04197fb0, ; 15 => crc6452ffdc5b34af3a0f/ScopedFragment
	i32 u0x042a7d13, ; 16 => androidx/core/view/WindowInsetsCompat
	i32 u0x046d7780, ; 17 => android/view/ViewGroup
	i32 u0x04f92ecb, ; 18 => androidx/recyclerview/widget/RecyclerView$OnItemTouchListener
	i32 u0x0545fbb5, ; 19 => com/google/android/material/shape/ShapeAppearanceModel$Builder
	i32 u0x05672010, ; 20 => java/io/FileNotFoundException
	i32 u0x0607f599, ; 21 => mono/android/app/DatePickerDialog_OnDateSetListenerImplementor
	i32 u0x0618dae1, ; 22 => androidx/appcompat/widget/DecorToolbar
	i32 u0x066694a3, ; 23 => androidx/navigation/NavigatorProvider
	i32 u0x068a5e08, ; 24 => android/view/autofill/AutofillId
	i32 u0x06f9f7e2, ; 25 => android/graphics/BlurMaskFilter
	i32 u0x0717724f, ; 26 => android/util/DisplayMetrics
	i32 u0x0720f4c1, ; 27 => com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator
	i32 u0x079ef0ee, ; 28 => androidx/fragment/app/strictmode/FragmentStrictMode$Policy
	i32 u0x07b07a2a, ; 29 => android/graphics/PorterDuffXfermode
	i32 u0x07d492c1, ; 30 => android/webkit/RenderProcessGoneDetail
	i32 u0x07d910b4, ; 31 => crc6488302ad6e9e4df1a/ImageLoaderCallback
	i32 u0x07eec85c, ; 32 => androidx/activity/OnBackPressedCallback
	i32 u0x0833f622, ; 33 => crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged
	i32 u0x083c5433, ; 34 => javax/net/ssl/SSLSessionContext
	i32 u0x084d3fe5, ; 35 => android/view/KeyEvent
	i32 u0x0895b1f6, ; 36 => android/text/style/SubscriptSpan
	i32 u0x08b214f7, ; 37 => java/util/List
	i32 u0x08da0411, ; 38 => android/text/GetChars
	i32 u0x08eb4f47, ; 39 => crc64338477404e88479c/MultiPageFragmentStateAdapter_1
	i32 u0x08f9beb5, ; 40 => androidx/activity/contextaware/OnContextAvailableListener
	i32 u0x095e0c49, ; 41 => crc649ff77a65592e7d55/TabbedPageManager_Listeners
	i32 u0x096ec55d, ; 42 => mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor
	i32 u0x0981856f, ; 43 => androidx/activity/result/contract/ActivityResultContract
	i32 u0x09b71dad, ; 44 => crc645d80431ce5f73f11/StartSnapHelper
	i32 u0x09e8221d, ; 45 => java/text/DecimalFormat
	i32 u0x09e90572, ; 46 => mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor
	i32 u0x09f32486, ; 47 => crc6452ffdc5b34af3a0f/ContainerView
	i32 u0x0a8831f3, ; 48 => java/lang/IllegalArgumentException
	i32 u0x0aa158cb, ; 49 => android/window/OnBackInvokedCallback
	i32 u0x0aeaaae8, ; 50 => android/view/OrientationEventListener
	i32 u0x0b7ed74c, ; 51 => com/google/android/material/button/MaterialButton$OnCheckedChangeListener
	i32 u0x0b81b467, ; 52 => kotlinx/serialization/encoding/Encoder
	i32 u0x0b9203de, ; 53 => crc649ff77a65592e7d55/TabbedPageManager_TempView
	i32 u0x0bb64482, ; 54 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener
	i32 u0x0d5716c4, ; 55 => com/microsoft/maui/PlatformInterop
	i32 u0x0d7ee84f, ; 56 => androidx/navigation/NavDeepLink
	i32 u0x0db97f4c, ; 57 => crc64e1fb321c08285b90/ListViewRenderer
	i32 u0x0dfa53b7, ; 58 => com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior
	i32 u0x0e019f53, ; 59 => androidx/lifecycle/MutableLiveData
	i32 u0x0ee7af87, ; 60 => androidx/navigation/NavHostController
	i32 u0x0f00221f, ; 61 => android/widget/DatePicker
	i32 u0x0f1f3e6c, ; 62 => android/graphics/RadialGradient
	i32 u0x0f52f1a6, ; 63 => java/lang/ReflectiveOperationException
	i32 u0x0f56401e, ; 64 => androidx/navigation/Navigator
	i32 u0x0fab0d1d, ; 65 => android/view/WindowInsets
	i32 u0x100ba9c7, ; 66 => javax/security/cert/X509Certificate
	i32 u0x103d4ae1, ; 67 => android/window/TrustedPresentationThresholds
	i32 u0x103d95e0, ; 68 => crc64e1fb321c08285b90/ViewRenderer_2
	i32 u0x10714b0d, ; 69 => com/google/android/material/appbar/AppBarLayout$LayoutParams
	i32 u0x1079b5f8, ; 70 => java/security/spec/EncodedKeySpec
	i32 u0x10910a74, ; 71 => android/view/ViewGroup$OnHierarchyChangeListener
	i32 u0x1093a286, ; 72 => crc64e1fb321c08285b90/EntryCellView
	i32 u0x10abc779, ; 73 => android/content/SharedPreferences$Editor
	i32 u0x10c1a907, ; 74 => java/util/function/Function
	i32 u0x111682ad, ; 75 => crc645d80431ce5f73f11/PositionalSmoothScroller
	i32 u0x1175c4c3, ; 76 => androidx/loader/content/Loader$OnLoadCompleteListener
	i32 u0x1180e1f5, ; 77 => crc6452ffdc5b34af3a0f/MauiShapeView
	i32 u0x11a20c22, ; 78 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer
	i32 u0x11c94630, ; 79 => mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor
	i32 u0x11d7c927, ; 80 => androidx/savedstate/SavedStateRegistry
	i32 u0x1232d570, ; 81 => crc64e1fb321c08285b90/CellRenderer_RendererHolder
	i32 u0x124d2e7b, ; 82 => android/view/MenuItem$OnActionExpandListener
	i32 u0x12e718cb, ; 83 => android/animation/Animator
	i32 u0x1431beb7, ; 84 => com/google/android/material/appbar/CollapsingToolbarLayout
	i32 u0x14799e8f, ; 85 => android/widget/AbsListView$OnScrollListener
	i32 u0x155ae8e9, ; 86 => android/text/style/CharacterStyle
	i32 u0x157cf77b, ; 87 => androidx/appcompat/widget/AppCompatRadioButton
	i32 u0x15d8dfc9, ; 88 => android/view/ViewGroup$LayoutParams
	i32 u0x1637fef4, ; 89 => crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1
	i32 u0x1749241e, ; 90 => crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer
	i32 u0x17725ef2, ; 91 => mono/java/lang/RunnableImplementor
	i32 u0x17a32db8, ; 92 => androidx/lifecycle/LifecycleOwner
	i32 u0x17b23958, ; 93 => crc6452ffdc5b34af3a0f/MauiHybridWebView
	i32 u0x17cdcfdb, ; 94 => android/animation/TimeInterpolator
	i32 u0x189a6365, ; 95 => java/lang/Long
	i32 u0x18d6d687, ; 96 => android/util/StateSet
	i32 u0x18e22b17, ; 97 => kotlin/sequences/Sequence
	i32 u0x18feeb05, ; 98 => java/util/Iterator
	i32 u0x19100f08, ; 99 => java/net/ConnectException
	i32 u0x193579d8, ; 100 => androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate
	i32 u0x194bb4e9, ; 101 => java/lang/ClassLoader
	i32 u0x195ae333, ; 102 => mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor
	i32 u0x198045ff, ; 103 => androidx/fragment/app/FragmentResultListener
	i32 u0x19ecef57, ; 104 => android/runtime/XmlReaderPullParser
	i32 u0x1a0b1639, ; 105 => android/content/DialogInterface$OnShowListener
	i32 u0x1a163acf, ; 106 => android/app/UiModeManager
	i32 u0x1a53a322, ; 107 => androidx/fragment/app/FragmentFactory
	i32 u0x1a549103, ; 108 => androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener
	i32 u0x1a6b349b, ; 109 => java/lang/LinkageError
	i32 u0x1a8f0c05, ; 110 => androidx/recyclerview/widget/RecyclerView$AdapterDataObserver
	i32 u0x1ad1b5c7, ; 111 => androidx/recyclerview/widget/OrientationHelper
	i32 u0x1b4e378e, ; 112 => crc6452ffdc5b34af3a0f/MauiPicker
	i32 u0x1b9e9991, ; 113 => com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener
	i32 u0x1baaf41a, ; 114 => crc6452ffdc5b34af3a0f/MauiStepper
	i32 u0x1cdb4833, ; 115 => androidx/recyclerview/widget/RecyclerView$LayoutManager
	i32 u0x1d3e444f, ; 116 => java/util/concurrent/TimeUnit
	i32 u0x1d402962, ; 117 => crc645d80431ce5f73f11/NongreedySnapHelper
	i32 u0x1d993a8a, ; 118 => crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector
	i32 u0x1de7d866, ; 119 => android/view/ViewGroup$MarginLayoutParams
	i32 u0x1e91847a, ; 120 => crc64e1fb321c08285b90/FrameRenderer
	i32 u0x1ed12fb6, ; 121 => android/view/ViewParent
	i32 u0x1ed7c45a, ; 122 => androidx/recyclerview/widget/RecyclerView$ViewHolder
	i32 u0x1edafe2e, ; 123 => android/os/Parcel
	i32 u0x1f153e95, ; 124 => androidx/lifecycle/ViewModelProvider$Factory$Companion
	i32 u0x1f35371e, ; 125 => android/app/SearchableInfo
	i32 u0x1fa9731c, ; 126 => mono/android/runtime/OutputStreamAdapter
	i32 u0x2012da5e, ; 127 => crc64ba438d8f48cf7e75/IntermediateActivity
	i32 u0x2103ec5f, ; 128 => android/graphics/drawable/ColorDrawable
	i32 u0x2109685b, ; 129 => java/util/function/UnaryOperator
	i32 u0x210f5079, ; 130 => android/opengl/Matrix
	i32 u0x21e20b74, ; 131 => android/content/DialogInterface$OnDismissListener
	i32 u0x220dab84, ; 132 => android/widget/SectionIndexer
	i32 u0x2222aa0b, ; 133 => crc64e1fb321c08285b90/GroupedListViewAdapter
	i32 u0x2247788b, ; 134 => kotlin/reflect/KClassifier
	i32 u0x22a2d798, ; 135 => java/nio/channels/FileChannel
	i32 u0x22b53691, ; 136 => crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView
	i32 u0x22d234ef, ; 137 => android/widget/Filter
	i32 u0x22d2aa9f, ; 138 => java/lang/IllegalStateException
	i32 u0x22d50cad, ; 139 => com/google/android/material/shape/MaterialShapeDrawable
	i32 u0x22e5821a, ; 140 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener
	i32 u0x22ffb172, ; 141 => androidx/activity/ComponentActivity
	i32 u0x233568be, ; 142 => android/view/ViewTreeObserver
	i32 u0x23380852, ; 143 => crc645d80431ce5f73f11/StartSingleSnapHelper
	i32 u0x23464fac, ; 144 => android/os/Bundle
	i32 u0x2368da71, ; 145 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog
	i32 u0x23952c7c, ; 146 => crc64338477404e88479c/ColorChangeRevealDrawable
	i32 u0x23e6e7ee, ; 147 => java/security/spec/PKCS8EncodedKeySpec
	i32 u0x242020ac, ; 148 => java/io/Serializable
	i32 u0x2433ab5e, ; 149 => android/view/animation/LinearInterpolator
	i32 u0x245fc51f, ; 150 => androidx/core/view/accessibility/AccessibilityViewCommand
	i32 u0x24c03bd9, ; 151 => mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor
	i32 u0x24d523fa, ; 152 => androidx/appcompat/app/ActionBar$OnNavigationListener
	i32 u0x24e61bfb, ; 153 => java/net/URL
	i32 u0x250e8d70, ; 154 => crc6452ffdc5b34af3a0f/MauiSearchView
	i32 u0x251064b7, ; 155 => crc64338477404e88479c/GenericMenuClickListener
	i32 u0x25380d4a, ; 156 => android/view/View$DragShadowBuilder
	i32 u0x254d9be0, ; 157 => androidx/appcompat/app/AppCompatActivity
	i32 u0x2592f163, ; 158 => android/text/method/KeyListener
	i32 u0x25acea43, ; 159 => android/app/TimePickerDialog
	i32 u0x25f292d5, ; 160 => com/google/android/material/internal/ScrimInsetsFrameLayout
	i32 u0x260ef71f, ; 161 => androidx/recyclerview/widget/RecyclerView$ViewCacheExtension
	i32 u0x26120c9e, ; 162 => android/view/GestureDetector$OnGestureListener
	i32 u0x2662c089, ; 163 => androidx/fragment/app/FragmentContainer
	i32 u0x267564e8, ; 164 => androidx/loader/content/Loader
	i32 u0x2711b991, ; 165 => crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener
	i32 u0x27174791, ; 166 => androidx/fragment/app/FragmentTransaction
	i32 u0x2733a797, ; 167 => androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener
	i32 u0x286188c9, ; 168 => java/util/concurrent/atomic/AtomicReference
	i32 u0x291921cf, ; 169 => androidx/appcompat/widget/Toolbar
	i32 u0x2920644b, ; 170 => androidx/core/view/OnApplyWindowInsetsListener
	i32 u0x294d1f6f, ; 171 => java/util/ArrayList
	i32 u0x29519679, ; 172 => crc64a096dc44ad241142/PlatformTicker_DurationScaleListener
	i32 u0x29c7fa0b, ; 173 => mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor
	i32 u0x29da15f0, ; 174 => android/graphics/drawable/GradientDrawable$Orientation
	i32 u0x2a7040b6, ; 175 => crc645d80431ce5f73f11/ItemsViewAdapter_2
	i32 u0x2b245eed, ; 176 => crc645d80431ce5f73f11/CenterSnapHelper
	i32 u0x2beb7623, ; 177 => androidx/appcompat/widget/SearchView
	i32 u0x2c1b9c3b, ; 178 => androidx/core/text/PrecomputedTextCompat
	i32 u0x2c59949b, ; 179 => android/graphics/Paint$Join
	i32 u0x2c73cf3e, ; 180 => android/text/style/SuperscriptSpan
	i32 u0x2d74d41b, ; 181 => com/google/android/material/shape/ShapePathModel
	i32 u0x2d894828, ; 182 => com/microsoft/maui/PlatformFontSpan
	i32 u0x2e0eb4ab, ; 183 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor
	i32 u0x2e841628, ; 184 => java/lang/CharSequence
	i32 u0x2e8cec9f, ; 185 => java/io/PrintWriter
	i32 u0x2edea1d2, ; 186 => android/graphics/drawable/PaintDrawable
	i32 u0x2ef62f80, ; 187 => mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor
	i32 u0x2f030501, ; 188 => crc645d80431ce5f73f11/StructuredItemsViewAdapter_2
	i32 u0x2f523ac2, ; 189 => java/lang/Integer
	i32 u0x2f9d3744, ; 190 => androidx/core/view/WindowInsetsAnimationCompat$Callback
	i32 u0x3002ef83, ; 191 => android/os/IBinder$DeathRecipient
	i32 u0x3016caa7, ; 192 => java/lang/Thread
	i32 u0x30181324, ; 193 => java/text/DecimalFormatSymbols
	i32 u0x3047a991, ; 194 => android/animation/ValueAnimator$DurationScaleChangeListener
	i32 u0x30941ba0, ; 195 => androidx/core/internal/view/SupportMenuItem
	i32 u0x311d1bcb, ; 196 => androidx/appcompat/graphics/drawable/DrawerArrowDrawable
	i32 u0x316f39f7, ; 197 => crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment
	i32 u0x317411c3, ; 198 => androidx/core/widget/CompoundButtonCompat
	i32 u0x31ee71a1, ; 199 => kotlinx/serialization/DeserializationStrategy
	i32 u0x31fd4970, ; 200 => java/lang/NullPointerException
	i32 u0x3246fe73, ; 201 => kotlin/jvm/internal/DefaultConstructorMarker
	i32 u0x32b6fa26, ; 202 => crc6452ffdc5b34af3a0f/LayoutViewGroup
	i32 u0x331bc629, ; 203 => android/content/res/AssetManager
	i32 u0x335d7ffc, ; 204 => com/google/android/material/navigation/NavigationBarItemView
	i32 u0x338d1039, ; 205 => android/graphics/Bitmap$Config
	i32 u0x33be7eb5, ; 206 => mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor
	i32 u0x34408f1d, ; 207 => javax/net/ssl/TrustManager
	i32 u0x34c36fc5, ; 208 => android/content/ContentResolver
	i32 u0x353fa59a, ; 209 => java/lang/Short
	i32 u0x355cc90a, ; 210 => crc645d80431ce5f73f11/GridLayoutSpanSizeLookup
	i32 u0x359cf2e1, ; 211 => androidx/core/content/FileProvider
	i32 u0x359e1122, ; 212 => mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor
	i32 u0x3600fc04, ; 213 => android/database/Cursor
	i32 u0x3616c5d8, ; 214 => androidx/navigation/ui/NavigationUI
	i32 u0x369b72ab, ; 215 => androidx/core/view/autofill/AutofillIdCompat
	i32 u0x36c8dd60, ; 216 => crc64338477404e88479c/DragAndDropGestureHandler
	i32 u0x36c9b6ff, ; 217 => mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor
	i32 u0x375a7458, ; 218 => android/graphics/BitmapFactory
	i32 u0x37c197fc, ; 219 => androidx/viewpager/widget/ViewPager$PageTransformer
	i32 u0x37e62d09, ; 220 => androidx/core/view/ViewPropertyAnimatorCompat
	i32 u0x37e734c2, ; 221 => com/google/android/material/navigation/NavigationBarPresenter
	i32 u0x3830cc82, ; 222 => crc6452ffdc5b34af3a0f/MauiWebChromeClient
	i32 u0x38d7ff82, ; 223 => androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry
	i32 u0x395f2485, ; 224 => kotlinx/coroutines/flow/StateFlow
	i32 u0x39815ca6, ; 225 => android/text/TextUtils
	i32 u0x39877573, ; 226 => com/microsoft/maui/PlatformPaintType
	i32 u0x39a5d9ef, ; 227 => android/text/TextPaint
	i32 u0x3a096e32, ; 228 => com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer
	i32 u0x3a48f956, ; 229 => androidx/appcompat/app/ActionBarDrawerToggle$Delegate
	i32 u0x3a7f1f33, ; 230 => crc64338477404e88479c/GradientStrokeDrawable
	i32 u0x3a8d1ecd, ; 231 => android/widget/HorizontalScrollView
	i32 u0x3a91c58d, ; 232 => androidx/lifecycle/LiveData
	i32 u0x3aafe3b4, ; 233 => android/graphics/PointF
	i32 u0x3ab236a7, ; 234 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor
	i32 u0x3ac61340, ; 235 => androidx/core/content/ContextCompat
	i32 u0x3af26c4d, ; 236 => android/text/method/BaseKeyListener
	i32 u0x3b686dd0, ; 237 => java/io/FileDescriptor
	i32 u0x3b6aaeb6, ; 238 => androidx/lifecycle/Observer
	i32 u0x3bb02f49, ; 239 => com/microsoft/maui/PlatformLogger
	i32 u0x3c676983, ; 240 => com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState
	i32 u0x3c99c850, ; 241 => androidx/recyclerview/widget/ItemTouchHelper
	i32 u0x3cb98831, ; 242 => android/widget/EditText
	i32 u0x3cd9ecb2, ; 243 => androidx/drawerlayout/widget/DrawerLayout$LayoutParams
	i32 u0x3d2de4ff, ; 244 => android/view/WindowMetrics
	i32 u0x3d2f4240, ; 245 => java/net/SocketAddress
	i32 u0x3d6f597a, ; 246 => android/database/DataSetObserver
	i32 u0x3dbfff89, ; 247 => android/content/res/Resources
	i32 u0x3df0d4a6, ; 248 => android/view/SurfaceControlInputReceiver
	i32 u0x3e5fd7cb, ; 249 => microsoft/maui/platform/MauiNavHostFragment
	i32 u0x3e607fe9, ; 250 => android/text/InputFilter$LengthFilter
	i32 u0x3e670d08, ; 251 => androidx/fragment/app/FragmentContainerView
	i32 u0x3e78485e, ; 252 => android/view/GestureDetector$OnDoubleTapListener
	i32 u0x3edd497a, ; 253 => android/graphics/drawable/shapes/OvalShape
	i32 u0x3eebda7e, ; 254 => android/widget/AbsoluteLayout
	i32 u0x3f290730, ; 255 => androidx/viewpager/widget/ViewPager
	i32 u0x3fa97b77, ; 256 => crc640ec207abc449b2ca/CustomFrameLayout
	i32 u0x3fcde9ae, ; 257 => android/database/ContentObserver
	i32 u0x3fce790c, ; 258 => androidx/navigation/NavDeepLinkBuilder
	i32 u0x3ff4ef52, ; 259 => java/lang/annotation/Annotation
	i32 u0x3fff4f83, ; 260 => mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor
	i32 u0x40186e33, ; 261 => com/google/android/material/tabs/TabLayout$TabView
	i32 u0x403b5100, ; 262 => java/util/function/Consumer
	i32 u0x4082de07, ; 263 => androidx/recyclerview/widget/RecyclerView$ItemDecoration
	i32 u0x409cbcf3, ; 264 => androidx/core/view/OnReceiveContentListener
	i32 u0x4103dd30, ; 265 => androidx/navigation/NavController
	i32 u0x41066ac4, ; 266 => javax/net/ssl/KeyManagerFactory
	i32 u0x4124ee8a, ; 267 => crc64e1fb321c08285b90/ListViewRenderer_Container
	i32 u0x419f5f85, ; 268 => android/widget/TextView$OnEditorActionListener
	i32 u0x41aacf93, ; 269 => mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor
	i32 u0x41aca669, ; 270 => mono/android/view/View_OnFocusChangeListenerImplementor
	i32 u0x41b8a68b, ; 271 => android/text/Layout$Alignment
	i32 u0x41fe3ee6, ; 272 => androidx/appcompat/app/ActionBar$OnMenuVisibilityListener
	i32 u0x41ffdec1, ; 273 => androidx/activity/result/ActivityResultLauncher
	i32 u0x421115f5, ; 274 => android/widget/AdapterView$OnItemLongClickListener
	i32 u0x4213ec86, ; 275 => microsoft/maui/essentials/fileProvider
	i32 u0x42994fe2, ; 276 => androidx/drawerlayout/widget/DrawerLayout
	i32 u0x4339cf56, ; 277 => androidx/navigation/ui/AppBarConfiguration
	i32 u0x439c42c4, ; 278 => androidx/core/view/ViewPropertyAnimatorListener
	i32 u0x43f0e078, ; 279 => android/text/StaticLayout$Builder
	i32 u0x4411b6b5, ; 280 => java/util/Enumeration
	i32 u0x444226c8, ; 281 => crc640ec207abc449b2ca/ShellFragmentContainer
	i32 u0x44549b66, ; 282 => android/widget/RadioButton
	i32 u0x44722348, ; 283 => crc64338477404e88479c/PointerGestureHandler
	i32 u0x4612c890, ; 284 => java/lang/ClassNotFoundException
	i32 u0x463d3a5b, ; 285 => com/google/android/material/bottomnavigation/BottomNavigationMenuView
	i32 u0x464a65f1, ; 286 => crc64e1fb321c08285b90/TableViewRenderer
	i32 u0x4663e7a6, ; 287 => crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener
	i32 u0x46649c28, ; 288 => androidx/appcompat/widget/AppCompatAutoCompleteTextView
	i32 u0x46869992, ; 289 => android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo
	i32 u0x46a5d765, ; 290 => android/view/SubMenu
	i32 u0x46ce3824, ; 291 => crc6419642c0f0ae4fee2/MainActivity
	i32 u0x472f30ec, ; 292 => androidx/core/view/accessibility/AccessibilityWindowInfoCompat
	i32 u0x473360a9, ; 293 => crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper
	i32 u0x474a7a4e, ; 294 => java/lang/Appendable
	i32 u0x47706bb8, ; 295 => mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor
	i32 u0x47ac927d, ; 296 => android/text/style/StyleSpan
	i32 u0x47bec27c, ; 297 => kotlinx/serialization/descriptors/SerialDescriptor
	i32 u0x47d41efc, ; 298 => android/animation/ValueAnimator
	i32 u0x48481824, ; 299 => android/app/DatePickerDialog
	i32 u0x4850bb46, ; 300 => android/graphics/Xfermode
	i32 u0x48b62a0e, ; 301 => crc640ec207abc449b2ca/ShellFlyoutRenderer
	i32 u0x48b672c7, ; 302 => kotlin/enums/EnumEntries
	i32 u0x48cde81e, ; 303 => crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper
	i32 u0x48f94eac, ; 304 => crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver
	i32 u0x4923b010, ; 305 => javax/security/cert/Certificate
	i32 u0x49aa1d7f, ; 306 => androidx/core/view/contentcapture/ContentCaptureSessionCompat
	i32 u0x4a8f5c50, ; 307 => com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener
	i32 u0x4abb3c6e, ; 308 => androidx/core/app/TaskStackBuilder
	i32 u0x4b02dd12, ; 309 => androidx/appcompat/view/ActionMode$Callback
	i32 u0x4b6bb0db, ; 310 => androidx/coordinatorlayout/widget/CoordinatorLayout
	i32 u0x4bb583ad, ; 311 => android/view/Window$Callback
	i32 u0x4bbb3aaa, ; 312 => java/net/SocketTimeoutException
	i32 u0x4c0869ac, ; 313 => androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener
	i32 u0x4c5b770c, ; 314 => android/widget/SeekBar$OnSeekBarChangeListener
	i32 u0x4cb4dca7, ; 315 => android/widget/Filter$FilterResults
	i32 u0x4cd44339, ; 316 => kotlin/jvm/functions/Function2
	i32 u0x4cde54af, ; 317 => crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener
	i32 u0x4d121556, ; 318 => com/google/android/material/appbar/HeaderBehavior
	i32 u0x4d64d6f9, ; 319 => java/lang/Throwable
	i32 u0x4d99a2d2, ; 320 => androidx/recyclerview/widget/RecyclerView$SmoothScroller
	i32 u0x4dc09619, ; 321 => androidx/core/view/MenuProvider
	i32 u0x4dda45b7, ; 322 => crc6488302ad6e9e4df1a/MauiApplication
	i32 u0x4dfe661e, ; 323 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener
	i32 u0x4e614a2f, ; 324 => androidx/appcompat/app/AppCompatCallback
	i32 u0x4e907ef7, ; 325 => android/widget/Filterable
	i32 u0x4ee6065b, ; 326 => javax/net/ssl/SSLContext
	i32 u0x4f474993, ; 327 => androidx/recyclerview/widget/RecyclerView$RecycledViewPool
	i32 u0x4f6893c3, ; 328 => crc640ec207abc449b2ca/ScrollLayoutManager
	i32 u0x4f93fcd4, ; 329 => java/util/Collection
	i32 u0x4fa59f87, ; 330 => com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback
	i32 u0x4faf2ae5, ; 331 => androidx/core/os/LocaleListCompat
	i32 u0x4fe415e2, ; 332 => android/graphics/Paint
	i32 u0x4fe7bef4, ; 333 => crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface
	i32 u0x502cf4aa, ; 334 => androidx/navigation/fragment/FragmentNavigator
	i32 u0x509bc3e1, ; 335 => androidx/appcompat/view/menu/MenuPresenter
	i32 u0x50aec99f, ; 336 => crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling
	i32 u0x50e42412, ; 337 => androidx/fragment/app/DialogFragment
	i32 u0x51378d59, ; 338 => androidx/appcompat/widget/Toolbar$LayoutParams
	i32 u0x51907546, ; 339 => java/lang/ClassCastException
	i32 u0x51b625d8, ; 340 => android/graphics/PorterDuff$Mode
	i32 u0x51deacb7, ; 341 => androidx/recyclerview/widget/RecyclerView$RecyclerListener
	i32 u0x51dff242, ; 342 => javax/net/ssl/KeyManager
	i32 u0x51f025eb, ; 343 => androidx/core/util/Pair
	i32 u0x527741c7, ; 344 => android/os/Message
	i32 u0x528b0ea0, ; 345 => androidx/lifecycle/SavedStateHandle
	i32 u0x52a83d46, ; 346 => android/content/ComponentName
	i32 u0x533e1761, ; 347 => mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor
	i32 u0x5348d2f9, ; 348 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener
	i32 u0x534e497b, ; 349 => crc640ec207abc449b2ca/ContainerView
	i32 u0x54661d07, ; 350 => android/content/pm/ApplicationInfo
	i32 u0x54b5a026, ; 351 => androidx/recyclerview/widget/RecyclerView$LayoutParams
	i32 u0x54fbd6e1, ; 352 => java/lang/SecurityException
	i32 u0x551e4b18, ; 353 => java/net/HttpURLConnection
	i32 u0x5538f851, ; 354 => android/graphics/RectF
	i32 u0x556abf7e, ; 355 => android/view/ViewManager
	i32 u0x55991f2d, ; 356 => crc645d80431ce5f73f11/RecyclerViewScrollListener_2
	i32 u0x55b8ed42, ; 357 => androidx/appcompat/view/menu/MenuView
	i32 u0x55c1c54b, ; 358 => android/view/View$OnAttachStateChangeListener
	i32 u0x55f87ea2, ; 359 => java/util/function/Predicate
	i32 u0x5606a26c, ; 360 => crc64ba438d8f48cf7e75/ActivityLifecycleContextListener
	i32 u0x56442f9e, ; 361 => android/widget/LinearLayout$LayoutParams
	i32 u0x568deecb, ; 362 => crc64338477404e88479c/TapAndPanGestureDetector
	i32 u0x56a1f2b6, ; 363 => com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy
	i32 u0x56dcd081, ; 364 => mono/android/content/DialogInterface_OnCancelListenerImplementor
	i32 u0x56e0f077, ; 365 => android/text/SpannableStringInternal
	i32 u0x5703751a, ; 366 => android/widget/ProgressBar
	i32 u0x574ad8f7, ; 367 => crc640ec207abc449b2ca/ShellToolbarTracker
	i32 u0x5788ec77, ; 368 => androidx/core/view/AccessibilityDelegateCompat
	i32 u0x57dee6d9, ; 369 => android/view/animation/AnimationUtils
	i32 u0x57eb2dc6, ; 370 => com/microsoft/maui/PlatformShadowDrawable
	i32 u0x57f522af, ; 371 => java/util/HashMap
	i32 u0x57fe728e, ; 372 => javax/security/auth/Subject
	i32 u0x58467de4, ; 373 => android/graphics/drawable/Animatable
	i32 u0x588e1716, ; 374 => android/view/View$OnHoverListener
	i32 u0x58c968b2, ; 375 => java/nio/channels/spi/AbstractInterruptibleChannel
	i32 u0x58fa8e39, ; 376 => java/util/concurrent/Executor
	i32 u0x58feb1d7, ; 377 => androidx/appcompat/view/menu/MenuPresenter$Callback
	i32 u0x5924ac1f, ; 378 => crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener
	i32 u0x593adb3c, ; 379 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor
	i32 u0x5997339c, ; 380 => androidx/core/view/WindowInsetsCompat$Type
	i32 u0x59cf8f6b, ; 381 => android/widget/Button
	i32 u0x5a00a85b, ; 382 => androidx/core/text/PrecomputedTextCompat$Params
	i32 u0x5a0c1cc6, ; 383 => crc6452ffdc5b34af3a0f/ViewFragment
	i32 u0x5acdf5ad, ; 384 => androidx/viewpager2/widget/ViewPager2$PageTransformer
	i32 u0x5aeca5f1, ; 385 => java/security/PrivateKey
	i32 u0x5c10ee2c, ; 386 => java/io/File
	i32 u0x5c494750, ; 387 => android/view/WindowManager$LayoutParams
	i32 u0x5c6b3b05, ; 388 => android/content/ContentProvider
	i32 u0x5c9ae70f, ; 389 => android/graphics/LinearGradient
	i32 u0x5d560868, ; 390 => androidx/lifecycle/viewmodel/CreationExtras$Key
	i32 u0x5d588b71, ; 391 => java/util/Comparator
	i32 u0x5da461e9, ; 392 => crc64b5e713d400f589b7/LinearGradientShaderFactory
	i32 u0x5dc17518, ; 393 => android/widget/AutoCompleteTextView
	i32 u0x5dcecc9b, ; 394 => android/app/AlertDialog
	i32 u0x5e499d39, ; 395 => mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor
	i32 u0x5e742e49, ; 396 => android/view/Display
	i32 u0x5e956e3c, ; 397 => android/os/Handler
	i32 u0x5ee96369, ; 398 => androidx/navigation/NavOptions
	i32 u0x60190a81, ; 399 => androidx/appcompat/widget/AppCompatTextView
	i32 u0x602a30a1, ; 400 => crc64338477404e88479c/ModalNavigationManager_ModalFragment
	i32 u0x60397957, ; 401 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat
	i32 u0x60696f62, ; 402 => kotlin/reflect/KType
	i32 u0x607c6b65, ; 403 => com/google/android/material/appbar/AppBarLayout$BaseBehavior
	i32 u0x60b33fcf, ; 404 => android/webkit/CookieManager
	i32 u0x613435ba, ; 405 => com/microsoft/maui/ImageLoaderCallback
	i32 u0x6189e9ec, ; 406 => androidx/navigation/NavViewModelStoreProvider
	i32 u0x61a146b7, ; 407 => java/security/Principal
	i32 u0x620ad162, ; 408 => android/graphics/Matrix
	i32 u0x62182271, ; 409 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder
	i32 u0x622147f6, ; 410 => android/view/View
	i32 u0x62545cb7, ; 411 => java/lang/RuntimeException
	i32 u0x62c5df0e, ; 412 => java/lang/IndexOutOfBoundsException
	i32 u0x630ec3df, ; 413 => android/view/View$OnTouchListener
	i32 u0x63ac2c80, ; 414 => crc645d80431ce5f73f11/TemplatedItemViewHolder
	i32 u0x642f84c3, ; 415 => java/lang/Byte
	i32 u0x64361bd8, ; 416 => crc6452ffdc5b34af3a0f/MauiPickerBase
	i32 u0x6492fb02, ; 417 => mono/android/view/View_OnAttachStateChangeListenerImplementor
	i32 u0x64966a00, ; 418 => android/widget/CheckBox
	i32 u0x649adfeb, ; 419 => com/microsoft/maui/PlatformWrapperView
	i32 u0x650d9fe7, ; 420 => android/widget/EdgeEffect
	i32 u0x653fbff6, ; 421 => androidx/navigation/NavDestination$DeepLinkMatch
	i32 u0x654bd255, ; 422 => android/widget/CompoundButton
	i32 u0x6597608e, ; 423 => android/view/ContentInfo
	i32 u0x665c41ad, ; 424 => androidx/navigation/NavDirections
	i32 u0x666aa4c6, ; 425 => java/lang/Character
	i32 u0x66d3bdea, ; 426 => kotlin/reflect/KParameter$Kind
	i32 u0x66ff73c3, ; 427 => android/view/animation/Animation$AnimationListener
	i32 u0x67045916, ; 428 => kotlin/coroutines/CoroutineContext$Key
	i32 u0x671880fe, ; 429 => android/view/MenuInflater
	i32 u0x6758efa2, ; 430 => android/content/ClipData$Item
	i32 u0x6772e35e, ; 431 => java/util/ListIterator
	i32 u0x67a3aa49, ; 432 => androidx/lifecycle/ViewModelStore
	i32 u0x67c2b7a7, ; 433 => android/widget/FrameLayout
	i32 u0x67c4792a, ; 434 => android/os/IInterface
	i32 u0x681a963a, ; 435 => android/app/Application$ActivityLifecycleCallbacks
	i32 u0x6827af36, ; 436 => com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener
	i32 u0x689f8691, ; 437 => java/util/Random
	i32 u0x68b2b367, ; 438 => androidx/core/view/ActionProvider$VisibilityListener
	i32 u0x68b8500d, ; 439 => android/text/Layout
	i32 u0x68b9fbe9, ; 440 => android/graphics/drawable/shapes/RectShape
	i32 u0x68c2e1e6, ; 441 => crc6452ffdc5b34af3a0f/MauiTimePicker
	i32 u0x68d070f5, ; 442 => android/os/BaseBundle
	i32 u0x68fa7a8c, ; 443 => android/content/ClipData
	i32 u0x69399da8, ; 444 => crc645d80431ce5f73f11/MauiRecyclerView_3
	i32 u0x69828be4, ; 445 => kotlinx/serialization/KSerializer
	i32 u0x69a95714, ; 446 => android/graphics/Point
	i32 u0x69cd2b8d, ; 447 => crc64f728827fec74e9c3/Toolbar_Container
	i32 u0x69d1c518, ; 448 => android/content/res/ColorStateList
	i32 u0x6a1bd0c1, ; 449 => java/util/SequencedCollection
	i32 u0x6a234096, ; 450 => androidx/core/view/WindowInsetsAnimationControlListenerCompat
	i32 u0x6ab4d8d7, ; 451 => android/text/Spanned
	i32 u0x6b1300b3, ; 452 => com/google/android/material/button/MaterialButton
	i32 u0x6bb7ffbf, ; 453 => android/view/View$OnClickListener
	i32 u0x6c313de9, ; 454 => kotlin/reflect/KFunction
	i32 u0x6cd3e11f, ; 455 => androidx/appcompat/widget/SearchView$OnCloseListener
	i32 u0x6cd77b83, ; 456 => androidx/appcompat/view/menu/SubMenuBuilder
	i32 u0x6d083925, ; 457 => crc64e1fb321c08285b90/SwitchCellView
	i32 u0x6d1f477f, ; 458 => android/graphics/drawable/ShapeDrawable
	i32 u0x6d652989, ; 459 => androidx/navigation/NavAction
	i32 u0x6d8a8ab7, ; 460 => crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener
	i32 u0x6e082885, ; 461 => crc6452ffdc5b34af3a0f/MauiPageControl
	i32 u0x6e3aaade, ; 462 => com/google/android/material/appbar/AppBarLayout$Behavior
	i32 u0x6e5f2b64, ; 463 => java/lang/Runnable
	i32 u0x6e7c8b15, ; 464 => com/google/android/material/badge/BadgeDrawable
	i32 u0x6e92f3e9, ; 465 => androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor
	i32 u0x6e9aa4b9, ; 466 => mono/android/text/TextWatcherImplementor
	i32 u0x6ece3e1d, ; 467 => android/widget/LinearLayout
	i32 u0x6ef0b866, ; 468 => androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory
	i32 u0x6f25776f, ; 469 => android/view/ViewConfiguration
	i32 u0x6f3d8b79, ; 470 => android/view/SearchEvent
	i32 u0x6f9085df, ; 471 => android/graphics/drawable/Drawable$ConstantState
	i32 u0x704e1132, ; 472 => crc64e1fb321c08285b90/BaseCellView
	i32 u0x705864f0, ; 473 => android/os/PowerManager
	i32 u0x705a3855, ; 474 => android/content/DialogInterface$OnMultiChoiceClickListener
	i32 u0x708c8a9b, ; 475 => kotlin/jvm/functions/Function1
	i32 u0x70a9a559, ; 476 => androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher
	i32 u0x70c5396a, ; 477 => android/graphics/drawable/InsetDrawable
	i32 u0x70de2257, ; 478 => androidx/fragment/app/FragmentActivity
	i32 u0x718714c5, ; 479 => android/text/style/ForegroundColorSpan
	i32 u0x718da316, ; 480 => androidx/lifecycle/ViewModelProvider
	i32 u0x71e3cb66, ; 481 => com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener
	i32 u0x7204c6b6, ; 482 => crc6452ffdc5b34af3a0f/MauiDatePicker
	i32 u0x72db92de, ; 483 => androidx/lifecycle/Lifecycle$Event
	i32 u0x73946ca3, ; 484 => com/microsoft/maui/PlatformMauiAppCompatActivity
	i32 u0x73dbb303, ; 485 => android/widget/AdapterView$OnItemSelectedListener
	i32 u0x73e1105c, ; 486 => java/io/OutputStream
	i32 u0x74e24c4e, ; 487 => mono/android/content/DialogInterface_OnDismissListenerImplementor
	i32 u0x74f3ac63, ; 488 => android/content/BroadcastReceiver
	i32 u0x74f58943, ; 489 => crc6419642c0f0ae4fee2/MainApplication
	i32 u0x752e0221, ; 490 => androidx/fragment/app/FragmentManager
	i32 u0x754292b2, ; 491 => androidx/navigation/NavArgument
	i32 u0x7562d335, ; 492 => mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor
	i32 u0x756f6f77, ; 493 => crc6452ffdc5b34af3a0f/StepperHandlerHolder
	i32 u0x7573a76b, ; 494 => crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData
	i32 u0x75743229, ; 495 => androidx/appcompat/app/AlertDialog$Builder
	i32 u0x75976883, ; 496 => crc640ec207abc449b2ca/ShellPageContainer
	i32 u0x75c34d61, ; 497 => androidx/viewpager2/adapter/FragmentStateAdapter
	i32 u0x75c9a43f, ; 498 => com/google/android/material/shape/EdgeTreatment
	i32 u0x75d35057, ; 499 => com/google/android/material/bottomsheet/BottomSheetDialog
	i32 u0x765ee0ac, ; 500 => android/app/Activity
	i32 u0x767c0d39, ; 501 => java/lang/Boolean
	i32 u0x768561de, ; 502 => crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener
	i32 u0x76a65018, ; 503 => android/widget/AdapterView$OnItemClickListener
	i32 u0x772ee9d8, ; 504 => android/graphics/drawable/GradientDrawable
	i32 u0x77b0a344, ; 505 => android/content/Intent
	i32 u0x77bf1500, ; 506 => com/google/android/material/elevation/ElevationOverlayProvider
	i32 u0x77e098bc, ; 507 => androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat
	i32 u0x780abb64, ; 508 => androidx/appcompat/widget/AppCompatImageView
	i32 u0x781647f7, ; 509 => android/view/accessibility/AccessibilityRecord
	i32 u0x78cbc3b9, ; 510 => android/widget/FrameLayout$LayoutParams
	i32 u0x78dd82d8, ; 511 => android/view/ContextThemeWrapper
	i32 u0x791579f7, ; 512 => android/widget/AdapterView
	i32 u0x7963618e, ; 513 => android/content/DialogInterface
	i32 u0x7993c871, ; 514 => android/widget/TimePicker
	i32 u0x79c4b7dd, ; 515 => android/text/style/BulletSpan
	i32 u0x79c62bf1, ; 516 => android/os/Parcelable$Creator
	i32 u0x79cac366, ; 517 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat
	i32 u0x79e9460d, ; 518 => com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener
	i32 u0x79fc40da, ; 519 => java/util/Locale
	i32 u0x7a0dbe3c, ; 520 => android/webkit/WebChromeClient$FileChooserParams
	i32 u0x7a3f2e65, ; 521 => java/util/function/ToLongFunction
	i32 u0x7a6505ce, ; 522 => mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor
	i32 u0x7a73c9e6, ; 523 => androidx/recyclerview/widget/RecyclerView$Recycler
	i32 u0x7ae35f4c, ; 524 => android/database/CharArrayBuffer
	i32 u0x7b05ec59, ; 525 => android/view/animation/Animation
	i32 u0x7b112ed3, ; 526 => android/widget/SpinnerAdapter
	i32 u0x7b26a38a, ; 527 => mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor
	i32 u0x7b89e3c9, ; 528 => crc64b5e713d400f589b7/MauiDrawable
	i32 u0x7b949de0, ; 529 => android/app/AlertDialog$Builder
	i32 u0x7bbef866, ; 530 => androidx/navigation/NavGraphNavigator
	i32 u0x7bf686d2, ; 531 => android/content/IntentSender
	i32 u0x7c04bc64, ; 532 => java/security/SecureRandom
	i32 u0x7c07630b, ; 533 => crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener
	i32 u0x7c9f6d9f, ; 534 => android/os/Environment
	i32 u0x7ca2ec86, ; 535 => androidx/fragment/app/FragmentManager$BackStackEntry
	i32 u0x7cf48e43, ; 536 => android/widget/AbsSeekBar
	i32 u0x7d39e03d, ; 537 => android/graphics/Path
	i32 u0x7dc43ae1, ; 538 => android/window/InputTransferToken
	i32 u0x7df3df82, ; 539 => androidx/appcompat/widget/SearchView$OnQueryTextListener
	i32 u0x7e04b61a, ; 540 => android/content/res/Configuration
	i32 u0x7e7413f3, ; 541 => kotlin/jvm/internal/markers/KMappedMarker
	i32 u0x7e7dc740, ; 542 => kotlin/coroutines/Continuation
	i32 u0x7e97d929, ; 543 => android/content/ContentValues
	i32 u0x7edb32fa, ; 544 => androidx/loader/app/LoaderManager
	i32 u0x7ef77429, ; 545 => kotlinx/coroutines/flow/SharedFlow
	i32 u0x7f0bcdf3, ; 546 => android/animation/AnimatorListenerAdapter
	i32 u0x7f5f2883, ; 547 => crc64338477404e88479c/FragmentContainer
	i32 u0x7f668fbf, ; 548 => crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener
	i32 u0x7f90f27b, ; 549 => androidx/navigation/NavGraph
	i32 u0x7fb69f47, ; 550 => com/google/android/material/appbar/AppBarLayout
	i32 u0x801f5d9d, ; 551 => crc64e1fb321c08285b90/ConditionalFocusLayout
	i32 u0x806b383f, ; 552 => android/view/animation/AnimationSet
	i32 u0x806ed615, ; 553 => com/google/android/material/tabs/TabLayout
	i32 u0x814108db, ; 554 => kotlin/reflect/KCallable
	i32 u0x816ed070, ; 555 => androidx/navigation/NavDestination
	i32 u0x81a4c641, ; 556 => com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener
	i32 u0x81c3131c, ; 557 => androidx/lifecycle/Lifecycle
	i32 u0x82225f2a, ; 558 => mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor
	i32 u0x827a2712, ; 559 => android/graphics/Paint$FontMetrics
	i32 u0x828c7aaa, ; 560 => java/security/Key
	i32 u0x82a50e2b, ; 561 => androidx/lifecycle/Lifecycle$State
	i32 u0x82ac1c5f, ; 562 => androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior
	i32 u0x83625f1e, ; 563 => org/xmlpull/v1/XmlPullParser
	i32 u0x83a26d33, ; 564 => mono/android/content/DialogInterface_OnShowListenerImplementor
	i32 u0x84105191, ; 565 => crc645d80431ce5f73f11/TextViewHolder
	i32 u0x848534fd, ; 566 => androidx/appcompat/widget/TooltipCompat
	i32 u0x84c04103, ; 567 => androidx/fragment/app/FragmentOnAttachListener
	i32 u0x84fcfe0d, ; 568 => androidx/core/app/ActivityOptionsCompat
	i32 u0x854542ba, ; 569 => androidx/core/view/ActionProvider$SubUiVisibilityListener
	i32 u0x85a05c5d, ; 570 => androidx/appcompat/widget/ScrollingTabContainerView
	i32 u0x85ee6357, ; 571 => androidx/navigation/Navigator$Extras
	i32 u0x868456ef, ; 572 => crc6452ffdc5b34af3a0f/WrapperView
	i32 u0x871f05f2, ; 573 => crc6452ffdc5b34af3a0f/MauiWebView
	i32 u0x8724f930, ; 574 => androidx/recyclerview/widget/RecyclerView$OnFlingListener
	i32 u0x873fa2a1, ; 575 => java/net/UnknownServiceException
	i32 u0x875b8bea, ; 576 => java/net/Proxy$Type
	i32 u0x87a0f669, ; 577 => androidx/core/view/MenuItemCompat$OnActionExpandListener
	i32 u0x87e3ff73, ; 578 => androidx/appcompat/widget/AppCompatImageButton
	i32 u0x882d17e1, ; 579 => android/app/Application
	i32 u0x8830928f, ; 580 => com/microsoft/maui/PlatformDispatcher
	i32 u0x886b9456, ; 581 => com/google/android/material/checkbox/MaterialCheckBox
	i32 u0x88c5fabc, ; 582 => android/view/accessibility/AccessibilityNodeInfo
	i32 u0x88cf1b4e, ; 583 => androidx/fragment/app/FragmentManager$OnBackStackChangedListener
	i32 u0x88e074f7, ; 584 => android/content/IntentFilter
	i32 u0x893ab6b3, ; 585 => kotlinx/serialization/SerializationStrategy
	i32 u0x89a49e25, ; 586 => android/graphics/Path$Op
	i32 u0x89c2c9ef, ; 587 => com/google/android/material/appbar/ViewOffsetBehavior
	i32 u0x8a121279, ; 588 => androidx/lifecycle/ViewModelStoreOwner
	i32 u0x8a35f941, ; 589 => kotlin/reflect/KVariance
	i32 u0x8a4bc22b, ; 590 => crc64338477404e88479c/MauiViewPager
	i32 u0x8a67f0b6, ; 591 => kotlin/reflect/KTypeProjection
	i32 u0x8a9efa0c, ; 592 => java/lang/Iterable
	i32 u0x8ae4259c, ; 593 => androidx/activity/result/ActivityResultCallback
	i32 u0x8af094d1, ; 594 => crc6452ffdc5b34af3a0f/BorderDrawable
	i32 u0x8b6202b1, ; 595 => android/view/contentcapture/ContentCaptureSession
	i32 u0x8b8800b8, ; 596 => androidx/recyclerview/widget/PagerSnapHelper
	i32 u0x8c1a4154, ; 597 => androidx/recyclerview/widget/RecyclerView$OnScrollListener
	i32 u0x8cb0a476, ; 598 => crc64338477404e88479c/InnerScaleListener
	i32 u0x8ce3a5d6, ; 599 => java/lang/Enum
	i32 u0x8d1d3103, ; 600 => android/widget/SearchView
	i32 u0x8d57f1bc, ; 601 => android/widget/Switch
	i32 u0x8e637552, ; 602 => crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener
	i32 u0x8e6ad92b, ; 603 => android/view/ViewStructure
	i32 u0x8ecc3a71, ; 604 => android/view/View$OnLayoutChangeListener
	i32 u0x8ed9958c, ; 605 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout
	i32 u0x8eff3e69, ; 606 => androidx/recyclerview/widget/RecyclerView
	i32 u0x8f4b02f6, ; 607 => android/app/PendingIntent
	i32 u0x8f68a41d, ; 608 => android/graphics/Shader
	i32 u0x8fa17b2d, ; 609 => android/util/TypedValue
	i32 u0x8fbb1ca5, ; 610 => java/lang/UnsupportedOperationException
	i32 u0x903fdde8, ; 611 => android/content/res/Resources$Theme
	i32 u0x90aa95f0, ; 612 => mono/android/widget/TextView_OnEditorActionListenerImplementor
	i32 u0x90cdc46b, ; 613 => crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult
	i32 u0x91368633, ; 614 => androidx/cursoradapter/widget/CursorAdapter
	i32 u0x9164c142, ; 615 => crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable
	i32 u0x918f9763, ; 616 => androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener
	i32 u0x91a3eaf3, ; 617 => java/net/SocketException
	i32 u0x91a87d29, ; 618 => android/graphics/PathEffect
	i32 u0x91a93d72, ; 619 => androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback
	i32 u0x91b08077, ; 620 => crc64e1fb321c08285b90/EntryCellEditText
	i32 u0x920377cb, ; 621 => mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor
	i32 u0x922a94b5, ; 622 => java/io/RandomAccessFile
	i32 u0x9254a809, ; 623 => android/view/WindowInsetsAnimationControlListener
	i32 u0x929b0a45, ; 624 => com/google/android/material/appbar/AppBarLayout$ChildScrollEffect
	i32 u0x929cda6a, ; 625 => androidx/recyclerview/widget/ItemTouchUIUtil
	i32 u0x92a4a287, ; 626 => kotlinx/serialization/encoding/CompositeEncoder
	i32 u0x92b40e49, ; 627 => org/xmlpull/v1/XmlPullParserException
	i32 u0x92e47122, ; 628 => crc6452ffdc5b34af3a0f/SwipeViewPager
	i32 u0x9313713b, ; 629 => android/window/OnBackInvokedDispatcher
	i32 u0x93615193, ; 630 => crc6452ffdc5b34af3a0f/ContentViewGroup
	i32 u0x938427ee, ; 631 => crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack
	i32 u0x93a0f3b2, ; 632 => crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter
	i32 u0x93a19d5c, ; 633 => crc640ec207abc449b2ca/ShellFragmentStateAdapter
	i32 u0x93c633e2, ; 634 => androidx/core/view/WindowInsetsAnimationControllerCompat
	i32 u0x93e1af4c, ; 635 => mono/androidx/fragment/app/FragmentOnAttachListenerImplementor
	i32 u0x941c28a5, ; 636 => android/webkit/WebSettings
	i32 u0x949cba0b, ; 637 => android/text/StaticLayout
	i32 u0x9573bcb0, ; 638 => crc640ec207abc449b2ca/ShellSearchView
	i32 u0x95a99c55, ; 639 => com/google/android/material/appbar/HeaderScrollingViewBehavior
	i32 u0x96e58376, ; 640 => androidx/core/content/res/ResourcesCompat
	i32 u0x96f82d4f, ; 641 => android/content/SharedPreferences$OnSharedPreferenceChangeListener
	i32 u0x97807eec, ; 642 => android/view/ContextMenu$ContextMenuInfo
	i32 u0x97a30613, ; 643 => androidx/core/view/MenuItemCompat
	i32 u0x97db463b, ; 644 => com/microsoft/maui/PlatformContentViewGroup
	i32 u0x9820b7c9, ; 645 => androidx/core/view/ScrollingView
	i32 u0x9871c90a, ; 646 => mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor
	i32 u0x9873a0ac, ; 647 => com/google/android/material/tabs/TabLayout$OnTabSelectedListener
	i32 u0x987a2d5e, ; 648 => java/io/FileInputStream
	i32 u0x987e88d8, ; 649 => crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat
	i32 u0x9881b4d0, ; 650 => android/graphics/drawable/Icon
	i32 u0x98ebcde1, ; 651 => android/app/DatePickerDialog$OnDateSetListener
	i32 u0x99197446, ; 652 => androidx/appcompat/widget/AppCompatEditText
	i32 u0x9926febb, ; 653 => android/view/WindowInsetsController$OnControllableInsetsChangedListener
	i32 u0x99631a62, ; 654 => crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks
	i32 u0x99ae9b84, ; 655 => android/widget/ImageView$ScaleType
	i32 u0x99b1b0b7, ; 656 => com/microsoft/maui/HybridJavaScriptInterface
	i32 u0x99eec34b, ; 657 => androidx/navigation/NavController$OnDestinationChangedListener
	i32 u0x99f64847, ; 658 => mono/android/animation/AnimatorEventDispatcher
	i32 u0x9a1d2e88, ; 659 => java/text/NumberFormat
	i32 u0x9a2f021b, ; 660 => android/content/DialogInterface$OnKeyListener
	i32 u0x9aa0facc, ; 661 => android/widget/BaseAdapter
	i32 u0x9aad386a, ; 662 => androidx/core/content/res/ResourcesCompat$FontCallback
	i32 u0x9aed999f, ; 663 => android/view/SurfaceControl
	i32 u0x9b0e465f, ; 664 => androidx/navigation/NavDeepLinkRequest
	i32 u0x9b179eb2, ; 665 => crc6452ffdc5b34af3a0f/MauiLayerDrawable
	i32 u0x9ca85dca, ; 666 => android/content/DialogInterface$OnCancelListener
	i32 u0x9d2fdb8f, ; 667 => android/content/pm/PackageManager
	i32 u0x9d44121c, ; 668 => androidx/appcompat/app/AppCompatDelegate
	i32 u0x9d796341, ; 669 => com/google/android/material/navigation/NavigationView
	i32 u0x9d7fe3dc, ; 670 => android/content/pm/Signature
	i32 u0x9da7ab0b, ; 671 => androidx/core/widget/NestedScrollView
	i32 u0x9da99a31, ; 672 => androidx/core/app/ComponentActivity$ExtraData
	i32 u0x9dd23514, ; 673 => androidx/core/graphics/drawable/DrawableCompat
	i32 u0x9df33784, ; 674 => androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy
	i32 u0x9e00de95, ; 675 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat
	i32 u0x9e3b164d, ; 676 => java/io/InterruptedIOException
	i32 u0x9ea9f8cf, ; 677 => android/widget/ImageButton
	i32 u0x9ebf0e07, ; 678 => mono/java/lang/Runnable
	i32 u0x9ed79303, ; 679 => javax/net/ssl/HostnameVerifier
	i32 u0x9f11a71b, ; 680 => kotlin/reflect/KDeclarationContainer
	i32 u0x9f1e7849, ; 681 => crc6452ffdc5b34af3a0f/MauiAppCompatEditText
	i32 u0x9f7aa877, ; 682 => android/webkit/WebViewClient
	i32 u0x9fba5c10, ; 683 => android/view/KeyboardShortcutInfo
	i32 u0x9fc26a20, ; 684 => mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor
	i32 u0x9fd00367, ; 685 => android/widget/Adapter
	i32 u0x9fdb1e25, ; 686 => androidx/appcompat/graphics/drawable/DrawableWrapperCompat
	i32 u0x9fdbe44e, ; 687 => android/view/MotionEvent
	i32 u0xa0343f64, ; 688 => android/widget/TextView
	i32 u0xa067f1d6, ; 689 => crc64b5e713d400f589b7/RadialGradientShaderFactory
	i32 u0xa06deb73, ; 690 => android/view/View$OnKeyListener
	i32 u0xa0ad0a01, ; 691 => crc645d80431ce5f73f11/SingleSnapHelper
	i32 u0xa0e7f4d5, ; 692 => android/webkit/WebResourceRequest
	i32 u0xa10b2832, ; 693 => androidx/lifecycle/viewmodel/ViewModelInitializer
	i32 u0xa10dac39, ; 694 => androidx/appcompat/widget/SwitchCompat
	i32 u0xa1717eed, ; 695 => android/graphics/drawable/ShapeDrawable$ShaderFactory
	i32 u0xa2347fe6, ; 696 => crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener
	i32 u0xa2384ed3, ; 697 => android/graphics/drawable/Drawable
	i32 u0xa2d12ed5, ; 698 => android/view/View$MeasureSpec
	i32 u0xa304302a, ; 699 => androidx/core/widget/NestedScrollView$OnScrollChangeListener
	i32 u0xa37de40c, ; 700 => androidx/activity/result/ActivityResultRegistry
	i32 u0xa3ce43ef, ; 701 => crc64e1fb321c08285b90/TableViewModelRenderer
	i32 u0xa4416377, ; 702 => android/text/Spannable
	i32 u0xa4ab3847, ; 703 => java/lang/Float
	i32 u0xa537c29d, ; 704 => android/graphics/drawable/LayerDrawable
	i32 u0xa5d6e364, ; 705 => androidx/appcompat/widget/SearchView$OnSuggestionListener
	i32 u0xa63f9a0a, ; 706 => androidx/navigation/NavInflater
	i32 u0xa6b4071d, ; 707 => android/text/format/DateFormat
	i32 u0xa70f782c, ; 708 => crc6452ffdc5b34af3a0f/MauiScrollView
	i32 u0xa7d2e3c3, ; 709 => android/os/Build
	i32 u0xa7f9e1e3, ; 710 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout
	i32 u0xa82239ca, ; 711 => crc6452ffdc5b34af3a0f/MauiBoxView
	i32 u0xa855e6a7, ; 712 => androidx/appcompat/widget/AppCompatButton
	i32 u0xa91fd561, ; 713 => android/view/DragEvent
	i32 u0xa96e63d3, ; 714 => crc645d80431ce5f73f11/ScrollHelper
	i32 u0xa9e1e5e2, ; 715 => java/util/function/IntFunction
	i32 u0xaa090c56, ; 716 => androidx/cardview/widget/CardView
	i32 u0xaa4a698b, ; 717 => com/google/android/material/shape/CornerTreatment
	i32 u0xaa4fbe78, ; 718 => mono/android/view/View_OnKeyListenerImplementor
	i32 u0xaa714f7e, ; 719 => java/util/Spliterator
	i32 u0xaa722a66, ; 720 => android/view/WindowInsetsAnimation$Bounds
	i32 u0xaa8288ed, ; 721 => crc640ec207abc449b2ca/ShellFlyoutLayout
	i32 u0xaaa43bcf, ; 722 => androidx/core/view/ActionProvider
	i32 u0xaad17d09, ; 723 => androidx/recyclerview/widget/SnapHelper
	i32 u0xaae19488, ; 724 => android/view/ActionMode
	i32 u0xab40258f, ; 725 => android/content/pm/PackageInfo
	i32 u0xab580b31, ; 726 => java/lang/StackTraceElement
	i32 u0xad202668, ; 727 => android/view/WindowInsetsAnimationController
	i32 u0xad2a0fae, ; 728 => android/text/style/ParagraphStyle
	i32 u0xad6c6892, ; 729 => androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo
	i32 u0xadf680a3, ; 730 => android/content/DialogInterface$OnClickListener
	i32 u0xae34b971, ; 731 => android/graphics/BlendMode
	i32 u0xaed01dcc, ; 732 => android/view/InputEvent
	i32 u0xaeddab28, ; 733 => android/util/AttributeSet
	i32 u0xaf084182, ; 734 => androidx/fragment/app/strictmode/Violation
	i32 u0xaf0e9942, ; 735 => androidx/recyclerview/widget/LinearSmoothScroller
	i32 u0xaf6773fc, ; 736 => java/lang/Exception
	i32 u0xaf73e94d, ; 737 => crc645d80431ce5f73f11/MauiCarouselRecyclerView
	i32 u0xaf862ea3, ; 738 => android/widget/ListView
	i32 u0xb00cb718, ; 739 => android/view/WindowInsetsController
	i32 u0xb01f0e14, ; 740 => androidx/appcompat/app/ActionBar
	i32 u0xb0a3f732, ; 741 => androidx/viewpager/widget/ViewPager$OnAdapterChangeListener
	i32 u0xb0f78dd9, ; 742 => mono/android/view/animation/Animation_AnimationListenerImplementor
	i32 u0xb152a219, ; 743 => java/text/Format
	i32 u0xb1a6fc2a, ; 744 => mono/android/runtime/JavaArray
	i32 u0xb1d7f461, ; 745 => mono/android/TypeManager
	i32 u0xb1f26d38, ; 746 => android/text/method/DigitsKeyListener
	i32 u0xb253e191, ; 747 => crc645d80431ce5f73f11/SelectableViewHolder
	i32 u0xb27fd2fc, ; 748 => androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat
	i32 u0xb2c7c079, ; 749 => androidx/core/view/ContentInfoCompat
	i32 u0xb2d9b850, ; 750 => crc645d80431ce5f73f11/SizedItemContentView
	i32 u0xb2e0546e, ; 751 => crc6488302ad6e9e4df1a/ImageLoaderResultCallback
	i32 u0xb2ea14bd, ; 752 => crc645d80431ce5f73f11/SpacingItemDecoration
	i32 u0xb2f122ea, ; 753 => androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action
	i32 u0xb36373f3, ; 754 => androidx/savedstate/SavedStateRegistry$SavedStateProvider
	i32 u0xb37a7bd1, ; 755 => androidx/appcompat/app/ActionBar$LayoutParams
	i32 u0xb3aaaba5, ; 756 => crc64e1fb321c08285b90/CellAdapter
	i32 u0xb3b2298b, ; 757 => kotlin/Function
	i32 u0xb41bb47f, ; 758 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer
	i32 u0xb4216866, ; 759 => crc64338477404e88479c/ControlsAccessibilityDelegate
	i32 u0xb4355675, ; 760 => android/text/SpannableString
	i32 u0xb438f723, ; 761 => com/microsoft/maui/PlatformAppCompatTextView
	i32 u0xb47b8436, ; 762 => crc645d80431ce5f73f11/DataChangeObserver
	i32 u0xb4c4fd79, ; 763 => java/io/StringWriter
	i32 u0xb5efe08f, ; 764 => android/view/animation/DecelerateInterpolator
	i32 u0xb5f14d6b, ; 765 => com/google/android/material/shape/CornerSize
	i32 u0xb6265a3c, ; 766 => androidx/core/view/WindowInsetsAnimationCompat
	i32 u0xb7220b27, ; 767 => java/util/concurrent/Future
	i32 u0xb74574e5, ; 768 => androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback
	i32 u0xb751e489, ; 769 => androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams
	i32 u0xb783dae8, ; 770 => crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter
	i32 u0xb7b96051, ; 771 => crc64e1fb321c08285b90/ListViewAdapter
	i32 u0xb7c06eb6, ; 772 => android/util/Pair
	i32 u0xb7e59bab, ; 773 => com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback
	i32 u0xb7ff321b, ; 774 => androidx/appcompat/app/ActionBarDrawerToggle
	i32 u0xb803c5fe, ; 775 => android/preference/PreferenceManager
	i32 u0xb8b0d69a, ; 776 => android/webkit/WebResourceError
	i32 u0xb91a1a14, ; 777 => crc640ec207abc449b2ca/ShellSearchViewAdapter
	i32 u0xb92af814, ; 778 => androidx/viewpager2/widget/ViewPager2
	i32 u0xb9465a21, ; 779 => crc645d80431ce5f73f11/CarouselViewAdapter_2
	i32 u0xb9c52a1f, ; 780 => android/view/View$AccessibilityDelegate
	i32 u0xb9cef92b, ; 781 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat
	i32 u0xb9dbcdb9, ; 782 => crc64338477404e88479c/InnerGestureListener
	i32 u0xb9f9d446, ; 783 => crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks
	i32 u0xbb361208, ; 784 => crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable
	i32 u0xbb3e4f07, ; 785 => android/view/ScaleGestureDetector
	i32 u0xbb77c486, ; 786 => crc645d80431ce5f73f11/ItemContentView
	i32 u0xbb977183, ; 787 => crc645d80431ce5f73f11/CarouselViewOnScrollListener
	i32 u0xbba3aad6, ; 788 => android/animation/ValueAnimator$AnimatorUpdateListener
	i32 u0xbbcd0eb2, ; 789 => mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor
	i32 u0xbbda7222, ; 790 => androidx/appcompat/view/menu/MenuItemImpl
	i32 u0xbbfffad3, ; 791 => androidx/appcompat/view/menu/MenuBuilder$Callback
	i32 u0xbc73ced5, ; 792 => androidx/appcompat/content/res/AppCompatResources
	i32 u0xbc9ed48b, ; 793 => mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor
	i32 u0xbd2317bb, ; 794 => android/content/pm/ShortcutInfo
	i32 u0xbd262c45, ; 795 => android/os/IBinder
	i32 u0xbd267561, ; 796 => android/graphics/Path$Direction
	i32 u0xbd71139f, ; 797 => android/view/inputmethod/InputMethodManager
	i32 u0xbd79b67e, ; 798 => com/microsoft/maui/PlatformLineHeightSpan
	i32 u0xbd9816ec, ; 799 => androidx/appcompat/widget/LinearLayoutCompat
	i32 u0xbdbcdc8f, ; 800 => android/view/ActionMode$Callback
	i32 u0xbdd653d9, ; 801 => crc645d80431ce5f73f11/SimpleItemTouchHelperCallback
	i32 u0xbddd6b44, ; 802 => androidx/navigation/NavigatorState
	i32 u0xbe184831, ; 803 => android/graphics/MaskFilter
	i32 u0xbe1e310b, ; 804 => androidx/appcompat/widget/Toolbar$OnMenuItemClickListener
	i32 u0xbe57cab0, ; 805 => android/text/style/ClickableSpan
	i32 u0xbe7236f1, ; 806 => com/google/android/material/shape/ShapeAppearanceModel
	i32 u0xbed6d31f, ; 807 => android/content/ClipDescription
	i32 u0xbeeddf83, ; 808 => android/widget/SeekBar
	i32 u0xbeef72b4, ; 809 => android/view/KeyboardShortcutGroup
	i32 u0xbf32553d, ; 810 => android/os/LocaleList
	i32 u0xbf9d1a04, ; 811 => android/view/WindowManager
	i32 u0xbfeacd6d, ; 812 => crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity
	i32 u0xbff0c2b9, ; 813 => androidx/navigation/NavType
	i32 u0xc019ab9d, ; 814 => androidx/recyclerview/widget/ItemTouchHelper$Callback
	i32 u0xc02ffb33, ; 815 => kotlin/jvm/functions/Function0
	i32 u0xc039ad33, ; 816 => androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties
	i32 u0xc166dc4b, ; 817 => crc640ec207abc449b2ca/ShellItemRenderer
	i32 u0xc189e81b, ; 818 => crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick
	i32 u0xc1a8a34a, ; 819 => kotlinx/coroutines/flow/Flow
	i32 u0xc1af7a0a, ; 820 => android/window/BackEvent
	i32 u0xc20d3e5c, ; 821 => com/google/android/material/navigation/NavigationBarMenuView
	i32 u0xc27806ec, ; 822 => android/graphics/BlurMaskFilter$Blur
	i32 u0xc2f8d665, ; 823 => mono/android/view/View_OnLayoutChangeListenerImplementor
	i32 u0xc39e36a2, ; 824 => android/view/MenuItem
	i32 u0xc3f2d711, ; 825 => androidx/activity/FullyDrawnReporter
	i32 u0xc3f7408a, ; 826 => crc645d80431ce5f73f11/EdgeSnapHelper
	i32 u0xc41ddd9a, ; 827 => android/view/ViewPropertyAnimator
	i32 u0xc456317e, ; 828 => android/graphics/Shader$TileMode
	i32 u0xc48747d2, ; 829 => kotlinx/coroutines/CoroutineScope
	i32 u0xc4acc23e, ; 830 => androidx/core/view/ScaleGestureDetectorCompat
	i32 u0xc4bfd570, ; 831 => javax/net/ssl/SSLSession
	i32 u0xc4e3199e, ; 832 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat
	i32 u0xc4f9e681, ; 833 => androidx/navigation/NavBackStackEntry
	i32 u0xc56e7e9d, ; 834 => com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener
	i32 u0xc5df2394, ; 835 => java/net/Proxy
	i32 u0xc5f08444, ; 836 => androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener
	i32 u0xc6d796a7, ; 837 => crc6452ffdc5b34af3a0f/MauiHybridWebViewClient
	i32 u0xc70f7058, ; 838 => androidx/core/util/Predicate
	i32 u0xc726531b, ; 839 => androidx/fragment/app/strictmode/FragmentStrictMode
	i32 u0xc73e8ae5, ; 840 => androidx/recyclerview/widget/LinearSnapHelper
	i32 u0xc74fb4e7, ; 841 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener
	i32 u0xc75b6eef, ; 842 => androidx/core/view/ViewStructureCompat
	i32 u0xc78628c1, ; 843 => android/graphics/Insets
	i32 u0xc8148a69, ; 844 => android/graphics/DashPathEffect
	i32 u0xc83ffa94, ; 845 => crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2
	i32 u0xc8c8236e, ; 846 => android/graphics/drawable/shapes/Shape
	i32 u0xc8e082ac, ; 847 => crc6488302ad6e9e4df1a/MauiAppCompatActivity
	i32 u0xc8f71d8d, ; 848 => androidx/core/graphics/Insets
	i32 u0xc9666c22, ; 849 => androidx/core/util/Consumer
	i32 u0xc971f3df, ; 850 => android/text/Editable
	i32 u0xc9df47c6, ; 851 => androidx/core/content/pm/PackageInfoCompat
	i32 u0xc9fc6f20, ; 852 => android/view/View$OnFocusChangeListener
	i32 u0xcabc363c, ; 853 => android/view/ScaleGestureDetector$SimpleOnScaleGestureListener
	i32 u0xcb2b39d0, ; 854 => android/webkit/WebMessage
	i32 u0xcb379d37, ; 855 => javax/net/ssl/HttpsURLConnection
	i32 u0xcb4acc01, ; 856 => androidx/lifecycle/viewmodel/CreationExtras
	i32 u0xcbab6a1c, ; 857 => android/view/View$OnScrollChangeListener
	i32 u0xcbf0502f, ; 858 => com/google/android/material/tabs/TabLayout$Tab
	i32 u0xcc0df96f, ; 859 => java/lang/Number
	i32 u0xcc7ee4cc, ; 860 => android/content/SharedPreferences
	i32 u0xcd3884d5, ; 861 => mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor
	i32 u0xcdc40ec2, ; 862 => com/microsoft/maui/BuildConfig
	i32 u0xcdfbae9f, ; 863 => android/view/accessibility/AccessibilityWindowInfo
	i32 u0xcf7e6cf6, ; 864 => androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback
	i32 u0xcf92bc3a, ; 865 => crc645d80431ce5f73f11/GroupableItemsViewAdapter_2
	i32 u0xd01ded62, ; 866 => androidx/appcompat/app/AppCompatDialog
	i32 u0xd07999b7, ; 867 => android/graphics/Paint$FontMetricsInt
	i32 u0xd0850756, ; 868 => crc645d80431ce5f73f11/EndSnapHelper
	i32 u0xd0967088, ; 869 => crc645d80431ce5f73f11/EndSingleSnapHelper
	i32 u0xd0c6fce3, ; 870 => mono/android/view/View_OnScrollChangeListenerImplementor
	i32 u0xd0daecfc, ; 871 => com/google/android/material/bottomnavigation/BottomNavigationItemView
	i32 u0xd191832f, ; 872 => java/util/function/IntConsumer
	i32 u0xd1cde4e5, ; 873 => java/net/URLConnection
	i32 u0xd1e48dd6, ; 874 => androidx/core/view/ViewCompat
	i32 u0xd28ff81d, ; 875 => android/text/style/WrapTogetherSpan
	i32 u0xd2d86a5e, ; 876 => android/graphics/Paint$Cap
	i32 u0xd31e7330, ; 877 => com/google/android/material/tabs/TabLayoutMediator
	i32 u0xd362931d, ; 878 => android/text/TextDirectionHeuristic
	i32 u0xd3b11951, ; 879 => crc645d80431ce5f73f11/SimpleViewHolder
	i32 u0xd4128768, ; 880 => android/util/SizeF
	i32 u0xd43e92b6, ; 881 => androidx/core/view/ViewPropertyAnimatorUpdateListener
	i32 u0xd4dd51a8, ; 882 => androidx/appcompat/view/menu/MenuBuilder
	i32 u0xd4f35a51, ; 883 => com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener
	i32 u0xd52920d3, ; 884 => android/runtime/JavaProxyThrowable
	i32 u0xd5c43ed3, ; 885 => crc640ec207abc449b2ca/ShellItemRendererBase
	i32 u0xd66fd9dd, ; 886 => android/widget/AbsListView
	i32 u0xd6b37f87, ; 887 => crc645d80431ce5f73f11/EmptyViewAdapter
	i32 u0xd70d7c57, ; 888 => androidx/recyclerview/widget/RecyclerView$State
	i32 u0xd72952f7, ; 889 => android/os/CancellationSignal
	i32 u0xd7432b3d, ; 890 => kotlinx/serialization/encoding/CompositeDecoder
	i32 u0xd74ff3a1, ; 891 => androidx/navigation/fragment/FragmentNavigator$Destination
	i32 u0xd76cff7f, ; 892 => androidx/appcompat/app/ActionBar$Tab
	i32 u0xd7c5fed1, ; 893 => java/util/function/ToIntFunction
	i32 u0xd7d31db6, ; 894 => androidx/appcompat/app/ActionBar$TabListener
	i32 u0xd89e92c7, ; 895 => android/graphics/drawable/AnimationDrawable
	i32 u0xd8e726a8, ; 896 => kotlinx/coroutines/flow/FlowCollector
	i32 u0xd9a7e440, ; 897 => crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener
	i32 u0xda3a2e42, ; 898 => crc64e1fb321c08285b90/ViewRenderer
	i32 u0xda7f484d, ; 899 => android/view/LayoutInflater
	i32 u0xda867062, ; 900 => java/lang/String
	i32 u0xda91fa6b, ; 901 => androidx/recyclerview/widget/RecyclerView$Adapter
	i32 u0xda9e431c, ; 902 => androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup
	i32 u0xdab17055, ; 903 => java/net/InetSocketAddress
	i32 u0xdaf44ffb, ; 904 => android/view/accessibility/AccessibilityEvent
	i32 u0xdb1ab932, ; 905 => crc643f2b18b2570eaa5a/PlatformGraphicsView
	i32 u0xdb5c1df3, ; 906 => androidx/activity/ComponentDialog
	i32 u0xdb8b0f9a, ; 907 => mono/android/runtime/JavaObject
	i32 u0xdb9674ba, ; 908 => android/view/ActionProvider
	i32 u0xdbe1e516, ; 909 => androidx/lifecycle/ViewModel
	i32 u0xdc37ab30, ; 910 => mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor
	i32 u0xdc76bd11, ; 911 => android/text/SpannableStringBuilder
	i32 u0xdc9dd54d, ; 912 => android/graphics/Paint$Style
	i32 u0xdcab8f7d, ; 913 => java/lang/Double
	i32 u0xdcd8956d, ; 914 => kotlin/reflect/KAnnotatedElement
	i32 u0xdd3973f2, ; 915 => android/text/style/MetricAffectingSpan
	i32 u0xdd7b8a2d, ; 916 => android/os/Build$VERSION
	i32 u0xddcb4d38, ; 917 => android/text/NoCopySpan
	i32 u0xdde616ce, ; 918 => javax/net/SocketFactory
	i32 u0xdde79766, ; 919 => android/text/method/NumberKeyListener
	i32 u0xde103843, ; 920 => crc640ec207abc449b2ca/ShellSectionRenderer
	i32 u0xde20a2a0, ; 921 => java/net/ProtocolException
	i32 u0xdecff86c, ; 922 => android/webkit/WebChromeClient
	i32 u0xdf443a44, ; 923 => android/view/Choreographer
	i32 u0xdfb71e99, ; 924 => android/text/style/TypefaceSpan
	i32 u0xe01bf9a2, ; 925 => android/graphics/Bitmap
	i32 u0xe0237554, ; 926 => androidx/drawerlayout/widget/DrawerLayout$DrawerListener
	i32 u0xe03d126e, ; 927 => androidx/activity/OnBackPressedDispatcher
	i32 u0xe057d7d6, ; 928 => android/view/Window
	i32 u0xe105a023, ; 929 => androidx/core/view/WindowInsetsControllerCompat
	i32 u0xe1996344, ; 930 => androidx/customview/widget/Openable
	i32 u0xe1f6cebd, ; 931 => java/security/spec/KeySpec
	i32 u0xe32a2fba, ; 932 => android/content/res/TypedArray
	i32 u0xe3e4c8e2, ; 933 => android/net/Uri
	i32 u0xe414eff2, ; 934 => android/graphics/drawable/DrawableWrapper
	i32 u0xe42c024c, ; 935 => crc640ec207abc449b2ca/RecyclerViewContainer
	i32 u0xe42c4bfa, ; 936 => android/widget/TextView$BufferType
	i32 u0xe51d476f, ; 937 => mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor
	i32 u0xe5221abb, ; 938 => android/graphics/Path$FillType
	i32 u0xe57e2b32, ; 939 => androidx/navigation/fragment/NavHostFragment
	i32 u0xe5cb91a7, ; 940 => androidx/appcompat/view/ActionMode
	i32 u0xe6087a1c, ; 941 => androidx/viewpager2/adapter/FragmentViewHolder
	i32 u0xe6870f3e, ; 942 => crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper
	i32 u0xe6cf0c89, ; 943 => android/view/animation/BaseInterpolator
	i32 u0xe6d2683b, ; 944 => com/google/android/material/navigation/NavigationBarView
	i32 u0xe6d69f7f, ; 945 => android/graphics/ColorFilter
	i32 u0xe727a76c, ; 946 => androidx/activity/BackEventCompat
	i32 u0xe76b5314, ; 947 => java/lang/Class
	i32 u0xe7825e60, ; 948 => android/webkit/WebView
	i32 u0xe78ae646, ; 949 => android/text/Html
	i32 u0xe7befe90, ; 950 => com/google/android/material/appbar/MaterialToolbar
	i32 u0xe82f7a1f, ; 951 => androidx/core/app/SharedElementCallback
	i32 u0xe83ca42e, ; 952 => android/widget/ImageView
	i32 u0xe87a4841, ; 953 => android/graphics/Typeface
	i32 u0xe87e252b, ; 954 => java/io/InputStream
	i32 u0xe8915163, ; 955 => android/text/InputFilter
	i32 u0xe8d164a8, ; 956 => android/webkit/ValueCallback
	i32 u0xe8f04dff, ; 957 => crc645d80431ce5f73f11/SelectableItemsViewAdapter_2
	i32 u0xe9334697, ; 958 => java/security/KeyStore
	i32 u0xe95013a9, ; 959 => kotlin/coroutines/CoroutineContext
	i32 u0xe9a2c576, ; 960 => android/view/ContextMenu
	i32 u0xe9c6b9e0, ; 961 => com/google/android/material/bottomsheet/BottomSheetBehavior
	i32 u0xe9caaadd, ; 962 => androidx/fragment/app/Fragment$SavedState
	i32 u0xe9ce42bc, ; 963 => android/text/method/MetaKeyKeyListener
	i32 u0xe9d56f43, ; 964 => kotlin/reflect/KVisibility
	i32 u0xe9e19344, ; 965 => kotlinx/serialization/descriptors/SerialKind
	i32 u0xea05a91d, ; 966 => android/app/TimePickerDialog$OnTimeSetListener
	i32 u0xea502245, ; 967 => mono/android/content/DialogInterface_OnClickListenerImplementor
	i32 u0xea708f4b, ; 968 => android/graphics/Rect
	i32 u0xeabcef18, ; 969 => androidx/appcompat/widget/AppCompatCheckBox
	i32 u0xeb026181, ; 970 => android/graphics/Region
	i32 u0xeb10d94d, ; 971 => android/content/pm/ShortcutManager
	i32 u0xeb158b93, ; 972 => crc64338477404e88479c/GenericAnimatorListener
	i32 u0xeb5d161a, ; 973 => crc6452ffdc5b34af3a0f/NavigationViewFragment
	i32 u0xeb8ea4ba, ; 974 => androidx/collection/SparseArrayCompat
	i32 u0xec0ff580, ; 975 => androidx/appcompat/widget/TintTypedArray
	i32 u0xec9bfbc3, ; 976 => androidx/core/widget/TextViewCompat
	i32 u0xeca128e8, ; 977 => mono/android/runtime/InputStreamAdapter
	i32 u0xecc6b393, ; 978 => crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver
	i32 u0xecc755a5, ; 979 => android/graphics/BitmapShader
	i32 u0xecedb4bd, ; 980 => javax/net/ssl/SSLSocketFactory
	i32 u0xed80a856, ; 981 => crc645d80431ce5f73f11/CarouselSpacingItemDecoration
	i32 u0xee05559f, ; 982 => android/content/ContextWrapper
	i32 u0xee250f69, ; 983 => android/graphics/Canvas
	i32 u0xef0b5e8e, ; 984 => kotlinx/serialization/encoding/CompositeDecoder$Companion
	i32 u0xef1f5801, ; 985 => com/google/android/material/imageview/ShapeableImageView
	i32 u0xef769ed3, ; 986 => crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener
	i32 u0xefa10a0f, ; 987 => java/lang/Error
	i32 u0xefa62f24, ; 988 => android/graphics/drawable/DrawableContainer
	i32 u0xefd00308, ; 989 => android/graphics/drawable/StateListDrawable
	i32 u0xeff867cf, ; 990 => androidx/core/view/PointerIconCompat
	i32 u0xf02ee875, ; 991 => android/widget/FilterQueryProvider
	i32 u0xf03f31cc, ; 992 => android/app/Dialog
	i32 u0xf043ce43, ; 993 => android/view/animation/Interpolator
	i32 u0xf079578a, ; 994 => crc6452ffdc5b34af3a0f/MauiMaterialButton
	i32 u0xf08cdcbf, ; 995 => android/view/View$OnDragListener
	i32 u0xf0afa21d, ; 996 => android/text/style/UnderlineSpan
	i32 u0xf0d0d93a, ; 997 => android/graphics/drawable/RippleDrawable
	i32 u0xf0f59ec7, ; 998 => androidx/recyclerview/widget/GridLayoutManager
	i32 u0xf124220b, ; 999 => crc64f728827fec74e9c3/TapWindowTracker_GestureListener
	i32 u0xf18125ef, ; 1000 => android/content/Context
	i32 u0xf1cbf0e8, ; 1001 => java/lang/NoClassDefFoundError
	i32 u0xf1e6d542, ; 1002 => android/view/GestureDetector
	i32 u0xf2047d70, ; 1003 => android/view/WindowInsetsAnimation
	i32 u0xf22ceb61, ; 1004 => crc64e1fb321c08285b90/TextCellRenderer_TextCellView
	i32 u0xf25e2260, ; 1005 => android/util/SparseArray
	i32 u0xf2652bfd, ; 1006 => com/google/android/material/shape/ShapePath
	i32 u0xf358152c, ; 1007 => androidx/fragment/app/FragmentHostCallback
	i32 u0xf39a9cec, ; 1008 => kotlinx/serialization/encoding/Decoder
	i32 u0xf3a294c2, ; 1009 => mono/android/view/View_OnTouchListenerImplementor
	i32 u0xf3aa8320, ; 1010 => java/io/Reader
	i32 u0xf4107582, ; 1011 => androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments
	i32 u0xf4274bcc, ; 1012 => crc6452ffdc5b34af3a0f/MauiHorizontalScrollView
	i32 u0xf44428b7, ; 1013 => mono/android/view/View_OnClickListenerImplementor
	i32 u0xf452419a, ; 1014 => androidx/core/view/DisplayCutoutCompat
	i32 u0xf475d75a, ; 1015 => java/io/Writer
	i32 u0xf47dc196, ; 1016 => androidx/viewpager/widget/PagerAdapter
	i32 u0xf49449ce, ; 1017 => crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView
	i32 u0xf4a27a51, ; 1018 => android/text/TextUtils$TruncateAt
	i32 u0xf52720c7, ; 1019 => androidx/loader/content/Loader$OnLoadCanceledListener
	i32 u0xf547c14c, ; 1020 => crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout
	i32 u0xf55ec28f, ; 1021 => androidx/lifecycle/LifecycleObserver
	i32 u0xf57e1eb2, ; 1022 => androidx/navigation/ui/AppBarConfiguration$Builder
	i32 u0xf58061a4, ; 1023 => androidx/viewpager/widget/ViewPager$OnPageChangeListener
	i32 u0xf58117fa, ; 1024 => android/os/Looper
	i32 u0xf60116c5, ; 1025 => mono/android/widget/AdapterView_OnItemClickListenerImplementor
	i32 u0xf60f9453, ; 1026 => crc64e1fb321c08285b90/VisualElementRenderer_1
	i32 u0xf6203711, ; 1027 => com/google/android/material/internal/StaticLayoutBuilderConfigurer
	i32 u0xf639ab34, ; 1028 => java/security/KeyFactory
	i32 u0xf6740dbf, ; 1029 => mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor
	i32 u0xf69aa6ed, ; 1030 => android/content/pm/ShortcutInfo$Builder
	i32 u0xf6b37d7c, ; 1031 => androidx/loader/app/LoaderManager$LoaderCallbacks
	i32 u0xf6e67f48, ; 1032 => androidx/appcompat/widget/LinearLayoutCompat$LayoutParams
	i32 u0xf700684c, ; 1033 => crc6452ffdc5b34af3a0f/MauiWebViewClient
	i32 u0xf74645b8, ; 1034 => androidx/core/app/ComponentActivity
	i32 u0xf74684cd, ; 1035 => javax/net/ssl/TrustManagerFactory
	i32 u0xf7d32035, ; 1036 => java/io/IOException
	i32 u0xf8073d4a, ; 1037 => java/lang/Void
	i32 u0xf84f3f3a, ; 1038 => crc64e53d2f592022988e/ConnectivityBroadcastReceiver
	i32 u0xf852a5d2, ; 1039 => android/text/TextWatcher
	i32 u0xf86409d3, ; 1040 => androidx/activity/result/contract/ActivityResultContract$SynchronousResult
	i32 u0xf92c79b2, ; 1041 => androidx/appcompat/app/AlertDialog
	i32 u0xf9685ba7, ; 1042 => crc640ec207abc449b2ca/ShellContentFragment
	i32 u0xfa10306a, ; 1043 => android/graphics/Region$Op
	i32 u0xfa586deb, ; 1044 => crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks
	i32 u0xfa8c5be5, ; 1045 => android/graphics/Bitmap$CompressFormat
	i32 u0xfae621e1, ; 1046 => com/google/android/material/bottomnavigation/BottomNavigationView
	i32 u0xfaf49b49, ; 1047 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener
	i32 u0xfb076c6c, ; 1048 => android/view/ScaleGestureDetector$OnScaleGestureListener
	i32 u0xfb88098a, ; 1049 => androidx/recyclerview/widget/RecyclerView$ItemAnimator
	i32 u0xfbbdc5a1, ; 1050 => android/text/style/StrikethroughSpan
	i32 u0xfbca2191, ; 1051 => mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor
	i32 u0xfc49ff4f, ; 1052 => java/util/HashSet
	i32 u0xfc81a960, ; 1053 => android/view/ViewTreeObserver$OnGlobalLayoutListener
	i32 u0xfc874966, ; 1054 => android/os/Parcelable
	i32 u0xfc916214, ; 1055 => android/view/MenuItem$OnMenuItemClickListener
	i32 u0xfd3fb630, ; 1056 => android/view/Menu
	i32 u0xfd57cb03, ; 1057 => android/text/style/BackgroundColorSpan
	i32 u0xfdc9e96c, ; 1058 => crc6452ffdc5b34af3a0f/MauiTextView
	i32 u0xfdf8e515, ; 1059 => java/util/function/ToDoubleFunction
	i32 u0xfe67d036, ; 1060 => androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks
	i32 u0xfe6ffb84, ; 1061 => kotlin/reflect/KClass
	i32 u0xfe943b89, ; 1062 => android/graphics/PorterDuff
	i32 u0xfeae1439, ; 1063 => androidx/lifecycle/ViewModelProvider$Factory
	i32 u0xfec117ab, ; 1064 => androidx/core/view/accessibility/AccessibilityNodeInfoCompat
	i32 u0xfed8b694, ; 1065 => crc64338477404e88479c/GenericGlobalLayoutListener
	i32 u0xfef5d29f, ; 1066 => java/io/Closeable
	i32 u0xff0b9725, ; 1067 => android/widget/CompoundButton$OnCheckedChangeListener
	i32 u0xff224fc2, ; 1068 => kotlin/reflect/KTypeParameter
	i32 u0xff409a35, ; 1069 => com/microsoft/maui/MauiViewGroup
	i32 u0xff6b77f6, ; 1070 => androidx/core/view/accessibility/AccessibilityNodeProviderCompat
	i32 u0xff705398, ; 1071 => androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback
	i32 u0xffc00b84 ; 1072 => com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener
], align 4

@module0_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000002, ; uint32_t type_token_id
		i32 345; uint32_t java_map_index
	} ; 0
], align 4

@module1_managed_to_java = internal dso_local constant [17 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 406; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 459; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 491; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 833; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 56; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 664; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 555; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 421; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 549; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 530; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 571; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 23; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 802; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 398; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	} ; 16
], align 4

@module1_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 424; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 406; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 571; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 64; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 802; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 813; uint32_t java_map_index
	} ; 5
], align 4

@module2_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 557; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 483; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 561; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 1021; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 92; uint32_t java_map_index
	} ; 4
], align 4

@module2_managed_to_java_duplicates = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 1021; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 92; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 557; uint32_t java_map_index
	} ; 2
], align 4

@module3_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 291; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 489; uint32_t java_map_index
	} ; 1
], align 4

@module4_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 792; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 686; uint32_t java_map_index
	} ; 1
], align 4

@module5_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 334; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 891; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 939; uint32_t java_map_index
	} ; 2
], align 4

@module6_managed_to_java = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 757; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 554; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1061; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 454; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 426; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000021, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 402; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 591; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 12; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 589; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 964; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 201; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 541; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 475; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 316; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 428; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 959; uint32_t java_map_index
	} ; 24
], align 4

@module6_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 757; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 97; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 914; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 554; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1061; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 134; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 680; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 454; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 6; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 402; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 1068; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 541; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 815; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 475; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 316; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 302; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 542; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 428; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 959; uint32_t java_map_index
	} ; 18
], align 4

@module7_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 930; uint32_t java_map_index
	} ; 0
], align 4

@module7_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 930; uint32_t java_map_index
	} ; 0
], align 4

@module8_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 277; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 1022; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 313; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 214; uint32_t java_map_index
	} ; 3
], align 4

@module8_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 313; uint32_t java_map_index
	} ; 0
], align 4

@module9_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 778; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 1071; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 941; uint32_t java_map_index
	} ; 6
], align 4

@module9_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 864; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 384; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 54; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1071; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 497; uint32_t java_map_index
	} ; 4
], align 4

@module10_managed_to_java = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 588; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 909; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 480; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 124; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1063; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 432; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 390; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 693; uint32_t java_map_index
	} ; 8
], align 4

@module10_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 588; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 909; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 1063; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 390; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 856; uint32_t java_map_index
	} ; 4
], align 4

@module11_managed_to_java = internal dso_local constant [67 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 717; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 498; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 139; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 240; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 806; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 19; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 1006; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 181; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 985; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 506; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 581; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 518; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 183; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 481; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 1029; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 452; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 46; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 961; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 499; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 464; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 944; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 113; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 621; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 937; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 204; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 821; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 221; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 669; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 834; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 269; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 553; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 261; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 556; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 295; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 647; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 858; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 877; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 1027; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 160; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 871; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 285; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1046; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 84; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 228; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 550; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 403; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 462; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 624; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 69; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 492; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 527; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 58; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 318; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 950; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 587; uint32_t java_map_index
	} ; 66
], align 4

@module11_managed_to_java_duplicates = internal dso_local constant [25 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 765; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 27; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 518; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 481; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 51; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 773; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 113; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 307; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 204; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 821; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 944; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 834; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 556; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 647; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 363; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 1027; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1047; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 1072; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 228; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 330; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 624; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 436; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 883; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 318; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 639; uint32_t java_map_index
	} ; 24
], align 4

@module12_managed_to_java = internal dso_local constant [41 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 998; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 625; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 241; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 5; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 735; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 840; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 111; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 596; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 606; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 901; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 674; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 619; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 468; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 1049; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000063, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 729; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 223; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 816; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 351; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 836; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 217; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 646; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 597; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 327; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 523; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 341; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 151; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 753; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 888; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 161; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 122; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 100; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 723; uint32_t java_map_index
	} ; 40
], align 4

@module12_managed_to_java_duplicates = internal dso_local constant [21 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 902; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 625; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 814; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 111; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 901; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 110; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 619; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 348; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 1049; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 263; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 223; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 115; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 836; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 574; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 18; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 597; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 341; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 320; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 161; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 122; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 723; uint32_t java_map_index
	} ; 20
], align 4

@module13_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 974; uint32_t java_map_index
	} ; 0
], align 4

@module14_managed_to_java = internal dso_local constant [7 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1016; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 255; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 741; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000022, ; uint32_t type_token_id
		i32 79; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 1023; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 522; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	} ; 6
], align 4

@module14_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1016; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 741; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 1023; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 219; uint32_t java_map_index
	} ; 3
], align 4

@module15_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 310; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 562; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 769; uint32_t java_map_index
	} ; 2
], align 4

@module15_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 562; uint32_t java_map_index
	} ; 0
], align 4

@module16_managed_to_java = internal dso_local constant [13 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 946; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 141; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 906; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 825; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 927; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 910; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 700; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 593; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 1040; uint32_t java_map_index
	} ; 12
], align 4

@module16_managed_to_java_duplicates = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 32; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 40; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 273; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 700; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 593; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000020, ; uint32_t type_token_id
		i32 43; uint32_t java_map_index
	} ; 5
], align 4

@module17_managed_to_java = internal dso_local constant [69 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 849; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 838; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 343; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 331; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 195; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 848; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 673; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 235; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 211; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 640; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 851; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 568; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 1034; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 672; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 951; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 167; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 308; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 671; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 173; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 198; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 976; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 368; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000061, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 347; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 438; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 212; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 749; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 1014; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 321; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 170; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000075, ; uint32_t type_token_id
		i32 264; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 645; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000079, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 881; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 450; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 643; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 577; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000082, ; uint32_t type_token_id
		i32 990; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000083, ; uint32_t type_token_id
		i32 830; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000084, ; uint32_t type_token_id
		i32 874; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000085, ; uint32_t type_token_id
		i32 507; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000087, ; uint32_t type_token_id
		i32 220; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000088, ; uint32_t type_token_id
		i32 842; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000089, ; uint32_t type_token_id
		i32 766; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 748; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 190; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 634; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 16; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 380; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 929; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 1051; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 306; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 215; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 1064; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 832; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 675; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 401; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 781; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 517; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 1070; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 292; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 1011; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020000a4, ; uint32_t type_token_id
		i32 150; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 178; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 382; uint32_t java_map_index
	} ; 68
], align 4

@module17_managed_to_java_duplicates = internal dso_local constant [23 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 849; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 838; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000044, ; uint32_t type_token_id
		i32 195; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 662; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 167; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 951; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 699; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000062, ; uint32_t type_token_id
		i32 569; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 438; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 722; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 321; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 170; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 264; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 645; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 278; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 881; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 450; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000081, ; uint32_t type_token_id
		i32 577; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000086, ; uint32_t type_token_id
		i32 507; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 190; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 616; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000a3, ; uint32_t type_token_id
		i32 1011; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 150; uint32_t java_map_index
	} ; 22
], align 4

@module18_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 164; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 544; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000015, ; uint32_t type_token_id
		i32 1031; uint32_t java_map_index
	} ; 4
], align 4

@module18_managed_to_java_duplicates = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 1019; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000013, ; uint32_t type_token_id
		i32 76; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 1031; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 544; uint32_t java_map_index
	} ; 3
], align 4

@module19_managed_to_java = internal dso_local constant [107 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000347, ; uint32_t type_token_id
		i32 146; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000348, ; uint32_t type_token_id
		i32 759; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000349, ; uint32_t type_token_id
		i32 216; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200035a, ; uint32_t type_token_id
		i32 547; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 972; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 1065; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 155; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 230; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000361, ; uint32_t type_token_id
		i32 782; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000362, ; uint32_t type_token_id
		i32 598; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000364, ; uint32_t type_token_id
		i32 590; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000365, ; uint32_t type_token_id
		i32 39; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000368, ; uint32_t type_token_id
		i32 283; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x0200036b, ; uint32_t type_token_id
		i32 362; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000379, ; uint32_t type_token_id
		i32 349; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 256; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000388, ; uint32_t type_token_id
		i32 1042; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 721; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 770; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 301; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 78; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 935; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 328; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 281; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000391, ; uint32_t type_token_id
		i32 633; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 817; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 885; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 496; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000395, ; uint32_t type_token_id
		i32 638; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 777; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 920; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 367; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020003a4, ; uint32_t type_token_id
		i32 779; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 887; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 865; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 175; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 845; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 957; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 188; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 981; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 787; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 762; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 210; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 786; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 737; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 444; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 75; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 356; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 714; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 747; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 801; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 879; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 750; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 176; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 826; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 869; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 868; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 117; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 691; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 143; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 44; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 752; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 414; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 565; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 120; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 898; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020003df, ; uint32_t type_token_id
		i32 68; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 1026; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 472; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 756; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020003e5, ; uint32_t type_token_id
		i32 551; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 620; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 72; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 133; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 771; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 57; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 457; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 701; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 286; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000491, ; uint32_t type_token_id
		i32 999; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x02000560, ; uint32_t type_token_id
		i32 447; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020005e6, ; uint32_t type_token_id
		i32 494; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020005ec, ; uint32_t type_token_id
		i32 1017; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020005f7, ; uint32_t type_token_id
		i32 400; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000602, ; uint32_t type_token_id
		i32 710; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000604, ; uint32_t type_token_id
		i32 409; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000605, ; uint32_t type_token_id
		i32 90; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x0200060c, ; uint32_t type_token_id
		i32 293; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x0200060f, ; uint32_t type_token_id
		i32 632; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000610, ; uint32_t type_token_id
		i32 303; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000611, ; uint32_t type_token_id
		i32 33; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000614, ; uint32_t type_token_id
		i32 615; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000618, ; uint32_t type_token_id
		i32 53; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x02000619, ; uint32_t type_token_id
		i32 41; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000622, ; uint32_t type_token_id
		i32 602; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000625, ; uint32_t type_token_id
		i32 378; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000628, ; uint32_t type_token_id
		i32 81; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x0200062e, ; uint32_t type_token_id
		i32 267; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x0200062f, ; uint32_t type_token_id
		i32 336; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x02000630, ; uint32_t type_token_id
		i32 287; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x02000631, ; uint32_t type_token_id
		i32 118; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000633, ; uint32_t type_token_id
		i32 1004; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000634, ; uint32_t type_token_id
		i32 758; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000697, ; uint32_t type_token_id
		i32 145; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000699, ; uint32_t type_token_id
		i32 841; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x0200069a, ; uint32_t type_token_id
		i32 897; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x020006a2, ; uint32_t type_token_id
		i32 631; uint32_t java_map_index
	} ; 106
], align 4

@module20_managed_to_java = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 829; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000006, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 545; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 224; uint32_t java_map_index
	} ; 4
], align 4

@module20_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 829; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 819; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 896; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 545; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 224; uint32_t java_map_index
	} ; 4
], align 4

@module21_managed_to_java = internal dso_local constant [8 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 812; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 275; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 1038; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 360; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 127; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 548; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 978; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 304; uint32_t java_map_index
	} ; 7
], align 4

@module22_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000016, ; uint32_t type_token_id
		i32 276; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000017, ; uint32_t type_token_id
		i32 926; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 793; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 243; uint32_t java_map_index
	} ; 3
], align 4

@module22_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 926; uint32_t java_map_index
	} ; 0
], align 4

@module23_managed_to_java = internal dso_local constant [56 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 196; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1041; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 495; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 379; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 234; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 465; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 740; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 755; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000042, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 861; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 152; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 894; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 774; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000053, ; uint32_t type_token_id
		i32 157; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000054, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000056, ; uint32_t type_token_id
		i32 866; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000057, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000059, ; uint32_t type_token_id
		i32 169; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 476; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 338; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 804; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x02000060, ; uint32_t type_token_id
		i32 395; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x02000064, ; uint32_t type_token_id
		i32 288; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000065, ; uint32_t type_token_id
		i32 712; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000066, ; uint32_t type_token_id
		i32 969; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000067, ; uint32_t type_token_id
		i32 652; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000068, ; uint32_t type_token_id
		i32 578; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000069, ; uint32_t type_token_id
		i32 508; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 87; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 399; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 799; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 1032; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000070, ; uint32_t type_token_id
		i32 570; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x02000071, ; uint32_t type_token_id
		i32 108; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000072, ; uint32_t type_token_id
		i32 177; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000073, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000076, ; uint32_t type_token_id
		i32 13; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000077, ; uint32_t type_token_id
		i32 539; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 187; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 705; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000080, ; uint32_t type_token_id
		i32 789; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 694; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 975; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 566; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 940; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000090, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000093, ; uint32_t type_token_id
		i32 882; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000094, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000096, ; uint32_t type_token_id
		i32 377; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000098, ; uint32_t type_token_id
		i32 335; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 357; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 790; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 456; uint32_t java_map_index
	} ; 55
], align 4

@module23_managed_to_java_duplicates = internal dso_local constant [19 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000043, ; uint32_t type_token_id
		i32 272; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 152; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 892; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 894; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 740; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000052, ; uint32_t type_token_id
		i32 229; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000055, ; uint32_t type_token_id
		i32 668; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000058, ; uint32_t type_token_id
		i32 324; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 804; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200006d, ; uint32_t type_token_id
		i32 22; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000074, ; uint32_t type_token_id
		i32 455; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 539; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x0200007d, ; uint32_t type_token_id
		i32 705; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000091, ; uint32_t type_token_id
		i32 309; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000092, ; uint32_t type_token_id
		i32 940; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000095, ; uint32_t type_token_id
		i32 791; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000097, ; uint32_t type_token_id
		i32 377; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000099, ; uint32_t type_token_id
		i32 335; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 357; uint32_t java_map_index
	} ; 18
], align 4

@module24_managed_to_java = internal dso_local constant [20 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000023, ; uint32_t type_token_id
		i32 478; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000024, ; uint32_t type_token_id
		i32 337; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000025, ; uint32_t type_token_id
		i32 7; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000026, ; uint32_t type_token_id
		i32 962; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000027, ; uint32_t type_token_id
		i32 163; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000029, ; uint32_t type_token_id
		i32 251; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 107; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 1007; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200002e, ; uint32_t type_token_id
		i32 535; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 1060; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 583; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 42; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000046, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000048, ; uint32_t type_token_id
		i32 567; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 635; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 839; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 28; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x02000050, ; uint32_t type_token_id
		i32 734; uint32_t java_map_index
	} ; 19
], align 4

@module24_managed_to_java_duplicates = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000028, ; uint32_t type_token_id
		i32 163; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200002c, ; uint32_t type_token_id
		i32 1007; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 535; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 1060; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 583; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000045, ; uint32_t type_token_id
		i32 490; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000047, ; uint32_t type_token_id
		i32 166; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x02000049, ; uint32_t type_token_id
		i32 567; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 103; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000051, ; uint32_t type_token_id
		i32 734; uint32_t java_map_index
	} ; 9
], align 4

@module25_managed_to_java = internal dso_local constant [3 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000007, ; uint32_t type_token_id
		i32 238; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000009, ; uint32_t type_token_id
		i32 232; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 59; uint32_t java_map_index
	} ; 2
], align 4

@module25_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000008, ; uint32_t type_token_id
		i32 238; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 232; uint32_t java_map_index
	} ; 1
], align 4

@module26_managed_to_java = internal dso_local constant [487 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 563; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 627; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 305; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000af, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 372; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 918; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000b6, ; uint32_t type_token_id
		i32 679; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000ba, ; uint32_t type_token_id
		i32 831; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000bc, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000be, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 266; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 326; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 980; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 1035; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 820; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 538; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000c7, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000c9, ; uint32_t type_token_id
		i32 629; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 67; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 404; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000cf, ; uint32_t type_token_id
		i32 956; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000d1, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 922; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 520; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000da, ; uint32_t type_token_id
		i32 854; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000db, ; uint32_t type_token_id
		i32 776; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 11; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x020000de, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 948; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 682; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 524; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 257; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 246; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x020000e8, ; uint32_t type_token_id
		i32 213; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 886; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x020000eb, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x020000f0, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 1025; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x020000f4, ; uint32_t type_token_id
		i32 274; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x020000f6, ; uint32_t type_token_id
		i32 485; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 393; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x020000fd, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 61; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 688; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000100, ; uint32_t type_token_id
		i32 936; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x02000101, ; uint32_t type_token_id
		i32 268; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000104, ; uint32_t type_token_id
		i32 612; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000108, ; uint32_t type_token_id
		i32 254; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000109, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 381; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 418; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000111, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000112, ; uint32_t type_token_id
		i32 1067; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x02000115, ; uint32_t type_token_id
		i32 558; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 420; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200011b, ; uint32_t type_token_id
		i32 242; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x0200011d, ; uint32_t type_token_id
		i32 315; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 433; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 510; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 231; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 685; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x02000126, ; uint32_t type_token_id
		i32 991; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 677; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 952; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 655; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x0200012d, ; uint32_t type_token_id
		i32 132; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200012f, ; uint32_t type_token_id
		i32 526; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x02000131, ; uint32_t type_token_id
		i32 467; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x02000132, ; uint32_t type_token_id
		i32 361; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x02000133, ; uint32_t type_token_id
		i32 738; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x02000135, ; uint32_t type_token_id
		i32 366; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x02000136, ; uint32_t type_token_id
		i32 282; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x02000138, ; uint32_t type_token_id
		i32 600; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x02000139, ; uint32_t type_token_id
		i32 808; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x0200013a, ; uint32_t type_token_id
		i32 314; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 601; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 514; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x02000140, ; uint32_t type_token_id
		i32 26; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x02000141, ; uint32_t type_token_id
		i32 733; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x02000143, ; uint32_t type_token_id
		i32 772; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000144, ; uint32_t type_token_id
		i32 880; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x02000145, ; uint32_t type_token_id
		i32 1005; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000146, ; uint32_t type_token_id
		i32 96; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000147, ; uint32_t type_token_id
		i32 609; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x0200014a, ; uint32_t type_token_id
		i32 466; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 949; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x0200014d, ; uint32_t type_token_id
		i32 850; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x02000150, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 250; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000154, ; uint32_t type_token_id
		i32 955; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 917; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000159, ; uint32_t type_token_id
		i32 702; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 451; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 878; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 1039; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 439; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000165, ; uint32_t type_token_id
		i32 271; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000167, ; uint32_t type_token_id
		i32 760; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 911; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 637; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 279; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 227; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 225; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x02000172, ; uint32_t type_token_id
		i32 1018; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x02000173, ; uint32_t type_token_id
		i32 1057; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x02000174, ; uint32_t type_token_id
		i32 515; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x02000175, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x02000177, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x02000179, ; uint32_t type_token_id
		i32 479; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x0200017a, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x0200017c, ; uint32_t type_token_id
		i32 728; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x0200017e, ; uint32_t type_token_id
		i32 875; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x02000180, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x02000182, ; uint32_t type_token_id
		i32 1050; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x02000183, ; uint32_t type_token_id
		i32 296; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x02000184, ; uint32_t type_token_id
		i32 36; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x02000185, ; uint32_t type_token_id
		i32 180; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x02000186, ; uint32_t type_token_id
		i32 924; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x02000187, ; uint32_t type_token_id
		i32 996; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x02000188, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 746; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x0200018b, ; uint32_t type_token_id
		i32 158; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x0200018d, ; uint32_t type_token_id
		i32 963; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 919; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x02000191, ; uint32_t type_token_id
		i32 707; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x02000192, ; uint32_t type_token_id
		i32 775; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x02000193, ; uint32_t type_token_id
		i32 130; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x02000194, ; uint32_t type_token_id
		i32 397; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x02000195, ; uint32_t type_token_id
		i32 344; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x02000196, ; uint32_t type_token_id
		i32 473; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000197, ; uint32_t type_token_id
		i32 442; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x02000198, ; uint32_t type_token_id
		i32 709; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x02000199, ; uint32_t type_token_id
		i32 916; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 144; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 889; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x0200019d, ; uint32_t type_token_id
		i32 534; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x0200019e, ; uint32_t type_token_id
		i32 191; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x020001a0, ; uint32_t type_token_id
		i32 795; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x020001a2, ; uint32_t type_token_id
		i32 434; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x020001a4, ; uint32_t type_token_id
		i32 516; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x020001a6, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x020001a8, ; uint32_t type_token_id
		i32 810; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 1024; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 123; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x020001ae, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x020001b0, ; uint32_t type_token_id
		i32 658; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x020001b1, ; uint32_t type_token_id
		i32 298; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x020001b2, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020001b5, ; uint32_t type_token_id
		i32 260; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020001b6, ; uint32_t type_token_id
		i32 194; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020001bc, ; uint32_t type_token_id
		i32 546; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020001be, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020001c0, ; uint32_t type_token_id
		i32 387; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020001c1, ; uint32_t type_token_id
		i32 410; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 780; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020001c3, ; uint32_t type_token_id
		i32 156; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 698; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020001c5, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 417; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020001ca, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 1013; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x020001cd, ; uint32_t type_token_id
		i32 995; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x020001cf, ; uint32_t type_token_id
		i32 852; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 270; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x020001d3, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x020001d5, ; uint32_t type_token_id
		i32 690; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 718; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x020001d9, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 823; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x020001dd, ; uint32_t type_token_id
		i32 857; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x020001e0, ; uint32_t type_token_id
		i32 870; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x020001e1, ; uint32_t type_token_id
		i32 413; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 1009; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x020001f6, ; uint32_t type_token_id
		i32 35; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 899; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x020001f8, ; uint32_t type_token_id
		i32 687; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 142; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x020001fa, ; uint32_t type_token_id
		i32 1053; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x020001fc, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x020001fd, ; uint32_t type_token_id
		i32 311; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x020001ff, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x02000200, ; uint32_t type_token_id
		i32 800; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x02000204, ; uint32_t type_token_id
		i32 908; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x02000207, ; uint32_t type_token_id
		i32 923; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x02000208, ; uint32_t type_token_id
		i32 423; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x02000209, ; uint32_t type_token_id
		i32 511; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x0200020b, ; uint32_t type_token_id
		i32 396; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 713; uint32_t java_map_index
	}, ; 196
	%struct.TypeMapModuleEntry {
		i32 u0x02000211, ; uint32_t type_token_id
		i32 1002; uint32_t java_map_index
	}, ; 197
	%struct.TypeMapModuleEntry {
		i32 u0x02000212, ; uint32_t type_token_id
		i32 252; uint32_t java_map_index
	}, ; 198
	%struct.TypeMapModuleEntry {
		i32 u0x02000214, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 199
	%struct.TypeMapModuleEntry {
		i32 u0x02000217, ; uint32_t type_token_id
		i32 642; uint32_t java_map_index
	}, ; 200
	%struct.TypeMapModuleEntry {
		i32 u0x02000219, ; uint32_t type_token_id
		i32 960; uint32_t java_map_index
	}, ; 201
	%struct.TypeMapModuleEntry {
		i32 u0x0200021b, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	}, ; 202
	%struct.TypeMapModuleEntry {
		i32 u0x0200021e, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 203
	%struct.TypeMapModuleEntry {
		i32 u0x02000220, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 204
	%struct.TypeMapModuleEntry {
		i32 u0x02000222, ; uint32_t type_token_id
		i32 824; uint32_t java_map_index
	}, ; 205
	%struct.TypeMapModuleEntry {
		i32 u0x02000226, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 206
	%struct.TypeMapModuleEntry {
		i32 u0x02000228, ; uint32_t type_token_id
		i32 290; uint32_t java_map_index
	}, ; 207
	%struct.TypeMapModuleEntry {
		i32 u0x0200022a, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 208
	%struct.TypeMapModuleEntry {
		i32 u0x0200022c, ; uint32_t type_token_id
		i32 355; uint32_t java_map_index
	}, ; 209
	%struct.TypeMapModuleEntry {
		i32 u0x0200022e, ; uint32_t type_token_id
		i32 121; uint32_t java_map_index
	}, ; 210
	%struct.TypeMapModuleEntry {
		i32 u0x02000230, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 211
	%struct.TypeMapModuleEntry {
		i32 u0x02000232, ; uint32_t type_token_id
		i32 623; uint32_t java_map_index
	}, ; 212
	%struct.TypeMapModuleEntry {
		i32 u0x02000234, ; uint32_t type_token_id
		i32 739; uint32_t java_map_index
	}, ; 213
	%struct.TypeMapModuleEntry {
		i32 u0x02000235, ; uint32_t type_token_id
		i32 653; uint32_t java_map_index
	}, ; 214
	%struct.TypeMapModuleEntry {
		i32 u0x02000238, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 215
	%struct.TypeMapModuleEntry {
		i32 u0x0200023a, ; uint32_t type_token_id
		i32 809; uint32_t java_map_index
	}, ; 216
	%struct.TypeMapModuleEntry {
		i32 u0x0200023b, ; uint32_t type_token_id
		i32 683; uint32_t java_map_index
	}, ; 217
	%struct.TypeMapModuleEntry {
		i32 u0x02000243, ; uint32_t type_token_id
		i32 429; uint32_t java_map_index
	}, ; 218
	%struct.TypeMapModuleEntry {
		i32 u0x02000248, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 219
	%struct.TypeMapModuleEntry {
		i32 u0x0200024b, ; uint32_t type_token_id
		i32 785; uint32_t java_map_index
	}, ; 220
	%struct.TypeMapModuleEntry {
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 221
	%struct.TypeMapModuleEntry {
		i32 u0x0200024e, ; uint32_t type_token_id
		i32 853; uint32_t java_map_index
	}, ; 222
	%struct.TypeMapModuleEntry {
		i32 u0x02000250, ; uint32_t type_token_id
		i32 470; uint32_t java_map_index
	}, ; 223
	%struct.TypeMapModuleEntry {
		i32 u0x02000253, ; uint32_t type_token_id
		i32 663; uint32_t java_map_index
	}, ; 224
	%struct.TypeMapModuleEntry {
		i32 u0x02000257, ; uint32_t type_token_id
		i32 469; uint32_t java_map_index
	}, ; 225
	%struct.TypeMapModuleEntry {
		i32 u0x02000258, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 226
	%struct.TypeMapModuleEntry {
		i32 u0x02000259, ; uint32_t type_token_id
		i32 88; uint32_t java_map_index
	}, ; 227
	%struct.TypeMapModuleEntry {
		i32 u0x0200025a, ; uint32_t type_token_id
		i32 119; uint32_t java_map_index
	}, ; 228
	%struct.TypeMapModuleEntry {
		i32 u0x0200025b, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 229
	%struct.TypeMapModuleEntry {
		i32 u0x0200025f, ; uint32_t type_token_id
		i32 684; uint32_t java_map_index
	}, ; 230
	%struct.TypeMapModuleEntry {
		i32 u0x02000264, ; uint32_t type_token_id
		i32 827; uint32_t java_map_index
	}, ; 231
	%struct.TypeMapModuleEntry {
		i32 u0x02000266, ; uint32_t type_token_id
		i32 603; uint32_t java_map_index
	}, ; 232
	%struct.TypeMapModuleEntry {
		i32 u0x02000269, ; uint32_t type_token_id
		i32 65; uint32_t java_map_index
	}, ; 233
	%struct.TypeMapModuleEntry {
		i32 u0x0200026a, ; uint32_t type_token_id
		i32 1003; uint32_t java_map_index
	}, ; 234
	%struct.TypeMapModuleEntry {
		i32 u0x0200026b, ; uint32_t type_token_id
		i32 720; uint32_t java_map_index
	}, ; 235
	%struct.TypeMapModuleEntry {
		i32 u0x0200026c, ; uint32_t type_token_id
		i32 244; uint32_t java_map_index
	}, ; 236
	%struct.TypeMapModuleEntry {
		i32 u0x0200026d, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 237
	%struct.TypeMapModuleEntry {
		i32 u0x0200026f, ; uint32_t type_token_id
		i32 24; uint32_t java_map_index
	}, ; 238
	%struct.TypeMapModuleEntry {
		i32 u0x02000270, ; uint32_t type_token_id
		i32 525; uint32_t java_map_index
	}, ; 239
	%struct.TypeMapModuleEntry {
		i32 u0x02000271, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 240
	%struct.TypeMapModuleEntry {
		i32 u0x02000276, ; uint32_t type_token_id
		i32 742; uint32_t java_map_index
	}, ; 241
	%struct.TypeMapModuleEntry {
		i32 u0x0200027b, ; uint32_t type_token_id
		i32 552; uint32_t java_map_index
	}, ; 242
	%struct.TypeMapModuleEntry {
		i32 u0x0200027c, ; uint32_t type_token_id
		i32 369; uint32_t java_map_index
	}, ; 243
	%struct.TypeMapModuleEntry {
		i32 u0x0200027d, ; uint32_t type_token_id
		i32 943; uint32_t java_map_index
	}, ; 244
	%struct.TypeMapModuleEntry {
		i32 u0x0200027f, ; uint32_t type_token_id
		i32 764; uint32_t java_map_index
	}, ; 245
	%struct.TypeMapModuleEntry {
		i32 u0x02000280, ; uint32_t type_token_id
		i32 993; uint32_t java_map_index
	}, ; 246
	%struct.TypeMapModuleEntry {
		i32 u0x02000282, ; uint32_t type_token_id
		i32 149; uint32_t java_map_index
	}, ; 247
	%struct.TypeMapModuleEntry {
		i32 u0x02000283, ; uint32_t type_token_id
		i32 797; uint32_t java_map_index
	}, ; 248
	%struct.TypeMapModuleEntry {
		i32 u0x02000287, ; uint32_t type_token_id
		i32 904; uint32_t java_map_index
	}, ; 249
	%struct.TypeMapModuleEntry {
		i32 u0x02000288, ; uint32_t type_token_id
		i32 582; uint32_t java_map_index
	}, ; 250
	%struct.TypeMapModuleEntry {
		i32 u0x02000289, ; uint32_t type_token_id
		i32 289; uint32_t java_map_index
	}, ; 251
	%struct.TypeMapModuleEntry {
		i32 u0x0200028a, ; uint32_t type_token_id
		i32 509; uint32_t java_map_index
	}, ; 252
	%struct.TypeMapModuleEntry {
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 863; uint32_t java_map_index
	}, ; 253
	%struct.TypeMapModuleEntry {
		i32 u0x020002a4, ; uint32_t type_token_id
		i32 977; uint32_t java_map_index
	}, ; 254
	%struct.TypeMapModuleEntry {
		i32 u0x020002a7, ; uint32_t type_token_id
		i32 744; uint32_t java_map_index
	}, ; 255
	%struct.TypeMapModuleEntry {
		i32 u0x020002a9, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 256
	%struct.TypeMapModuleEntry {
		i32 u0x020002ab, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 257
	%struct.TypeMapModuleEntry {
		i32 u0x020002b4, ; uint32_t type_token_id
		i32 171; uint32_t java_map_index
	}, ; 258
	%struct.TypeMapModuleEntry {
		i32 u0x020002b6, ; uint32_t type_token_id
		i32 907; uint32_t java_map_index
	}, ; 259
	%struct.TypeMapModuleEntry {
		i32 u0x020002b7, ; uint32_t type_token_id
		i32 884; uint32_t java_map_index
	}, ; 260
	%struct.TypeMapModuleEntry {
		i32 u0x020002b8, ; uint32_t type_token_id
		i32 1052; uint32_t java_map_index
	}, ; 261
	%struct.TypeMapModuleEntry {
		i32 u0x020002c4, ; uint32_t type_token_id
		i32 126; uint32_t java_map_index
	}, ; 262
	%struct.TypeMapModuleEntry {
		i32 u0x020002cd, ; uint32_t type_token_id
		i32 104; uint32_t java_map_index
	}, ; 263
	%struct.TypeMapModuleEntry {
		i32 u0x020002ce, ; uint32_t type_token_id
		i32 933; uint32_t java_map_index
	}, ; 264
	%struct.TypeMapModuleEntry {
		i32 u0x020002d0, ; uint32_t type_token_id
		i32 925; uint32_t java_map_index
	}, ; 265
	%struct.TypeMapModuleEntry {
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 1045; uint32_t java_map_index
	}, ; 266
	%struct.TypeMapModuleEntry {
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 205; uint32_t java_map_index
	}, ; 267
	%struct.TypeMapModuleEntry {
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 983; uint32_t java_map_index
	}, ; 268
	%struct.TypeMapModuleEntry {
		i32 u0x020002d7, ; uint32_t type_token_id
		i32 218; uint32_t java_map_index
	}, ; 269
	%struct.TypeMapModuleEntry {
		i32 u0x020002d8, ; uint32_t type_token_id
		i32 979; uint32_t java_map_index
	}, ; 270
	%struct.TypeMapModuleEntry {
		i32 u0x020002d9, ; uint32_t type_token_id
		i32 731; uint32_t java_map_index
	}, ; 271
	%struct.TypeMapModuleEntry {
		i32 u0x020002da, ; uint32_t type_token_id
		i32 25; uint32_t java_map_index
	}, ; 272
	%struct.TypeMapModuleEntry {
		i32 u0x020002db, ; uint32_t type_token_id
		i32 822; uint32_t java_map_index
	}, ; 273
	%struct.TypeMapModuleEntry {
		i32 u0x020002dc, ; uint32_t type_token_id
		i32 945; uint32_t java_map_index
	}, ; 274
	%struct.TypeMapModuleEntry {
		i32 u0x020002dd, ; uint32_t type_token_id
		i32 844; uint32_t java_map_index
	}, ; 275
	%struct.TypeMapModuleEntry {
		i32 u0x020002de, ; uint32_t type_token_id
		i32 843; uint32_t java_map_index
	}, ; 276
	%struct.TypeMapModuleEntry {
		i32 u0x020002df, ; uint32_t type_token_id
		i32 389; uint32_t java_map_index
	}, ; 277
	%struct.TypeMapModuleEntry {
		i32 u0x020002e0, ; uint32_t type_token_id
		i32 803; uint32_t java_map_index
	}, ; 278
	%struct.TypeMapModuleEntry {
		i32 u0x020002e1, ; uint32_t type_token_id
		i32 408; uint32_t java_map_index
	}, ; 279
	%struct.TypeMapModuleEntry {
		i32 u0x020002e2, ; uint32_t type_token_id
		i32 332; uint32_t java_map_index
	}, ; 280
	%struct.TypeMapModuleEntry {
		i32 u0x020002e3, ; uint32_t type_token_id
		i32 876; uint32_t java_map_index
	}, ; 281
	%struct.TypeMapModuleEntry {
		i32 u0x020002e4, ; uint32_t type_token_id
		i32 559; uint32_t java_map_index
	}, ; 282
	%struct.TypeMapModuleEntry {
		i32 u0x020002e5, ; uint32_t type_token_id
		i32 867; uint32_t java_map_index
	}, ; 283
	%struct.TypeMapModuleEntry {
		i32 u0x020002e6, ; uint32_t type_token_id
		i32 179; uint32_t java_map_index
	}, ; 284
	%struct.TypeMapModuleEntry {
		i32 u0x020002e7, ; uint32_t type_token_id
		i32 912; uint32_t java_map_index
	}, ; 285
	%struct.TypeMapModuleEntry {
		i32 u0x020002e9, ; uint32_t type_token_id
		i32 537; uint32_t java_map_index
	}, ; 286
	%struct.TypeMapModuleEntry {
		i32 u0x020002ea, ; uint32_t type_token_id
		i32 796; uint32_t java_map_index
	}, ; 287
	%struct.TypeMapModuleEntry {
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 938; uint32_t java_map_index
	}, ; 288
	%struct.TypeMapModuleEntry {
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 586; uint32_t java_map_index
	}, ; 289
	%struct.TypeMapModuleEntry {
		i32 u0x020002ed, ; uint32_t type_token_id
		i32 618; uint32_t java_map_index
	}, ; 290
	%struct.TypeMapModuleEntry {
		i32 u0x020002ee, ; uint32_t type_token_id
		i32 446; uint32_t java_map_index
	}, ; 291
	%struct.TypeMapModuleEntry {
		i32 u0x020002ef, ; uint32_t type_token_id
		i32 233; uint32_t java_map_index
	}, ; 292
	%struct.TypeMapModuleEntry {
		i32 u0x020002f0, ; uint32_t type_token_id
		i32 1062; uint32_t java_map_index
	}, ; 293
	%struct.TypeMapModuleEntry {
		i32 u0x020002f1, ; uint32_t type_token_id
		i32 340; uint32_t java_map_index
	}, ; 294
	%struct.TypeMapModuleEntry {
		i32 u0x020002f2, ; uint32_t type_token_id
		i32 29; uint32_t java_map_index
	}, ; 295
	%struct.TypeMapModuleEntry {
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 62; uint32_t java_map_index
	}, ; 296
	%struct.TypeMapModuleEntry {
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 968; uint32_t java_map_index
	}, ; 297
	%struct.TypeMapModuleEntry {
		i32 u0x020002f5, ; uint32_t type_token_id
		i32 354; uint32_t java_map_index
	}, ; 298
	%struct.TypeMapModuleEntry {
		i32 u0x020002f6, ; uint32_t type_token_id
		i32 970; uint32_t java_map_index
	}, ; 299
	%struct.TypeMapModuleEntry {
		i32 u0x020002f7, ; uint32_t type_token_id
		i32 1043; uint32_t java_map_index
	}, ; 300
	%struct.TypeMapModuleEntry {
		i32 u0x020002f8, ; uint32_t type_token_id
		i32 608; uint32_t java_map_index
	}, ; 301
	%struct.TypeMapModuleEntry {
		i32 u0x020002f9, ; uint32_t type_token_id
		i32 828; uint32_t java_map_index
	}, ; 302
	%struct.TypeMapModuleEntry {
		i32 u0x020002fa, ; uint32_t type_token_id
		i32 953; uint32_t java_map_index
	}, ; 303
	%struct.TypeMapModuleEntry {
		i32 u0x020002fc, ; uint32_t type_token_id
		i32 300; uint32_t java_map_index
	}, ; 304
	%struct.TypeMapModuleEntry {
		i32 u0x020002fd, ; uint32_t type_token_id
		i32 697; uint32_t java_map_index
	}, ; 305
	%struct.TypeMapModuleEntry {
		i32 u0x020002fe, ; uint32_t type_token_id
		i32 471; uint32_t java_map_index
	}, ; 306
	%struct.TypeMapModuleEntry {
		i32 u0x02000300, ; uint32_t type_token_id
		i32 988; uint32_t java_map_index
	}, ; 307
	%struct.TypeMapModuleEntry {
		i32 u0x02000301, ; uint32_t type_token_id
		i32 477; uint32_t java_map_index
	}, ; 308
	%struct.TypeMapModuleEntry {
		i32 u0x02000302, ; uint32_t type_token_id
		i32 704; uint32_t java_map_index
	}, ; 309
	%struct.TypeMapModuleEntry {
		i32 u0x02000303, ; uint32_t type_token_id
		i32 895; uint32_t java_map_index
	}, ; 310
	%struct.TypeMapModuleEntry {
		i32 u0x02000304, ; uint32_t type_token_id
		i32 128; uint32_t java_map_index
	}, ; 311
	%struct.TypeMapModuleEntry {
		i32 u0x02000306, ; uint32_t type_token_id
		i32 934; uint32_t java_map_index
	}, ; 312
	%struct.TypeMapModuleEntry {
		i32 u0x02000308, ; uint32_t type_token_id
		i32 504; uint32_t java_map_index
	}, ; 313
	%struct.TypeMapModuleEntry {
		i32 u0x02000309, ; uint32_t type_token_id
		i32 174; uint32_t java_map_index
	}, ; 314
	%struct.TypeMapModuleEntry {
		i32 u0x0200030b, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	}, ; 315
	%struct.TypeMapModuleEntry {
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 650; uint32_t java_map_index
	}, ; 316
	%struct.TypeMapModuleEntry {
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 186; uint32_t java_map_index
	}, ; 317
	%struct.TypeMapModuleEntry {
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 997; uint32_t java_map_index
	}, ; 318
	%struct.TypeMapModuleEntry {
		i32 u0x02000310, ; uint32_t type_token_id
		i32 458; uint32_t java_map_index
	}, ; 319
	%struct.TypeMapModuleEntry {
		i32 u0x02000311, ; uint32_t type_token_id
		i32 695; uint32_t java_map_index
	}, ; 320
	%struct.TypeMapModuleEntry {
		i32 u0x02000314, ; uint32_t type_token_id
		i32 989; uint32_t java_map_index
	}, ; 321
	%struct.TypeMapModuleEntry {
		i32 u0x02000315, ; uint32_t type_token_id
		i32 253; uint32_t java_map_index
	}, ; 322
	%struct.TypeMapModuleEntry {
		i32 u0x02000316, ; uint32_t type_token_id
		i32 440; uint32_t java_map_index
	}, ; 323
	%struct.TypeMapModuleEntry {
		i32 u0x02000317, ; uint32_t type_token_id
		i32 846; uint32_t java_map_index
	}, ; 324
	%struct.TypeMapModuleEntry {
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 325
	%struct.TypeMapModuleEntry {
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 543; uint32_t java_map_index
	}, ; 326
	%struct.TypeMapModuleEntry {
		i32 u0x0200031d, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 327
	%struct.TypeMapModuleEntry {
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 505; uint32_t java_map_index
	}, ; 328
	%struct.TypeMapModuleEntry {
		i32 u0x02000320, ; uint32_t type_token_id
		i32 488; uint32_t java_map_index
	}, ; 329
	%struct.TypeMapModuleEntry {
		i32 u0x02000322, ; uint32_t type_token_id
		i32 443; uint32_t java_map_index
	}, ; 330
	%struct.TypeMapModuleEntry {
		i32 u0x02000323, ; uint32_t type_token_id
		i32 430; uint32_t java_map_index
	}, ; 331
	%struct.TypeMapModuleEntry {
		i32 u0x02000324, ; uint32_t type_token_id
		i32 807; uint32_t java_map_index
	}, ; 332
	%struct.TypeMapModuleEntry {
		i32 u0x02000325, ; uint32_t type_token_id
		i32 346; uint32_t java_map_index
	}, ; 333
	%struct.TypeMapModuleEntry {
		i32 u0x02000327, ; uint32_t type_token_id
		i32 208; uint32_t java_map_index
	}, ; 334
	%struct.TypeMapModuleEntry {
		i32 u0x0200032a, ; uint32_t type_token_id
		i32 982; uint32_t java_map_index
	}, ; 335
	%struct.TypeMapModuleEntry {
		i32 u0x0200032c, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 336
	%struct.TypeMapModuleEntry {
		i32 u0x0200032e, ; uint32_t type_token_id
		i32 364; uint32_t java_map_index
	}, ; 337
	%struct.TypeMapModuleEntry {
		i32 u0x0200032f, ; uint32_t type_token_id
		i32 730; uint32_t java_map_index
	}, ; 338
	%struct.TypeMapModuleEntry {
		i32 u0x02000332, ; uint32_t type_token_id
		i32 967; uint32_t java_map_index
	}, ; 339
	%struct.TypeMapModuleEntry {
		i32 u0x02000333, ; uint32_t type_token_id
		i32 131; uint32_t java_map_index
	}, ; 340
	%struct.TypeMapModuleEntry {
		i32 u0x02000335, ; uint32_t type_token_id
		i32 487; uint32_t java_map_index
	}, ; 341
	%struct.TypeMapModuleEntry {
		i32 u0x02000336, ; uint32_t type_token_id
		i32 660; uint32_t java_map_index
	}, ; 342
	%struct.TypeMapModuleEntry {
		i32 u0x02000338, ; uint32_t type_token_id
		i32 474; uint32_t java_map_index
	}, ; 343
	%struct.TypeMapModuleEntry {
		i32 u0x0200033b, ; uint32_t type_token_id
		i32 105; uint32_t java_map_index
	}, ; 344
	%struct.TypeMapModuleEntry {
		i32 u0x0200033d, ; uint32_t type_token_id
		i32 564; uint32_t java_map_index
	}, ; 345
	%struct.TypeMapModuleEntry {
		i32 u0x0200033e, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 346
	%struct.TypeMapModuleEntry {
		i32 u0x02000340, ; uint32_t type_token_id
		i32 584; uint32_t java_map_index
	}, ; 347
	%struct.TypeMapModuleEntry {
		i32 u0x02000341, ; uint32_t type_token_id
		i32 531; uint32_t java_map_index
	}, ; 348
	%struct.TypeMapModuleEntry {
		i32 u0x02000342, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 349
	%struct.TypeMapModuleEntry {
		i32 u0x02000344, ; uint32_t type_token_id
		i32 641; uint32_t java_map_index
	}, ; 350
	%struct.TypeMapModuleEntry {
		i32 u0x02000346, ; uint32_t type_token_id
		i32 860; uint32_t java_map_index
	}, ; 351
	%struct.TypeMapModuleEntry {
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 203; uint32_t java_map_index
	}, ; 352
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 448; uint32_t java_map_index
	}, ; 353
	%struct.TypeMapModuleEntry {
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 540; uint32_t java_map_index
	}, ; 354
	%struct.TypeMapModuleEntry {
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 247; uint32_t java_map_index
	}, ; 355
	%struct.TypeMapModuleEntry {
		i32 u0x0200034f, ; uint32_t type_token_id
		i32 611; uint32_t java_map_index
	}, ; 356
	%struct.TypeMapModuleEntry {
		i32 u0x02000350, ; uint32_t type_token_id
		i32 932; uint32_t java_map_index
	}, ; 357
	%struct.TypeMapModuleEntry {
		i32 u0x02000352, ; uint32_t type_token_id
		i32 667; uint32_t java_map_index
	}, ; 358
	%struct.TypeMapModuleEntry {
		i32 u0x02000353, ; uint32_t type_token_id
		i32 350; uint32_t java_map_index
	}, ; 359
	%struct.TypeMapModuleEntry {
		i32 u0x02000357, ; uint32_t type_token_id
		i32 725; uint32_t java_map_index
	}, ; 360
	%struct.TypeMapModuleEntry {
		i32 u0x02000359, ; uint32_t type_token_id
		i32 10; uint32_t java_map_index
	}, ; 361
	%struct.TypeMapModuleEntry {
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 794; uint32_t java_map_index
	}, ; 362
	%struct.TypeMapModuleEntry {
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 1030; uint32_t java_map_index
	}, ; 363
	%struct.TypeMapModuleEntry {
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 971; uint32_t java_map_index
	}, ; 364
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 670; uint32_t java_map_index
	}, ; 365
	%struct.TypeMapModuleEntry {
		i32 u0x02000363, ; uint32_t type_token_id
		i32 500; uint32_t java_map_index
	}, ; 366
	%struct.TypeMapModuleEntry {
		i32 u0x02000364, ; uint32_t type_token_id
		i32 394; uint32_t java_map_index
	}, ; 367
	%struct.TypeMapModuleEntry {
		i32 u0x02000365, ; uint32_t type_token_id
		i32 529; uint32_t java_map_index
	}, ; 368
	%struct.TypeMapModuleEntry {
		i32 u0x02000366, ; uint32_t type_token_id
		i32 579; uint32_t java_map_index
	}, ; 369
	%struct.TypeMapModuleEntry {
		i32 u0x02000367, ; uint32_t type_token_id
		i32 435; uint32_t java_map_index
	}, ; 370
	%struct.TypeMapModuleEntry {
		i32 u0x02000369, ; uint32_t type_token_id
		i32 299; uint32_t java_map_index
	}, ; 371
	%struct.TypeMapModuleEntry {
		i32 u0x0200036b, ; uint32_t type_token_id
		i32 651; uint32_t java_map_index
	}, ; 372
	%struct.TypeMapModuleEntry {
		i32 u0x0200036d, ; uint32_t type_token_id
		i32 21; uint32_t java_map_index
	}, ; 373
	%struct.TypeMapModuleEntry {
		i32 u0x0200036e, ; uint32_t type_token_id
		i32 992; uint32_t java_map_index
	}, ; 374
	%struct.TypeMapModuleEntry {
		i32 u0x02000379, ; uint32_t type_token_id
		i32 159; uint32_t java_map_index
	}, ; 375
	%struct.TypeMapModuleEntry {
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 966; uint32_t java_map_index
	}, ; 376
	%struct.TypeMapModuleEntry {
		i32 u0x0200037d, ; uint32_t type_token_id
		i32 206; uint32_t java_map_index
	}, ; 377
	%struct.TypeMapModuleEntry {
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 106; uint32_t java_map_index
	}, ; 378
	%struct.TypeMapModuleEntry {
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 607; uint32_t java_map_index
	}, ; 379
	%struct.TypeMapModuleEntry {
		i32 u0x02000381, ; uint32_t type_token_id
		i32 125; uint32_t java_map_index
	}, ; 380
	%struct.TypeMapModuleEntry {
		i32 u0x02000382, ; uint32_t type_token_id
		i32 45; uint32_t java_map_index
	}, ; 381
	%struct.TypeMapModuleEntry {
		i32 u0x02000383, ; uint32_t type_token_id
		i32 193; uint32_t java_map_index
	}, ; 382
	%struct.TypeMapModuleEntry {
		i32 u0x02000384, ; uint32_t type_token_id
		i32 659; uint32_t java_map_index
	}, ; 383
	%struct.TypeMapModuleEntry {
		i32 u0x02000386, ; uint32_t type_token_id
		i32 743; uint32_t java_map_index
	}, ; 384
	%struct.TypeMapModuleEntry {
		i32 u0x02000388, ; uint32_t type_token_id
		i32 99; uint32_t java_map_index
	}, ; 385
	%struct.TypeMapModuleEntry {
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 353; uint32_t java_map_index
	}, ; 386
	%struct.TypeMapModuleEntry {
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 903; uint32_t java_map_index
	}, ; 387
	%struct.TypeMapModuleEntry {
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 921; uint32_t java_map_index
	}, ; 388
	%struct.TypeMapModuleEntry {
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 835; uint32_t java_map_index
	}, ; 389
	%struct.TypeMapModuleEntry {
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 576; uint32_t java_map_index
	}, ; 390
	%struct.TypeMapModuleEntry {
		i32 u0x02000390, ; uint32_t type_token_id
		i32 245; uint32_t java_map_index
	}, ; 391
	%struct.TypeMapModuleEntry {
		i32 u0x02000392, ; uint32_t type_token_id
		i32 617; uint32_t java_map_index
	}, ; 392
	%struct.TypeMapModuleEntry {
		i32 u0x02000393, ; uint32_t type_token_id
		i32 312; uint32_t java_map_index
	}, ; 393
	%struct.TypeMapModuleEntry {
		i32 u0x02000394, ; uint32_t type_token_id
		i32 575; uint32_t java_map_index
	}, ; 394
	%struct.TypeMapModuleEntry {
		i32 u0x02000395, ; uint32_t type_token_id
		i32 153; uint32_t java_map_index
	}, ; 395
	%struct.TypeMapModuleEntry {
		i32 u0x02000396, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 396
	%struct.TypeMapModuleEntry {
		i32 u0x02000398, ; uint32_t type_token_id
		i32 560; uint32_t java_map_index
	}, ; 397
	%struct.TypeMapModuleEntry {
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 407; uint32_t java_map_index
	}, ; 398
	%struct.TypeMapModuleEntry {
		i32 u0x0200039c, ; uint32_t type_token_id
		i32 385; uint32_t java_map_index
	}, ; 399
	%struct.TypeMapModuleEntry {
		i32 u0x0200039e, ; uint32_t type_token_id
		i32 1028; uint32_t java_map_index
	}, ; 400
	%struct.TypeMapModuleEntry {
		i32 u0x0200039f, ; uint32_t type_token_id
		i32 958; uint32_t java_map_index
	}, ; 401
	%struct.TypeMapModuleEntry {
		i32 u0x020003a0, ; uint32_t type_token_id
		i32 532; uint32_t java_map_index
	}, ; 402
	%struct.TypeMapModuleEntry {
		i32 u0x020003a1, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 403
	%struct.TypeMapModuleEntry {
		i32 u0x020003a3, ; uint32_t type_token_id
		i32 931; uint32_t java_map_index
	}, ; 404
	%struct.TypeMapModuleEntry {
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 147; uint32_t java_map_index
	}, ; 405
	%struct.TypeMapModuleEntry {
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 406
	%struct.TypeMapModuleEntry {
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 135; uint32_t java_map_index
	}, ; 407
	%struct.TypeMapModuleEntry {
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	}, ; 408
	%struct.TypeMapModuleEntry {
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 386; uint32_t java_map_index
	}, ; 409
	%struct.TypeMapModuleEntry {
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 237; uint32_t java_map_index
	}, ; 410
	%struct.TypeMapModuleEntry {
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 648; uint32_t java_map_index
	}, ; 411
	%struct.TypeMapModuleEntry {
		i32 u0x020003af, ; uint32_t type_token_id
		i32 20; uint32_t java_map_index
	}, ; 412
	%struct.TypeMapModuleEntry {
		i32 u0x020003b0, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 413
	%struct.TypeMapModuleEntry {
		i32 u0x020003b2, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 414
	%struct.TypeMapModuleEntry {
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 676; uint32_t java_map_index
	}, ; 415
	%struct.TypeMapModuleEntry {
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 1036; uint32_t java_map_index
	}, ; 416
	%struct.TypeMapModuleEntry {
		i32 u0x020003b6, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 417
	%struct.TypeMapModuleEntry {
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 486; uint32_t java_map_index
	}, ; 418
	%struct.TypeMapModuleEntry {
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 185; uint32_t java_map_index
	}, ; 419
	%struct.TypeMapModuleEntry {
		i32 u0x020003bb, ; uint32_t type_token_id
		i32 622; uint32_t java_map_index
	}, ; 420
	%struct.TypeMapModuleEntry {
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 1010; uint32_t java_map_index
	}, ; 421
	%struct.TypeMapModuleEntry {
		i32 u0x020003be, ; uint32_t type_token_id
		i32 763; uint32_t java_map_index
	}, ; 422
	%struct.TypeMapModuleEntry {
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 1015; uint32_t java_map_index
	}, ; 423
	%struct.TypeMapModuleEntry {
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 424
	%struct.TypeMapModuleEntry {
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 391; uint32_t java_map_index
	}, ; 425
	%struct.TypeMapModuleEntry {
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 280; uint32_t java_map_index
	}, ; 426
	%struct.TypeMapModuleEntry {
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 427
	%struct.TypeMapModuleEntry {
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 428
	%struct.TypeMapModuleEntry {
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 449; uint32_t java_map_index
	}, ; 429
	%struct.TypeMapModuleEntry {
		i32 u0x020003cf, ; uint32_t type_token_id
		i32 719; uint32_t java_map_index
	}, ; 430
	%struct.TypeMapModuleEntry {
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 519; uint32_t java_map_index
	}, ; 431
	%struct.TypeMapModuleEntry {
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 437; uint32_t java_map_index
	}, ; 432
	%struct.TypeMapModuleEntry {
		i32 u0x020003d4, ; uint32_t type_token_id
		i32 262; uint32_t java_map_index
	}, ; 433
	%struct.TypeMapModuleEntry {
		i32 u0x020003d6, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 434
	%struct.TypeMapModuleEntry {
		i32 u0x020003d8, ; uint32_t type_token_id
		i32 872; uint32_t java_map_index
	}, ; 435
	%struct.TypeMapModuleEntry {
		i32 u0x020003da, ; uint32_t type_token_id
		i32 715; uint32_t java_map_index
	}, ; 436
	%struct.TypeMapModuleEntry {
		i32 u0x020003dc, ; uint32_t type_token_id
		i32 359; uint32_t java_map_index
	}, ; 437
	%struct.TypeMapModuleEntry {
		i32 u0x020003de, ; uint32_t type_token_id
		i32 1059; uint32_t java_map_index
	}, ; 438
	%struct.TypeMapModuleEntry {
		i32 u0x020003e0, ; uint32_t type_token_id
		i32 893; uint32_t java_map_index
	}, ; 439
	%struct.TypeMapModuleEntry {
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 521; uint32_t java_map_index
	}, ; 440
	%struct.TypeMapModuleEntry {
		i32 u0x020003e4, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 441
	%struct.TypeMapModuleEntry {
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 442
	%struct.TypeMapModuleEntry {
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 767; uint32_t java_map_index
	}, ; 443
	%struct.TypeMapModuleEntry {
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 116; uint32_t java_map_index
	}, ; 444
	%struct.TypeMapModuleEntry {
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 168; uint32_t java_map_index
	}, ; 445
	%struct.TypeMapModuleEntry {
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 501; uint32_t java_map_index
	}, ; 446
	%struct.TypeMapModuleEntry {
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 415; uint32_t java_map_index
	}, ; 447
	%struct.TypeMapModuleEntry {
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 425; uint32_t java_map_index
	}, ; 448
	%struct.TypeMapModuleEntry {
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 947; uint32_t java_map_index
	}, ; 449
	%struct.TypeMapModuleEntry {
		i32 u0x020003f0, ; uint32_t type_token_id
		i32 284; uint32_t java_map_index
	}, ; 450
	%struct.TypeMapModuleEntry {
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 913; uint32_t java_map_index
	}, ; 451
	%struct.TypeMapModuleEntry {
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 736; uint32_t java_map_index
	}, ; 452
	%struct.TypeMapModuleEntry {
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 703; uint32_t java_map_index
	}, ; 453
	%struct.TypeMapModuleEntry {
		i32 u0x020003f4, ; uint32_t type_token_id
		i32 184; uint32_t java_map_index
	}, ; 454
	%struct.TypeMapModuleEntry {
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 189; uint32_t java_map_index
	}, ; 455
	%struct.TypeMapModuleEntry {
		i32 u0x020003f6, ; uint32_t type_token_id
		i32 95; uint32_t java_map_index
	}, ; 456
	%struct.TypeMapModuleEntry {
		i32 u0x020003f7, ; uint32_t type_token_id
		i32 2; uint32_t java_map_index
	}, ; 457
	%struct.TypeMapModuleEntry {
		i32 u0x020003f8, ; uint32_t type_token_id
		i32 678; uint32_t java_map_index
	}, ; 458
	%struct.TypeMapModuleEntry {
		i32 u0x020003f9, ; uint32_t type_token_id
		i32 411; uint32_t java_map_index
	}, ; 459
	%struct.TypeMapModuleEntry {
		i32 u0x020003fa, ; uint32_t type_token_id
		i32 209; uint32_t java_map_index
	}, ; 460
	%struct.TypeMapModuleEntry {
		i32 u0x020003fb, ; uint32_t type_token_id
		i32 900; uint32_t java_map_index
	}, ; 461
	%struct.TypeMapModuleEntry {
		i32 u0x020003fd, ; uint32_t type_token_id
		i32 192; uint32_t java_map_index
	}, ; 462
	%struct.TypeMapModuleEntry {
		i32 u0x020003fe, ; uint32_t type_token_id
		i32 91; uint32_t java_map_index
	}, ; 463
	%struct.TypeMapModuleEntry {
		i32 u0x020003ff, ; uint32_t type_token_id
		i32 319; uint32_t java_map_index
	}, ; 464
	%struct.TypeMapModuleEntry {
		i32 u0x02000400, ; uint32_t type_token_id
		i32 339; uint32_t java_map_index
	}, ; 465
	%struct.TypeMapModuleEntry {
		i32 u0x02000401, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 466
	%struct.TypeMapModuleEntry {
		i32 u0x02000403, ; uint32_t type_token_id
		i32 599; uint32_t java_map_index
	}, ; 467
	%struct.TypeMapModuleEntry {
		i32 u0x02000405, ; uint32_t type_token_id
		i32 987; uint32_t java_map_index
	}, ; 468
	%struct.TypeMapModuleEntry {
		i32 u0x02000406, ; uint32_t type_token_id
		i32 294; uint32_t java_map_index
	}, ; 469
	%struct.TypeMapModuleEntry {
		i32 u0x02000408, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 470
	%struct.TypeMapModuleEntry {
		i32 u0x0200040c, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 471
	%struct.TypeMapModuleEntry {
		i32 u0x0200040e, ; uint32_t type_token_id
		i32 48; uint32_t java_map_index
	}, ; 472
	%struct.TypeMapModuleEntry {
		i32 u0x0200040f, ; uint32_t type_token_id
		i32 138; uint32_t java_map_index
	}, ; 473
	%struct.TypeMapModuleEntry {
		i32 u0x02000410, ; uint32_t type_token_id
		i32 412; uint32_t java_map_index
	}, ; 474
	%struct.TypeMapModuleEntry {
		i32 u0x02000411, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 475
	%struct.TypeMapModuleEntry {
		i32 u0x02000413, ; uint32_t type_token_id
		i32 109; uint32_t java_map_index
	}, ; 476
	%struct.TypeMapModuleEntry {
		i32 u0x02000414, ; uint32_t type_token_id
		i32 1001; uint32_t java_map_index
	}, ; 477
	%struct.TypeMapModuleEntry {
		i32 u0x02000415, ; uint32_t type_token_id
		i32 200; uint32_t java_map_index
	}, ; 478
	%struct.TypeMapModuleEntry {
		i32 u0x02000416, ; uint32_t type_token_id
		i32 859; uint32_t java_map_index
	}, ; 479
	%struct.TypeMapModuleEntry {
		i32 u0x02000418, ; uint32_t type_token_id
		i32 63; uint32_t java_map_index
	}, ; 480
	%struct.TypeMapModuleEntry {
		i32 u0x02000419, ; uint32_t type_token_id
		i32 352; uint32_t java_map_index
	}, ; 481
	%struct.TypeMapModuleEntry {
		i32 u0x0200041a, ; uint32_t type_token_id
		i32 726; uint32_t java_map_index
	}, ; 482
	%struct.TypeMapModuleEntry {
		i32 u0x0200041b, ; uint32_t type_token_id
		i32 610; uint32_t java_map_index
	}, ; 483
	%struct.TypeMapModuleEntry {
		i32 u0x0200041c, ; uint32_t type_token_id
		i32 1037; uint32_t java_map_index
	}, ; 484
	%struct.TypeMapModuleEntry {
		i32 u0x0200041d, ; uint32_t type_token_id
		i32 259; uint32_t java_map_index
	}, ; 485
	%struct.TypeMapModuleEntry {
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 745; uint32_t java_map_index
	} ; 486
], align 4

@module26_managed_to_java_duplicates = internal dso_local constant [197 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 563; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x020000ae, ; uint32_t type_token_id
		i32 305; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x020000b0, ; uint32_t type_token_id
		i32 66; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 918; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000b5, ; uint32_t type_token_id
		i32 855; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 679; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x020000b9, ; uint32_t type_token_id
		i32 342; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x020000bb, ; uint32_t type_token_id
		i32 831; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x020000bd, ; uint32_t type_token_id
		i32 34; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x020000bf, ; uint32_t type_token_id
		i32 207; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 980; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x020000c8, ; uint32_t type_token_id
		i32 49; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x020000ca, ; uint32_t type_token_id
		i32 629; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x020000ce, ; uint32_t type_token_id
		i32 404; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x020000d0, ; uint32_t type_token_id
		i32 956; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x020000d2, ; uint32_t type_token_id
		i32 692; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x020000d6, ; uint32_t type_token_id
		i32 30; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x020000d9, ; uint32_t type_token_id
		i32 520; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x020000dc, ; uint32_t type_token_id
		i32 776; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x020000df, ; uint32_t type_token_id
		i32 636; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x020000e4, ; uint32_t type_token_id
		i32 257; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x020000e6, ; uint32_t type_token_id
		i32 246; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x020000e9, ; uint32_t type_token_id
		i32 213; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x020000ec, ; uint32_t type_token_id
		i32 85; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x020000ee, ; uint32_t type_token_id
		i32 886; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x020000f1, ; uint32_t type_token_id
		i32 503; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x020000f5, ; uint32_t type_token_id
		i32 274; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x020000f7, ; uint32_t type_token_id
		i32 485; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x020000f8, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000102, ; uint32_t type_token_id
		i32 268; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x0200010a, ; uint32_t type_token_id
		i32 536; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x0200010b, ; uint32_t type_token_id
		i32 512; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x0200010c, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x0200010d, ; uint32_t type_token_id
		i32 661; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x02000113, ; uint32_t type_token_id
		i32 1067; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 422; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 137; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 685; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 325; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000127, ; uint32_t type_token_id
		i32 991; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 8; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x0200012e, ; uint32_t type_token_id
		i32 132; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 526; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x0200013b, ; uint32_t type_token_id
		i32 314; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000142, ; uint32_t type_token_id
		i32 733; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 850; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000151, ; uint32_t type_token_id
		i32 38; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 955; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 917; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 702; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x0200015d, ; uint32_t type_token_id
		i32 451; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000160, ; uint32_t type_token_id
		i32 878; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000162, ; uint32_t type_token_id
		i32 1039; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 439; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x0200016c, ; uint32_t type_token_id
		i32 365; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 86; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000178, ; uint32_t type_token_id
		i32 805; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x0200017b, ; uint32_t type_token_id
		i32 4; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200017d, ; uint32_t type_token_id
		i32 728; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x0200017f, ; uint32_t type_token_id
		i32 875; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x02000181, ; uint32_t type_token_id
		i32 915; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x02000189, ; uint32_t type_token_id
		i32 236; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x0200018c, ; uint32_t type_token_id
		i32 158; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x0200018e, ; uint32_t type_token_id
		i32 963; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x02000190, ; uint32_t type_token_id
		i32 919; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x0200019f, ; uint32_t type_token_id
		i32 191; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020001a1, ; uint32_t type_token_id
		i32 795; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020001a3, ; uint32_t type_token_id
		i32 434; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x020001a5, ; uint32_t type_token_id
		i32 516; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x020001a7, ; uint32_t type_token_id
		i32 1054; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x020001af, ; uint32_t type_token_id
		i32 0; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x020001b3, ; uint32_t type_token_id
		i32 788; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x020001b7, ; uint32_t type_token_id
		i32 194; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x020001bb, ; uint32_t type_token_id
		i32 83; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x020001bd, ; uint32_t type_token_id
		i32 546; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x020001bf, ; uint32_t type_token_id
		i32 94; uint32_t java_map_index
	}, ; 75
	%struct.TypeMapModuleEntry {
		i32 u0x020001c6, ; uint32_t type_token_id
		i32 358; uint32_t java_map_index
	}, ; 76
	%struct.TypeMapModuleEntry {
		i32 u0x020001cb, ; uint32_t type_token_id
		i32 453; uint32_t java_map_index
	}, ; 77
	%struct.TypeMapModuleEntry {
		i32 u0x020001ce, ; uint32_t type_token_id
		i32 995; uint32_t java_map_index
	}, ; 78
	%struct.TypeMapModuleEntry {
		i32 u0x020001d0, ; uint32_t type_token_id
		i32 852; uint32_t java_map_index
	}, ; 79
	%struct.TypeMapModuleEntry {
		i32 u0x020001d4, ; uint32_t type_token_id
		i32 374; uint32_t java_map_index
	}, ; 80
	%struct.TypeMapModuleEntry {
		i32 u0x020001d6, ; uint32_t type_token_id
		i32 690; uint32_t java_map_index
	}, ; 81
	%struct.TypeMapModuleEntry {
		i32 u0x020001da, ; uint32_t type_token_id
		i32 604; uint32_t java_map_index
	}, ; 82
	%struct.TypeMapModuleEntry {
		i32 u0x020001de, ; uint32_t type_token_id
		i32 857; uint32_t java_map_index
	}, ; 83
	%struct.TypeMapModuleEntry {
		i32 u0x020001e2, ; uint32_t type_token_id
		i32 413; uint32_t java_map_index
	}, ; 84
	%struct.TypeMapModuleEntry {
		i32 u0x020001fb, ; uint32_t type_token_id
		i32 1053; uint32_t java_map_index
	}, ; 85
	%struct.TypeMapModuleEntry {
		i32 u0x020001fe, ; uint32_t type_token_id
		i32 311; uint32_t java_map_index
	}, ; 86
	%struct.TypeMapModuleEntry {
		i32 u0x02000201, ; uint32_t type_token_id
		i32 800; uint32_t java_map_index
	}, ; 87
	%struct.TypeMapModuleEntry {
		i32 u0x02000202, ; uint32_t type_token_id
		i32 724; uint32_t java_map_index
	}, ; 88
	%struct.TypeMapModuleEntry {
		i32 u0x02000205, ; uint32_t type_token_id
		i32 908; uint32_t java_map_index
	}, ; 89
	%struct.TypeMapModuleEntry {
		i32 u0x02000213, ; uint32_t type_token_id
		i32 252; uint32_t java_map_index
	}, ; 90
	%struct.TypeMapModuleEntry {
		i32 u0x02000215, ; uint32_t type_token_id
		i32 162; uint32_t java_map_index
	}, ; 91
	%struct.TypeMapModuleEntry {
		i32 u0x02000218, ; uint32_t type_token_id
		i32 642; uint32_t java_map_index
	}, ; 92
	%struct.TypeMapModuleEntry {
		i32 u0x0200021a, ; uint32_t type_token_id
		i32 960; uint32_t java_map_index
	}, ; 93
	%struct.TypeMapModuleEntry {
		i32 u0x0200021d, ; uint32_t type_token_id
		i32 1056; uint32_t java_map_index
	}, ; 94
	%struct.TypeMapModuleEntry {
		i32 u0x0200021f, ; uint32_t type_token_id
		i32 82; uint32_t java_map_index
	}, ; 95
	%struct.TypeMapModuleEntry {
		i32 u0x02000221, ; uint32_t type_token_id
		i32 1055; uint32_t java_map_index
	}, ; 96
	%struct.TypeMapModuleEntry {
		i32 u0x02000224, ; uint32_t type_token_id
		i32 824; uint32_t java_map_index
	}, ; 97
	%struct.TypeMapModuleEntry {
		i32 u0x02000227, ; uint32_t type_token_id
		i32 732; uint32_t java_map_index
	}, ; 98
	%struct.TypeMapModuleEntry {
		i32 u0x02000229, ; uint32_t type_token_id
		i32 290; uint32_t java_map_index
	}, ; 99
	%struct.TypeMapModuleEntry {
		i32 u0x0200022b, ; uint32_t type_token_id
		i32 248; uint32_t java_map_index
	}, ; 100
	%struct.TypeMapModuleEntry {
		i32 u0x0200022d, ; uint32_t type_token_id
		i32 355; uint32_t java_map_index
	}, ; 101
	%struct.TypeMapModuleEntry {
		i32 u0x0200022f, ; uint32_t type_token_id
		i32 121; uint32_t java_map_index
	}, ; 102
	%struct.TypeMapModuleEntry {
		i32 u0x02000231, ; uint32_t type_token_id
		i32 727; uint32_t java_map_index
	}, ; 103
	%struct.TypeMapModuleEntry {
		i32 u0x02000233, ; uint32_t type_token_id
		i32 623; uint32_t java_map_index
	}, ; 104
	%struct.TypeMapModuleEntry {
		i32 u0x02000236, ; uint32_t type_token_id
		i32 653; uint32_t java_map_index
	}, ; 105
	%struct.TypeMapModuleEntry {
		i32 u0x02000237, ; uint32_t type_token_id
		i32 739; uint32_t java_map_index
	}, ; 106
	%struct.TypeMapModuleEntry {
		i32 u0x02000239, ; uint32_t type_token_id
		i32 811; uint32_t java_map_index
	}, ; 107
	%struct.TypeMapModuleEntry {
		i32 u0x02000240, ; uint32_t type_token_id
		i32 899; uint32_t java_map_index
	}, ; 108
	%struct.TypeMapModuleEntry {
		i32 u0x02000249, ; uint32_t type_token_id
		i32 50; uint32_t java_map_index
	}, ; 109
	%struct.TypeMapModuleEntry {
		i32 u0x0200024d, ; uint32_t type_token_id
		i32 1048; uint32_t java_map_index
	}, ; 110
	%struct.TypeMapModuleEntry {
		i32 u0x0200025c, ; uint32_t type_token_id
		i32 71; uint32_t java_map_index
	}, ; 111
	%struct.TypeMapModuleEntry {
		i32 u0x02000263, ; uint32_t type_token_id
		i32 17; uint32_t java_map_index
	}, ; 112
	%struct.TypeMapModuleEntry {
		i32 u0x02000267, ; uint32_t type_token_id
		i32 603; uint32_t java_map_index
	}, ; 113
	%struct.TypeMapModuleEntry {
		i32 u0x02000268, ; uint32_t type_token_id
		i32 928; uint32_t java_map_index
	}, ; 114
	%struct.TypeMapModuleEntry {
		i32 u0x0200026e, ; uint32_t type_token_id
		i32 595; uint32_t java_map_index
	}, ; 115
	%struct.TypeMapModuleEntry {
		i32 u0x02000272, ; uint32_t type_token_id
		i32 427; uint32_t java_map_index
	}, ; 116
	%struct.TypeMapModuleEntry {
		i32 u0x0200027a, ; uint32_t type_token_id
		i32 525; uint32_t java_map_index
	}, ; 117
	%struct.TypeMapModuleEntry {
		i32 u0x0200027e, ; uint32_t type_token_id
		i32 943; uint32_t java_map_index
	}, ; 118
	%struct.TypeMapModuleEntry {
		i32 u0x02000281, ; uint32_t type_token_id
		i32 993; uint32_t java_map_index
	}, ; 119
	%struct.TypeMapModuleEntry {
		i32 u0x020002aa, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 120
	%struct.TypeMapModuleEntry {
		i32 u0x020002b0, ; uint32_t type_token_id
		i32 371; uint32_t java_map_index
	}, ; 121
	%struct.TypeMapModuleEntry {
		i32 u0x020002b5, ; uint32_t type_token_id
		i32 171; uint32_t java_map_index
	}, ; 122
	%struct.TypeMapModuleEntry {
		i32 u0x020002b9, ; uint32_t type_token_id
		i32 1052; uint32_t java_map_index
	}, ; 123
	%struct.TypeMapModuleEntry {
		i32 u0x020002cf, ; uint32_t type_token_id
		i32 933; uint32_t java_map_index
	}, ; 124
	%struct.TypeMapModuleEntry {
		i32 u0x020002ff, ; uint32_t type_token_id
		i32 471; uint32_t java_map_index
	}, ; 125
	%struct.TypeMapModuleEntry {
		i32 u0x02000305, ; uint32_t type_token_id
		i32 697; uint32_t java_map_index
	}, ; 126
	%struct.TypeMapModuleEntry {
		i32 u0x02000307, ; uint32_t type_token_id
		i32 934; uint32_t java_map_index
	}, ; 127
	%struct.TypeMapModuleEntry {
		i32 u0x0200030c, ; uint32_t type_token_id
		i32 373; uint32_t java_map_index
	}, ; 128
	%struct.TypeMapModuleEntry {
		i32 u0x02000312, ; uint32_t type_token_id
		i32 695; uint32_t java_map_index
	}, ; 129
	%struct.TypeMapModuleEntry {
		i32 u0x02000318, ; uint32_t type_token_id
		i32 846; uint32_t java_map_index
	}, ; 130
	%struct.TypeMapModuleEntry {
		i32 u0x02000321, ; uint32_t type_token_id
		i32 488; uint32_t java_map_index
	}, ; 131
	%struct.TypeMapModuleEntry {
		i32 u0x02000326, ; uint32_t type_token_id
		i32 388; uint32_t java_map_index
	}, ; 132
	%struct.TypeMapModuleEntry {
		i32 u0x02000328, ; uint32_t type_token_id
		i32 208; uint32_t java_map_index
	}, ; 133
	%struct.TypeMapModuleEntry {
		i32 u0x02000329, ; uint32_t type_token_id
		i32 1000; uint32_t java_map_index
	}, ; 134
	%struct.TypeMapModuleEntry {
		i32 u0x0200032d, ; uint32_t type_token_id
		i32 666; uint32_t java_map_index
	}, ; 135
	%struct.TypeMapModuleEntry {
		i32 u0x02000330, ; uint32_t type_token_id
		i32 730; uint32_t java_map_index
	}, ; 136
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 131; uint32_t java_map_index
	}, ; 137
	%struct.TypeMapModuleEntry {
		i32 u0x02000337, ; uint32_t type_token_id
		i32 660; uint32_t java_map_index
	}, ; 138
	%struct.TypeMapModuleEntry {
		i32 u0x02000339, ; uint32_t type_token_id
		i32 474; uint32_t java_map_index
	}, ; 139
	%struct.TypeMapModuleEntry {
		i32 u0x0200033c, ; uint32_t type_token_id
		i32 105; uint32_t java_map_index
	}, ; 140
	%struct.TypeMapModuleEntry {
		i32 u0x0200033f, ; uint32_t type_token_id
		i32 513; uint32_t java_map_index
	}, ; 141
	%struct.TypeMapModuleEntry {
		i32 u0x02000343, ; uint32_t type_token_id
		i32 73; uint32_t java_map_index
	}, ; 142
	%struct.TypeMapModuleEntry {
		i32 u0x02000345, ; uint32_t type_token_id
		i32 641; uint32_t java_map_index
	}, ; 143
	%struct.TypeMapModuleEntry {
		i32 u0x02000347, ; uint32_t type_token_id
		i32 860; uint32_t java_map_index
	}, ; 144
	%struct.TypeMapModuleEntry {
		i32 u0x0200035a, ; uint32_t type_token_id
		i32 667; uint32_t java_map_index
	}, ; 145
	%struct.TypeMapModuleEntry {
		i32 u0x02000368, ; uint32_t type_token_id
		i32 435; uint32_t java_map_index
	}, ; 146
	%struct.TypeMapModuleEntry {
		i32 u0x0200036c, ; uint32_t type_token_id
		i32 651; uint32_t java_map_index
	}, ; 147
	%struct.TypeMapModuleEntry {
		i32 u0x0200037b, ; uint32_t type_token_id
		i32 966; uint32_t java_map_index
	}, ; 148
	%struct.TypeMapModuleEntry {
		i32 u0x02000385, ; uint32_t type_token_id
		i32 659; uint32_t java_map_index
	}, ; 149
	%struct.TypeMapModuleEntry {
		i32 u0x02000387, ; uint32_t type_token_id
		i32 743; uint32_t java_map_index
	}, ; 150
	%struct.TypeMapModuleEntry {
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 353; uint32_t java_map_index
	}, ; 151
	%struct.TypeMapModuleEntry {
		i32 u0x02000391, ; uint32_t type_token_id
		i32 245; uint32_t java_map_index
	}, ; 152
	%struct.TypeMapModuleEntry {
		i32 u0x02000397, ; uint32_t type_token_id
		i32 873; uint32_t java_map_index
	}, ; 153
	%struct.TypeMapModuleEntry {
		i32 u0x02000399, ; uint32_t type_token_id
		i32 560; uint32_t java_map_index
	}, ; 154
	%struct.TypeMapModuleEntry {
		i32 u0x0200039b, ; uint32_t type_token_id
		i32 407; uint32_t java_map_index
	}, ; 155
	%struct.TypeMapModuleEntry {
		i32 u0x0200039d, ; uint32_t type_token_id
		i32 385; uint32_t java_map_index
	}, ; 156
	%struct.TypeMapModuleEntry {
		i32 u0x020003a2, ; uint32_t type_token_id
		i32 70; uint32_t java_map_index
	}, ; 157
	%struct.TypeMapModuleEntry {
		i32 u0x020003a4, ; uint32_t type_token_id
		i32 931; uint32_t java_map_index
	}, ; 158
	%struct.TypeMapModuleEntry {
		i32 u0x020003a7, ; uint32_t type_token_id
		i32 9; uint32_t java_map_index
	}, ; 159
	%struct.TypeMapModuleEntry {
		i32 u0x020003a9, ; uint32_t type_token_id
		i32 135; uint32_t java_map_index
	}, ; 160
	%struct.TypeMapModuleEntry {
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 375; uint32_t java_map_index
	}, ; 161
	%struct.TypeMapModuleEntry {
		i32 u0x020003b1, ; uint32_t type_token_id
		i32 1066; uint32_t java_map_index
	}, ; 162
	%struct.TypeMapModuleEntry {
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 954; uint32_t java_map_index
	}, ; 163
	%struct.TypeMapModuleEntry {
		i32 u0x020003b7, ; uint32_t type_token_id
		i32 148; uint32_t java_map_index
	}, ; 164
	%struct.TypeMapModuleEntry {
		i32 u0x020003b9, ; uint32_t type_token_id
		i32 486; uint32_t java_map_index
	}, ; 165
	%struct.TypeMapModuleEntry {
		i32 u0x020003bd, ; uint32_t type_token_id
		i32 1010; uint32_t java_map_index
	}, ; 166
	%struct.TypeMapModuleEntry {
		i32 u0x020003c0, ; uint32_t type_token_id
		i32 1015; uint32_t java_map_index
	}, ; 167
	%struct.TypeMapModuleEntry {
		i32 u0x020003c2, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 168
	%struct.TypeMapModuleEntry {
		i32 u0x020003c3, ; uint32_t type_token_id
		i32 329; uint32_t java_map_index
	}, ; 169
	%struct.TypeMapModuleEntry {
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 391; uint32_t java_map_index
	}, ; 170
	%struct.TypeMapModuleEntry {
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 280; uint32_t java_map_index
	}, ; 171
	%struct.TypeMapModuleEntry {
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 98; uint32_t java_map_index
	}, ; 172
	%struct.TypeMapModuleEntry {
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 37; uint32_t java_map_index
	}, ; 173
	%struct.TypeMapModuleEntry {
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 431; uint32_t java_map_index
	}, ; 174
	%struct.TypeMapModuleEntry {
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 449; uint32_t java_map_index
	}, ; 175
	%struct.TypeMapModuleEntry {
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 719; uint32_t java_map_index
	}, ; 176
	%struct.TypeMapModuleEntry {
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 262; uint32_t java_map_index
	}, ; 177
	%struct.TypeMapModuleEntry {
		i32 u0x020003d7, ; uint32_t type_token_id
		i32 74; uint32_t java_map_index
	}, ; 178
	%struct.TypeMapModuleEntry {
		i32 u0x020003d9, ; uint32_t type_token_id
		i32 872; uint32_t java_map_index
	}, ; 179
	%struct.TypeMapModuleEntry {
		i32 u0x020003db, ; uint32_t type_token_id
		i32 715; uint32_t java_map_index
	}, ; 180
	%struct.TypeMapModuleEntry {
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 359; uint32_t java_map_index
	}, ; 181
	%struct.TypeMapModuleEntry {
		i32 u0x020003df, ; uint32_t type_token_id
		i32 1059; uint32_t java_map_index
	}, ; 182
	%struct.TypeMapModuleEntry {
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 893; uint32_t java_map_index
	}, ; 183
	%struct.TypeMapModuleEntry {
		i32 u0x020003e3, ; uint32_t type_token_id
		i32 521; uint32_t java_map_index
	}, ; 184
	%struct.TypeMapModuleEntry {
		i32 u0x020003e5, ; uint32_t type_token_id
		i32 129; uint32_t java_map_index
	}, ; 185
	%struct.TypeMapModuleEntry {
		i32 u0x020003e7, ; uint32_t type_token_id
		i32 376; uint32_t java_map_index
	}, ; 186
	%struct.TypeMapModuleEntry {
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 767; uint32_t java_map_index
	}, ; 187
	%struct.TypeMapModuleEntry {
		i32 u0x02000402, ; uint32_t type_token_id
		i32 101; uint32_t java_map_index
	}, ; 188
	%struct.TypeMapModuleEntry {
		i32 u0x02000404, ; uint32_t type_token_id
		i32 599; uint32_t java_map_index
	}, ; 189
	%struct.TypeMapModuleEntry {
		i32 u0x02000407, ; uint32_t type_token_id
		i32 294; uint32_t java_map_index
	}, ; 190
	%struct.TypeMapModuleEntry {
		i32 u0x02000409, ; uint32_t type_token_id
		i32 3; uint32_t java_map_index
	}, ; 191
	%struct.TypeMapModuleEntry {
		i32 u0x0200040a, ; uint32_t type_token_id
		i32 184; uint32_t java_map_index
	}, ; 192
	%struct.TypeMapModuleEntry {
		i32 u0x0200040d, ; uint32_t type_token_id
		i32 592; uint32_t java_map_index
	}, ; 193
	%struct.TypeMapModuleEntry {
		i32 u0x02000412, ; uint32_t type_token_id
		i32 463; uint32_t java_map_index
	}, ; 194
	%struct.TypeMapModuleEntry {
		i32 u0x02000417, ; uint32_t type_token_id
		i32 859; uint32_t java_map_index
	}, ; 195
	%struct.TypeMapModuleEntry {
		i32 u0x0200041e, ; uint32_t type_token_id
		i32 259; uint32_t java_map_index
	} ; 196
], align 4

@module27_managed_to_java = internal dso_local constant [10 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200002f, ; uint32_t type_token_id
		i32 199; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000031, ; uint32_t type_token_id
		i32 445; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000033, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000035, ; uint32_t type_token_id
		i32 984; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000036, ; uint32_t type_token_id
		i32 890; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000038, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 1008; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x02000040, ; uint32_t type_token_id
		i32 965; uint32_t java_map_index
	} ; 9
], align 4

@module27_managed_to_java_duplicates = internal dso_local constant [9 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000030, ; uint32_t type_token_id
		i32 199; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000032, ; uint32_t type_token_id
		i32 445; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000034, ; uint32_t type_token_id
		i32 585; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000037, ; uint32_t type_token_id
		i32 890; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000039, ; uint32_t type_token_id
		i32 626; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 1008; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 52; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 297; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x02000041, ; uint32_t type_token_id
		i32 965; uint32_t java_map_index
	} ; 8
], align 4

@module28_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000078, ; uint32_t type_token_id
		i32 905; uint32_t java_map_index
	} ; 0
], align 4

@module29_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 716; uint32_t java_map_index
	} ; 0
], align 4

@module30_managed_to_java = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000003, ; uint32_t type_token_id
		i32 80; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000004, ; uint32_t type_token_id
		i32 754; uint32_t java_map_index
	} ; 1
], align 4

@module30_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000005, ; uint32_t type_token_id
		i32 754; uint32_t java_map_index
	} ; 0
], align 4

@module31_managed_to_java = internal dso_local constant [76 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 751; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 31; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 89; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 847; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 322; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x02000118, ; uint32_t type_token_id
		i32 862; uint32_t java_map_index
	}, ; 5
	%struct.TypeMapModuleEntry {
		i32 u0x02000119, ; uint32_t type_token_id
		i32 656; uint32_t java_map_index
	}, ; 6
	%struct.TypeMapModuleEntry {
		i32 u0x0200011b, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 7
	%struct.TypeMapModuleEntry {
		i32 u0x0200011d, ; uint32_t type_token_id
		i32 370; uint32_t java_map_index
	}, ; 8
	%struct.TypeMapModuleEntry {
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 1069; uint32_t java_map_index
	}, ; 9
	%struct.TypeMapModuleEntry {
		i32 u0x02000120, ; uint32_t type_token_id
		i32 761; uint32_t java_map_index
	}, ; 10
	%struct.TypeMapModuleEntry {
		i32 u0x02000121, ; uint32_t type_token_id
		i32 644; uint32_t java_map_index
	}, ; 11
	%struct.TypeMapModuleEntry {
		i32 u0x02000123, ; uint32_t type_token_id
		i32 580; uint32_t java_map_index
	}, ; 12
	%struct.TypeMapModuleEntry {
		i32 u0x02000124, ; uint32_t type_token_id
		i32 182; uint32_t java_map_index
	}, ; 13
	%struct.TypeMapModuleEntry {
		i32 u0x02000125, ; uint32_t type_token_id
		i32 55; uint32_t java_map_index
	}, ; 14
	%struct.TypeMapModuleEntry {
		i32 u0x02000126, ; uint32_t type_token_id
		i32 798; uint32_t java_map_index
	}, ; 15
	%struct.TypeMapModuleEntry {
		i32 u0x02000127, ; uint32_t type_token_id
		i32 239; uint32_t java_map_index
	}, ; 16
	%struct.TypeMapModuleEntry {
		i32 u0x02000128, ; uint32_t type_token_id
		i32 484; uint32_t java_map_index
	}, ; 17
	%struct.TypeMapModuleEntry {
		i32 u0x02000129, ; uint32_t type_token_id
		i32 226; uint32_t java_map_index
	}, ; 18
	%struct.TypeMapModuleEntry {
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 419; uint32_t java_map_index
	}, ; 19
	%struct.TypeMapModuleEntry {
		i32 u0x02000130, ; uint32_t type_token_id
		i32 942; uint32_t java_map_index
	}, ; 20
	%struct.TypeMapModuleEntry {
		i32 u0x02000137, ; uint32_t type_token_id
		i32 594; uint32_t java_map_index
	}, ; 21
	%struct.TypeMapModuleEntry {
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 47; uint32_t java_map_index
	}, ; 22
	%struct.TypeMapModuleEntry {
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 630; uint32_t java_map_index
	}, ; 23
	%struct.TypeMapModuleEntry {
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 202; uint32_t java_map_index
	}, ; 24
	%struct.TypeMapModuleEntry {
		i32 u0x02000150, ; uint32_t type_token_id
		i32 317; uint32_t java_map_index
	}, ; 25
	%struct.TypeMapModuleEntry {
		i32 u0x02000151, ; uint32_t type_token_id
		i32 649; uint32_t java_map_index
	}, ; 26
	%struct.TypeMapModuleEntry {
		i32 u0x02000152, ; uint32_t type_token_id
		i32 681; uint32_t java_map_index
	}, ; 27
	%struct.TypeMapModuleEntry {
		i32 u0x02000153, ; uint32_t type_token_id
		i32 711; uint32_t java_map_index
	}, ; 28
	%struct.TypeMapModuleEntry {
		i32 u0x02000155, ; uint32_t type_token_id
		i32 482; uint32_t java_map_index
	}, ; 29
	%struct.TypeMapModuleEntry {
		i32 u0x02000156, ; uint32_t type_token_id
		i32 93; uint32_t java_map_index
	}, ; 30
	%struct.TypeMapModuleEntry {
		i32 u0x02000157, ; uint32_t type_token_id
		i32 837; uint32_t java_map_index
	}, ; 31
	%struct.TypeMapModuleEntry {
		i32 u0x02000158, ; uint32_t type_token_id
		i32 665; uint32_t java_map_index
	}, ; 32
	%struct.TypeMapModuleEntry {
		i32 u0x02000159, ; uint32_t type_token_id
		i32 994; uint32_t java_map_index
	}, ; 33
	%struct.TypeMapModuleEntry {
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 461; uint32_t java_map_index
	}, ; 34
	%struct.TypeMapModuleEntry {
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 112; uint32_t java_map_index
	}, ; 35
	%struct.TypeMapModuleEntry {
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 416; uint32_t java_map_index
	}, ; 36
	%struct.TypeMapModuleEntry {
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 708; uint32_t java_map_index
	}, ; 37
	%struct.TypeMapModuleEntry {
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1012; uint32_t java_map_index
	}, ; 38
	%struct.TypeMapModuleEntry {
		i32 u0x02000161, ; uint32_t type_token_id
		i32 154; uint32_t java_map_index
	}, ; 39
	%struct.TypeMapModuleEntry {
		i32 u0x02000162, ; uint32_t type_token_id
		i32 77; uint32_t java_map_index
	}, ; 40
	%struct.TypeMapModuleEntry {
		i32 u0x02000163, ; uint32_t type_token_id
		i32 114; uint32_t java_map_index
	}, ; 41
	%struct.TypeMapModuleEntry {
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1020; uint32_t java_map_index
	}, ; 42
	%struct.TypeMapModuleEntry {
		i32 u0x02000165, ; uint32_t type_token_id
		i32 1; uint32_t java_map_index
	}, ; 43
	%struct.TypeMapModuleEntry {
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1058; uint32_t java_map_index
	}, ; 44
	%struct.TypeMapModuleEntry {
		i32 u0x02000168, ; uint32_t type_token_id
		i32 441; uint32_t java_map_index
	}, ; 45
	%struct.TypeMapModuleEntry {
		i32 u0x02000169, ; uint32_t type_token_id
		i32 222; uint32_t java_map_index
	}, ; 46
	%struct.TypeMapModuleEntry {
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 573; uint32_t java_map_index
	}, ; 47
	%struct.TypeMapModuleEntry {
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 1033; uint32_t java_map_index
	}, ; 48
	%struct.TypeMapModuleEntry {
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 249; uint32_t java_map_index
	}, ; 49
	%struct.TypeMapModuleEntry {
		i32 u0x02000170, ; uint32_t type_token_id
		i32 973; uint32_t java_map_index
	}, ; 50
	%struct.TypeMapModuleEntry {
		i32 u0x02000171, ; uint32_t type_token_id
		i32 15; uint32_t java_map_index
	}, ; 51
	%struct.TypeMapModuleEntry {
		i32 u0x02000173, ; uint32_t type_token_id
		i32 383; uint32_t java_map_index
	}, ; 52
	%struct.TypeMapModuleEntry {
		i32 u0x02000176, ; uint32_t type_token_id
		i32 136; uint32_t java_map_index
	}, ; 53
	%struct.TypeMapModuleEntry {
		i32 u0x02000182, ; uint32_t type_token_id
		i32 493; uint32_t java_map_index
	}, ; 54
	%struct.TypeMapModuleEntry {
		i32 u0x02000185, ; uint32_t type_token_id
		i32 628; uint32_t java_map_index
	}, ; 55
	%struct.TypeMapModuleEntry {
		i32 u0x02000191, ; uint32_t type_token_id
		i32 572; uint32_t java_map_index
	}, ; 56
	%struct.TypeMapModuleEntry {
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 392; uint32_t java_map_index
	}, ; 57
	%struct.TypeMapModuleEntry {
		i32 u0x0200024d, ; uint32_t type_token_id
		i32 689; uint32_t java_map_index
	}, ; 58
	%struct.TypeMapModuleEntry {
		i32 u0x02000253, ; uint32_t type_token_id
		i32 528; uint32_t java_map_index
	}, ; 59
	%struct.TypeMapModuleEntry {
		i32 u0x0200029d, ; uint32_t type_token_id
		i32 654; uint32_t java_map_index
	}, ; 60
	%struct.TypeMapModuleEntry {
		i32 u0x020002c9, ; uint32_t type_token_id
		i32 1044; uint32_t java_map_index
	}, ; 61
	%struct.TypeMapModuleEntry {
		i32 u0x020002d0, ; uint32_t type_token_id
		i32 784; uint32_t java_map_index
	}, ; 62
	%struct.TypeMapModuleEntry {
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 502; uint32_t java_map_index
	}, ; 63
	%struct.TypeMapModuleEntry {
		i32 u0x020002d7, ; uint32_t type_token_id
		i32 197; uint32_t java_map_index
	}, ; 64
	%struct.TypeMapModuleEntry {
		i32 u0x020002d9, ; uint32_t type_token_id
		i32 783; uint32_t java_map_index
	}, ; 65
	%struct.TypeMapModuleEntry {
		i32 u0x020002de, ; uint32_t type_token_id
		i32 986; uint32_t java_map_index
	}, ; 66
	%struct.TypeMapModuleEntry {
		i32 u0x020002e9, ; uint32_t type_token_id
		i32 613; uint32_t java_map_index
	}, ; 67
	%struct.TypeMapModuleEntry {
		i32 u0x02000330, ; uint32_t type_token_id
		i32 696; uint32_t java_map_index
	}, ; 68
	%struct.TypeMapModuleEntry {
		i32 u0x02000331, ; uint32_t type_token_id
		i32 323; uint32_t java_map_index
	}, ; 69
	%struct.TypeMapModuleEntry {
		i32 u0x02000334, ; uint32_t type_token_id
		i32 333; uint32_t java_map_index
	}, ; 70
	%struct.TypeMapModuleEntry {
		i32 u0x02000348, ; uint32_t type_token_id
		i32 533; uint32_t java_map_index
	}, ; 71
	%struct.TypeMapModuleEntry {
		i32 u0x02000349, ; uint32_t type_token_id
		i32 460; uint32_t java_map_index
	}, ; 72
	%struct.TypeMapModuleEntry {
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 165; uint32_t java_map_index
	}, ; 73
	%struct.TypeMapModuleEntry {
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 818; uint32_t java_map_index
	}, ; 74
	%struct.TypeMapModuleEntry {
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 172; uint32_t java_map_index
	} ; 75
], align 4

@module31_managed_to_java_duplicates = internal dso_local constant [5 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 656; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 405; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200011e, ; uint32_t type_token_id
		i32 370; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000122, ; uint32_t type_token_id
		i32 644; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 419; uint32_t java_map_index
	} ; 4
], align 4

@module32_managed_to_java = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 614; uint32_t java_map_index
	} ; 0
], align 4

@module32_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 614; uint32_t java_map_index
	} ; 0
], align 4

@module33_managed_to_java = internal dso_local constant [4 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 605; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 140; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 14; uint32_t java_map_index
	} ; 3
], align 4

@module33_managed_to_java_duplicates = internal dso_local constant [2 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 768; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 140; uint32_t java_map_index
	} ; 1
], align 4

@module34_managed_to_java = internal dso_local constant [6 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000010, ; uint32_t type_token_id
		i32 265; uint32_t java_map_index
	}, ; 0
	%struct.TypeMapModuleEntry {
		i32 u0x02000011, ; uint32_t type_token_id
		i32 657; uint32_t java_map_index
	}, ; 1
	%struct.TypeMapModuleEntry {
		i32 u0x02000014, ; uint32_t type_token_id
		i32 102; uint32_t java_map_index
	}, ; 2
	%struct.TypeMapModuleEntry {
		i32 u0x02000018, ; uint32_t type_token_id
		i32 258; uint32_t java_map_index
	}, ; 3
	%struct.TypeMapModuleEntry {
		i32 u0x02000019, ; uint32_t type_token_id
		i32 60; uint32_t java_map_index
	}, ; 4
	%struct.TypeMapModuleEntry {
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 706; uint32_t java_map_index
	} ; 5
], align 4

@module34_managed_to_java_duplicates = internal dso_local constant [1 x %struct.TypeMapModuleEntry] [
	%struct.TypeMapModuleEntry {
		i32 u0x02000012, ; uint32_t type_token_id
		i32 657; uint32_t java_map_index
	} ; 0
], align 4

; Java to managed map
@map_java = dso_local local_unnamed_addr constant [1073 x %struct.TypeMapJava] [
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 153; uint32_t java_name_index
	}, ; 0
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000165, ; uint32_t type_token_id
		i32 1033; uint32_t java_name_index
	}, ; 1
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f7, ; uint32_t type_token_id
		i32 457; uint32_t java_name_index
	}, ; 2
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 470; uint32_t java_name_index
	}, ; 3
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 117; uint32_t java_name_index
	}, ; 4
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 635; uint32_t java_name_index
	}, ; 5
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 526; uint32_t java_name_index
	}, ; 6
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000025, ; uint32_t type_token_id
		i32 951; uint32_t java_name_index
	}, ; 7
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 68; uint32_t java_name_index
	}, ; 8
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003a6, ; uint32_t type_token_id
		i32 406; uint32_t java_name_index
	}, ; 9
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000359, ; uint32_t type_token_id
		i32 361; uint32_t java_name_index
	}, ; 10
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000dd, ; uint32_t type_token_id
		i32 29; uint32_t java_name_index
	}, ; 11
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 530; uint32_t java_name_index
	}, ; 12
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000076, ; uint32_t type_token_id
		i32 932; uint32_t java_name_index
	}, ; 13
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 1066; uint32_t java_name_index
	}, ; 14
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000171, ; uint32_t type_token_id
		i32 1042; uint32_t java_name_index
	}, ; 15
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 745; uint32_t java_name_index
	}, ; 16
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000258, ; uint32_t type_token_id
		i32 226; uint32_t java_name_index
	}, ; 17
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 657; uint32_t java_name_index
	}, ; 18
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 569; uint32_t java_name_index
	}, ; 19
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 412; uint32_t java_name_index
	}, ; 20
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200036d, ; uint32_t type_token_id
		i32 373; uint32_t java_name_index
	}, ; 21
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 925; uint32_t java_name_index
	}, ; 22
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 501; uint32_t java_name_index
	}, ; 23
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200026f, ; uint32_t type_token_id
		i32 238; uint32_t java_name_index
	}, ; 24
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002da, ; uint32_t type_token_id
		i32 272; uint32_t java_name_index
	}, ; 25
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000140, ; uint32_t type_token_id
		i32 84; uint32_t java_name_index
	}, ; 26
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 570; uint32_t java_name_index
	}, ; 27
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 967; uint32_t java_name_index
	}, ; 28
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f2, ; uint32_t type_token_id
		i32 295; uint32_t java_name_index
	}, ; 29
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000d5, ; uint32_t type_token_id
		i32 24; uint32_t java_name_index
	}, ; 30
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 987; uint32_t java_name_index
	}, ; 31
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 686; uint32_t java_name_index
	}, ; 32
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000611, ; uint32_t type_token_id
		i32 813; uint32_t java_name_index
	}, ; 33
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 10; uint32_t java_name_index
	}, ; 34
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001f6, ; uint32_t type_token_id
		i32 182; uint32_t java_name_index
	}, ; 35
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000184, ; uint32_t type_token_id
		i32 123; uint32_t java_name_index
	}, ; 36
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 424; uint32_t java_name_index
	}, ; 37
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 94; uint32_t java_name_index
	}, ; 38
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 784; uint32_t java_name_index
	}, ; 39
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 688; uint32_t java_name_index
	}, ; 40
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000619, ; uint32_t type_token_id
		i32 817; uint32_t java_name_index
	}, ; 41
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000037, ; uint32_t type_token_id
		i32 961; uint32_t java_name_index
	}, ; 42
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 693; uint32_t java_name_index
	}, ; 43
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 848; uint32_t java_name_index
	}, ; 44
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000382, ; uint32_t type_token_id
		i32 381; uint32_t java_name_index
	}, ; 45
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 582; uint32_t java_name_index
	}, ; 46
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 1009; uint32_t java_name_index
	}, ; 47
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200040e, ; uint32_t type_token_id
		i32 472; uint32_t java_name_index
	}, ; 48
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 18; uint32_t java_name_index
	}, ; 49
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000248, ; uint32_t type_token_id
		i32 219; uint32_t java_name_index
	}, ; 50
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 581; uint32_t java_name_index
	}, ; 51
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 979; uint32_t java_name_index
	}, ; 52
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000618, ; uint32_t type_token_id
		i32 816; uint32_t java_name_index
	}, ; 53
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 552; uint32_t java_name_index
	}, ; 54
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000125, ; uint32_t type_token_id
		i32 1001; uint32_t java_name_index
	}, ; 55
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000015, ; uint32_t type_token_id
		i32 493; uint32_t java_name_index
	}, ; 56
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 864; uint32_t java_name_index
	}, ; 57
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 625; uint32_t java_name_index
	}, ; 58
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 971; uint32_t java_name_index
	}, ; 59
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 1071; uint32_t java_name_index
	}, ; 60
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000fe, ; uint32_t type_token_id
		i32 46; uint32_t java_name_index
	}, ; 61
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f3, ; uint32_t type_token_id
		i32 296; uint32_t java_name_index
	}, ; 62
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000418, ; uint32_t type_token_id
		i32 480; uint32_t java_name_index
	}, ; 63
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200001b, ; uint32_t type_token_id
		i32 499; uint32_t java_name_index
	}, ; 64
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000269, ; uint32_t type_token_id
		i32 233; uint32_t java_name_index
	}, ; 65
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 3; uint32_t java_name_index
	}, ; 66
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000cb, ; uint32_t type_token_id
		i32 20; uint32_t java_name_index
	}, ; 67
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 854; uint32_t java_name_index
	}, ; 68
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000af, ; uint32_t type_token_id
		i32 620; uint32_t java_name_index
	}, ; 69
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003a1, ; uint32_t type_token_id
		i32 403; uint32_t java_name_index
	}, ; 70
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 229; uint32_t java_name_index
	}, ; 71
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003e8, ; uint32_t type_token_id
		i32 861; uint32_t java_name_index
	}, ; 72
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 349; uint32_t java_name_index
	}, ; 73
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 434; uint32_t java_name_index
	}, ; 74
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c1, ; uint32_t type_token_id
		i32 833; uint32_t java_name_index
	}, ; 75
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 766; uint32_t java_name_index
	}, ; 76
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000162, ; uint32_t type_token_id
		i32 1030; uint32_t java_name_index
	}, ; 77
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 798; uint32_t java_name_index
	}, ; 78
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 675; uint32_t java_name_index
	}, ; 79
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 984; uint32_t java_name_index
	}, ; 80
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000628, ; uint32_t type_token_id
		i32 858; uint32_t java_name_index
	}, ; 81
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 203; uint32_t java_name_index
	}, ; 82
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001ad, ; uint32_t type_token_id
		i32 152; uint32_t java_name_index
	}, ; 83
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000a5, ; uint32_t type_token_id
		i32 613; uint32_t java_name_index
	}, ; 84
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 38; uint32_t java_name_index
	}, ; 85
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000175, ; uint32_t type_token_id
		i32 114; uint32_t java_name_index
	}, ; 86
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 923; uint32_t java_name_index
	}, ; 87
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000259, ; uint32_t type_token_id
		i32 227; uint32_t java_name_index
	}, ; 88
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 988; uint32_t java_name_index
	}, ; 89
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000605, ; uint32_t type_token_id
		i32 799; uint32_t java_name_index
	}, ; 90
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003fe, ; uint32_t type_token_id
		i32 463; uint32_t java_name_index
	}, ; 91
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 509; uint32_t java_name_index
	}, ; 92
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000156, ; uint32_t type_token_id
		i32 1018; uint32_t java_name_index
	}, ; 93
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 160; uint32_t java_name_index
	}, ; 94
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f6, ; uint32_t type_token_id
		i32 456; uint32_t java_name_index
	}, ; 95
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000146, ; uint32_t type_token_id
		i32 89; uint32_t java_name_index
	}, ; 96
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 518; uint32_t java_name_index
	}, ; 97
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 427; uint32_t java_name_index
	}, ; 98
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000388, ; uint32_t type_token_id
		i32 385; uint32_t java_name_index
	}, ; 99
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 669; uint32_t java_name_index
	}, ; 100
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000401, ; uint32_t type_token_id
		i32 466; uint32_t java_name_index
	}, ; 101
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 1069; uint32_t java_name_index
	}, ; 102
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 965; uint32_t java_name_index
	}, ; 103
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002cd, ; uint32_t type_token_id
		i32 263; uint32_t java_name_index
	}, ; 104
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 344; uint32_t java_name_index
	}, ; 105
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200037e, ; uint32_t type_token_id
		i32 378; uint32_t java_name_index
	}, ; 106
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 955; uint32_t java_name_index
	}, ; 107
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000071, ; uint32_t type_token_id
		i32 929; uint32_t java_name_index
	}, ; 108
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000413, ; uint32_t type_token_id
		i32 476; uint32_t java_name_index
	}, ; 109
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 643; uint32_t java_name_index
	}, ; 110
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 638; uint32_t java_name_index
	}, ; 111
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200015b, ; uint32_t type_token_id
		i32 1025; uint32_t java_name_index
	}, ; 112
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 588; uint32_t java_name_index
	}, ; 113
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000163, ; uint32_t type_token_id
		i32 1031; uint32_t java_name_index
	}, ; 114
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 650; uint32_t java_name_index
	}, ; 115
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ea, ; uint32_t type_token_id
		i32 444; uint32_t java_name_index
	}, ; 116
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003cd, ; uint32_t type_token_id
		i32 844; uint32_t java_name_index
	}, ; 117
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000631, ; uint32_t type_token_id
		i32 868; uint32_t java_name_index
	}, ; 118
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200025a, ; uint32_t type_token_id
		i32 228; uint32_t java_name_index
	}, ; 119
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003dd, ; uint32_t type_token_id
		i32 852; uint32_t java_name_index
	}, ; 120
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 210; uint32_t java_name_index
	}, ; 121
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 668; uint32_t java_name_index
	}, ; 122
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001aa, ; uint32_t type_token_id
		i32 151; uint32_t java_name_index
	}, ; 123
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 557; uint32_t java_name_index
	}, ; 124
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000381, ; uint32_t type_token_id
		i32 380; uint32_t java_name_index
	}, ; 125
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002c4, ; uint32_t type_token_id
		i32 262; uint32_t java_name_index
	}, ; 126
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 885; uint32_t java_name_index
	}, ; 127
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000304, ; uint32_t type_token_id
		i32 311; uint32_t java_name_index
	}, ; 128
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 441; uint32_t java_name_index
	}, ; 129
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000193, ; uint32_t type_token_id
		i32 134; uint32_t java_name_index
	}, ; 130
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 340; uint32_t java_name_index
	}, ; 131
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 72; uint32_t java_name_index
	}, ; 132
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003e9, ; uint32_t type_token_id
		i32 862; uint32_t java_name_index
	}, ; 133
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 522; uint32_t java_name_index
	}, ; 134
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003a8, ; uint32_t type_token_id
		i32 407; uint32_t java_name_index
	}, ; 135
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000176, ; uint32_t type_token_id
		i32 1045; uint32_t java_name_index
	}, ; 136
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200011c, ; uint32_t type_token_id
		i32 60; uint32_t java_name_index
	}, ; 137
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200040f, ; uint32_t type_token_id
		i32 473; uint32_t java_name_index
	}, ; 138
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 566; uint32_t java_name_index
	}, ; 139
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1065; uint32_t java_name_index
	}, ; 140
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 683; uint32_t java_name_index
	}, ; 141
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001f9, ; uint32_t type_token_id
		i32 185; uint32_t java_name_index
	}, ; 142
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003d0, ; uint32_t type_token_id
		i32 847; uint32_t java_name_index
	}, ; 143
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200019b, ; uint32_t type_token_id
		i32 141; uint32_t java_name_index
	}, ; 144
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000697, ; uint32_t type_token_id
		i32 788; uint32_t java_name_index
	}, ; 145
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000347, ; uint32_t type_token_id
		i32 771; uint32_t java_name_index
	}, ; 146
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 405; uint32_t java_name_index
	}, ; 147
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 417; uint32_t java_name_index
	}, ; 148
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000282, ; uint32_t type_token_id
		i32 247; uint32_t java_name_index
	}, ; 149
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 761; uint32_t java_name_index
	}, ; 150
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 663; uint32_t java_name_index
	}, ; 151
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 903; uint32_t java_name_index
	}, ; 152
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000395, ; uint32_t type_token_id
		i32 395; uint32_t java_name_index
	}, ; 153
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000161, ; uint32_t type_token_id
		i32 1029; uint32_t java_name_index
	}, ; 154
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 779; uint32_t java_name_index
	}, ; 155
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001c3, ; uint32_t type_token_id
		i32 164; uint32_t java_name_index
	}, ; 156
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 908; uint32_t java_name_index
	}, ; 157
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 129; uint32_t java_name_index
	}, ; 158
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000379, ; uint32_t type_token_id
		i32 375; uint32_t java_name_index
	}, ; 159
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 607; uint32_t java_name_index
	}, ; 160
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 667; uint32_t java_name_index
	}, ; 161
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 199; uint32_t java_name_index
	}, ; 162
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 953; uint32_t java_name_index
	}, ; 163
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 764; uint32_t java_name_index
	}, ; 164
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 1056; uint32_t java_name_index
	}, ; 165
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 962; uint32_t java_name_index
	}, ; 166
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 711; uint32_t java_name_index
	}, ; 167
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 445; uint32_t java_name_index
	}, ; 168
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 912; uint32_t java_name_index
	}, ; 169
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 727; uint32_t java_name_index
	}, ; 170
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002b4, ; uint32_t type_token_id
		i32 258; uint32_t java_name_index
	}, ; 171
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 1061; uint32_t java_name_index
	}, ; 172
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 715; uint32_t java_name_index
	}, ; 173
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000309, ; uint32_t type_token_id
		i32 314; uint32_t java_name_index
	}, ; 174
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 821; uint32_t java_name_index
	}, ; 175
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c9, ; uint32_t type_token_id
		i32 840; uint32_t java_name_index
	}, ; 176
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 930; uint32_t java_name_index
	}, ; 177
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x020000a6, ; uint32_t type_token_id
		i32 762; uint32_t java_name_index
	}, ; 178
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e6, ; uint32_t type_token_id
		i32 284; uint32_t java_name_index
	}, ; 179
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000185, ; uint32_t type_token_id
		i32 124; uint32_t java_name_index
	}, ; 180
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 572; uint32_t java_name_index
	}, ; 181
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000124, ; uint32_t type_token_id
		i32 1000; uint32_t java_name_index
	}, ; 182
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000053, ; uint32_t type_token_id
		i32 577; uint32_t java_name_index
	}, ; 183
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 454; uint32_t java_name_index
	}, ; 184
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ba, ; uint32_t type_token_id
		i32 419; uint32_t java_name_index
	}, ; 185
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200030e, ; uint32_t type_token_id
		i32 317; uint32_t java_name_index
	}, ; 186
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 934; uint32_t java_name_index
	}, ; 187
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 824; uint32_t java_name_index
	}, ; 188
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f5, ; uint32_t type_token_id
		i32 455; uint32_t java_name_index
	}, ; 189
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200008b, ; uint32_t type_token_id
		i32 743; uint32_t java_name_index
	}, ; 190
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 144; uint32_t java_name_index
	}, ; 191
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003fd, ; uint32_t type_token_id
		i32 462; uint32_t java_name_index
	}, ; 192
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000383, ; uint32_t type_token_id
		i32 382; uint32_t java_name_index
	}, ; 193
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 158; uint32_t java_name_index
	}, ; 194
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 699; uint32_t java_name_index
	}, ; 195
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200003a, ; uint32_t type_token_id
		i32 893; uint32_t java_name_index
	}, ; 196
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002d7, ; uint32_t type_token_id
		i32 1040; uint32_t java_name_index
	}, ; 197
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 716; uint32_t java_name_index
	}, ; 198
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 972; uint32_t java_name_index
	}, ; 199
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000415, ; uint32_t type_token_id
		i32 478; uint32_t java_name_index
	}, ; 200
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 533; uint32_t java_name_index
	}, ; 201
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200014e, ; uint32_t type_token_id
		i32 1012; uint32_t java_name_index
	}, ; 202
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200034a, ; uint32_t type_token_id
		i32 352; uint32_t java_name_index
	}, ; 203
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 592; uint32_t java_name_index
	}, ; 204
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d2, ; uint32_t type_token_id
		i32 267; uint32_t java_name_index
	}, ; 205
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200037d, ; uint32_t type_token_id
		i32 377; uint32_t java_name_index
	}, ; 206
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 11; uint32_t java_name_index
	}, ; 207
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000327, ; uint32_t type_token_id
		i32 334; uint32_t java_name_index
	}, ; 208
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003fa, ; uint32_t type_token_id
		i32 460; uint32_t java_name_index
	}, ; 209
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003af, ; uint32_t type_token_id
		i32 828; uint32_t java_name_index
	}, ; 210
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 703; uint32_t java_name_index
	}, ; 211
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 723; uint32_t java_name_index
	}, ; 212
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 36; uint32_t java_name_index
	}, ; 213
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 546; uint32_t java_name_index
	}, ; 214
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000099, ; uint32_t type_token_id
		i32 751; uint32_t java_name_index
	}, ; 215
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000349, ; uint32_t type_token_id
		i32 773; uint32_t java_name_index
	}, ; 216
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000073, ; uint32_t type_token_id
		i32 655; uint32_t java_name_index
	}, ; 217
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d7, ; uint32_t type_token_id
		i32 269; uint32_t java_name_index
	}, ; 218
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 678; uint32_t java_name_index
	}, ; 219
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 739; uint32_t java_name_index
	}, ; 220
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 594; uint32_t java_name_index
	}, ; 221
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000169, ; uint32_t type_token_id
		i32 1036; uint32_t java_name_index
	}, ; 222
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 651; uint32_t java_name_index
	}, ; 223
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 880; uint32_t java_name_index
	}, ; 224
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000171, ; uint32_t type_token_id
		i32 110; uint32_t java_name_index
	}, ; 225
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000129, ; uint32_t type_token_id
		i32 1005; uint32_t java_name_index
	}, ; 226
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000170, ; uint32_t type_token_id
		i32 109; uint32_t java_name_index
	}, ; 227
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 614; uint32_t java_name_index
	}, ; 228
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 907; uint32_t java_name_index
	}, ; 229
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 780; uint32_t java_name_index
	}, ; 230
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000121, ; uint32_t type_token_id
		i32 64; uint32_t java_name_index
	}, ; 231
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 970; uint32_t java_name_index
	}, ; 232
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ef, ; uint32_t type_token_id
		i32 292; uint32_t java_name_index
	}, ; 233
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 897; uint32_t java_name_index
	}, ; 234
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 702; uint32_t java_name_index
	}, ; 235
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000188, ; uint32_t type_token_id
		i32 127; uint32_t java_name_index
	}, ; 236
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 410; uint32_t java_name_index
	}, ; 237
	%struct.TypeMapJava {
		i32 25, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 969; uint32_t java_name_index
	}, ; 238
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000127, ; uint32_t type_token_id
		i32 1003; uint32_t java_name_index
	}, ; 239
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 567; uint32_t java_name_index
	}, ; 240
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 633; uint32_t java_name_index
	}, ; 241
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200011b, ; uint32_t type_token_id
		i32 59; uint32_t java_name_index
	}, ; 242
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 892; uint32_t java_name_index
	}, ; 243
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200026c, ; uint32_t type_token_id
		i32 236; uint32_t java_name_index
	}, ; 244
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 391; uint32_t java_name_index
	}, ; 245
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000e5, ; uint32_t type_token_id
		i32 35; uint32_t java_name_index
	}, ; 246
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200034e, ; uint32_t type_token_id
		i32 355; uint32_t java_name_index
	}, ; 247
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 208; uint32_t java_name_index
	}, ; 248
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 1039; uint32_t java_name_index
	}, ; 249
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000153, ; uint32_t type_token_id
		i32 95; uint32_t java_name_index
	}, ; 250
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 954; uint32_t java_name_index
	}, ; 251
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 198; uint32_t java_name_index
	}, ; 252
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000315, ; uint32_t type_token_id
		i32 322; uint32_t java_name_index
	}, ; 253
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000108, ; uint32_t type_token_id
		i32 51; uint32_t java_name_index
	}, ; 254
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200001e, ; uint32_t type_token_id
		i32 673; uint32_t java_name_index
	}, ; 255
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200037a, ; uint32_t type_token_id
		i32 791; uint32_t java_name_index
	}, ; 256
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000e3, ; uint32_t type_token_id
		i32 34; uint32_t java_name_index
	}, ; 257
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1070; uint32_t java_name_index
	}, ; 258
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 485; uint32_t java_name_index
	}, ; 259
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001b5, ; uint32_t type_token_id
		i32 157; uint32_t java_name_index
	}, ; 260
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 599; uint32_t java_name_index
	}, ; 261
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 433; uint32_t java_name_index
	}, ; 262
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 649; uint32_t java_name_index
	}, ; 263
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 728; uint32_t java_name_index
	}, ; 264
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 1067; uint32_t java_name_index
	}, ; 265
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 12; uint32_t java_name_index
	}, ; 266
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200062e, ; uint32_t type_token_id
		i32 865; uint32_t java_name_index
	}, ; 267
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 49; uint32_t java_name_index
	}, ; 268
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 597; uint32_t java_name_index
	}, ; 269
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001d2, ; uint32_t type_token_id
		i32 172; uint32_t java_name_index
	}, ; 270
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000165, ; uint32_t type_token_id
		i32 103; uint32_t java_name_index
	}, ; 271
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 901; uint32_t java_name_index
	}, ; 272
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 690; uint32_t java_name_index
	}, ; 273
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 42; uint32_t java_name_index
	}, ; 274
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 882; uint32_t java_name_index
	}, ; 275
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 889; uint32_t java_name_index
	}, ; 276
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000003, ; uint32_t type_token_id
		i32 543; uint32_t java_name_index
	}, ; 277
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 730; uint32_t java_name_index
	}, ; 278
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200016f, ; uint32_t type_token_id
		i32 108; uint32_t java_name_index
	}, ; 279
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 426; uint32_t java_name_index
	}, ; 280
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000390, ; uint32_t type_token_id
		i32 802; uint32_t java_name_index
	}, ; 281
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000136, ; uint32_t type_token_id
		i32 78; uint32_t java_name_index
	}, ; 282
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000368, ; uint32_t type_token_id
		i32 785; uint32_t java_name_index
	}, ; 283
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f0, ; uint32_t type_token_id
		i32 450; uint32_t java_name_index
	}, ; 284
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 609; uint32_t java_name_index
	}, ; 285
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 875; uint32_t java_name_index
	}, ; 286
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000630, ; uint32_t type_token_id
		i32 867; uint32_t java_name_index
	}, ; 287
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000064, ; uint32_t type_token_id
		i32 917; uint32_t java_name_index
	}, ; 288
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000289, ; uint32_t type_token_id
		i32 251; uint32_t java_name_index
	}, ; 289
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 207; uint32_t java_name_index
	}, ; 290
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 510; uint32_t java_name_index
	}, ; 291
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x020000a1, ; uint32_t type_token_id
		i32 759; uint32_t java_name_index
	}, ; 292
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200060c, ; uint32_t type_token_id
		i32 808; uint32_t java_name_index
	}, ; 293
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 469; uint32_t java_name_index
	}, ; 294
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 601; uint32_t java_name_index
	}, ; 295
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000183, ; uint32_t type_token_id
		i32 122; uint32_t java_name_index
	}, ; 296
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 980; uint32_t java_name_index
	}, ; 297
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001b1, ; uint32_t type_token_id
		i32 155; uint32_t java_name_index
	}, ; 298
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000369, ; uint32_t type_token_id
		i32 371; uint32_t java_name_index
	}, ; 299
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002fc, ; uint32_t type_token_id
		i32 304; uint32_t java_name_index
	}, ; 300
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 797; uint32_t java_name_index
	}, ; 301
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 538; uint32_t java_name_index
	}, ; 302
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000610, ; uint32_t type_token_id
		i32 811; uint32_t java_name_index
	}, ; 303
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 888; uint32_t java_name_index
	}, ; 304
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 2; uint32_t java_name_index
	}, ; 305
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 750; uint32_t java_name_index
	}, ; 306
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 590; uint32_t java_name_index
	}, ; 307
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 712; uint32_t java_name_index
	}, ; 308
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 941; uint32_t java_name_index
	}, ; 309
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 679; uint32_t java_name_index
	}, ; 310
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 188; uint32_t java_name_index
	}, ; 311
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000393, ; uint32_t type_token_id
		i32 393; uint32_t java_name_index
	}, ; 312
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 545; uint32_t java_name_index
	}, ; 313
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 81; uint32_t java_name_index
	}, ; 314
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200011d, ; uint32_t type_token_id
		i32 61; uint32_t java_name_index
	}, ; 315
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 537; uint32_t java_name_index
	}, ; 316
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000150, ; uint32_t type_token_id
		i32 1013; uint32_t java_name_index
	}, ; 317
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000be, ; uint32_t type_token_id
		i32 626; uint32_t java_name_index
	}, ; 318
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ff, ; uint32_t type_token_id
		i32 464; uint32_t java_name_index
	}, ; 319
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 664; uint32_t java_name_index
	}, ; 320
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 726; uint32_t java_name_index
	}, ; 321
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020000b8, ; uint32_t type_token_id
		i32 990; uint32_t java_name_index
	}, ; 322
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000331, ; uint32_t type_token_id
		i32 1052; uint32_t java_name_index
	}, ; 323
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 911; uint32_t java_name_index
	}, ; 324
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 66; uint32_t java_name_index
	}, ; 325
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000c1, ; uint32_t type_token_id
		i32 13; uint32_t java_name_index
	}, ; 326
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 660; uint32_t java_name_index
	}, ; 327
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 801; uint32_t java_name_index
	}, ; 328
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002a9, ; uint32_t type_token_id
		i32 256; uint32_t java_name_index
	}, ; 329
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000aa, ; uint32_t type_token_id
		i32 617; uint32_t java_name_index
	}, ; 330
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 698; uint32_t java_name_index
	}, ; 331
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e2, ; uint32_t type_token_id
		i32 280; uint32_t java_name_index
	}, ; 332
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000334, ; uint32_t type_token_id
		i32 1053; uint32_t java_name_index
	}, ; 333
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 514; uint32_t java_name_index
	}, ; 334
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 945; uint32_t java_name_index
	}, ; 335
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200062f, ; uint32_t type_token_id
		i32 866; uint32_t java_name_index
	}, ; 336
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000024, ; uint32_t type_token_id
		i32 950; uint32_t java_name_index
	}, ; 337
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200005c, ; uint32_t type_token_id
		i32 914; uint32_t java_name_index
	}, ; 338
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000400, ; uint32_t type_token_id
		i32 465; uint32_t java_name_index
	}, ; 339
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f1, ; uint32_t type_token_id
		i32 294; uint32_t java_name_index
	}, ; 340
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 662; uint32_t java_name_index
	}, ; 341
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 8; uint32_t java_name_index
	}, ; 342
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 697; uint32_t java_name_index
	}, ; 343
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000195, ; uint32_t type_token_id
		i32 136; uint32_t java_name_index
	}, ; 344
	%struct.TypeMapJava {
		i32 0, ; uint32_t module_index
		i32 u0x02000002, ; uint32_t type_token_id
		i32 487; uint32_t java_name_index
	}, ; 345
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000325, ; uint32_t type_token_id
		i32 333; uint32_t java_name_index
	}, ; 346
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000064, ; uint32_t type_token_id
		i32 721; uint32_t java_name_index
	}, ; 347
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 647; uint32_t java_name_index
	}, ; 348
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000379, ; uint32_t type_token_id
		i32 790; uint32_t java_name_index
	}, ; 349
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000353, ; uint32_t type_token_id
		i32 359; uint32_t java_name_index
	}, ; 350
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 653; uint32_t java_name_index
	}, ; 351
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000419, ; uint32_t type_token_id
		i32 481; uint32_t java_name_index
	}, ; 352
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 386; uint32_t java_name_index
	}, ; 353
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f5, ; uint32_t type_token_id
		i32 298; uint32_t java_name_index
	}, ; 354
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 209; uint32_t java_name_index
	}, ; 355
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 834; uint32_t java_name_index
	}, ; 356
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 946; uint32_t java_name_index
	}, ; 357
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 166; uint32_t java_name_index
	}, ; 358
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 437; uint32_t java_name_index
	}, ; 359
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200003e, ; uint32_t type_token_id
		i32 884; uint32_t java_name_index
	}, ; 360
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000132, ; uint32_t type_token_id
		i32 75; uint32_t java_name_index
	}, ; 361
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200036b, ; uint32_t type_token_id
		i32 786; uint32_t java_name_index
	}, ; 362
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 605; uint32_t java_name_index
	}, ; 363
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200032e, ; uint32_t type_token_id
		i32 337; uint32_t java_name_index
	}, ; 364
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 106; uint32_t java_name_index
	}, ; 365
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000135, ; uint32_t type_token_id
		i32 77; uint32_t java_name_index
	}, ; 366
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200039a, ; uint32_t type_token_id
		i32 814; uint32_t java_name_index
	}, ; 367
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200005f, ; uint32_t type_token_id
		i32 718; uint32_t java_name_index
	}, ; 368
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200027c, ; uint32_t type_token_id
		i32 243; uint32_t java_name_index
	}, ; 369
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 995; uint32_t java_name_index
	}, ; 370
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ab, ; uint32_t type_token_id
		i32 257; uint32_t java_name_index
	}, ; 371
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000b1, ; uint32_t type_token_id
		i32 4; uint32_t java_name_index
	}, ; 372
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 315; uint32_t java_name_index
	}, ; 373
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 173; uint32_t java_name_index
	}, ; 374
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003aa, ; uint32_t type_token_id
		i32 408; uint32_t java_name_index
	}, ; 375
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 442; uint32_t java_name_index
	}, ; 376
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 944; uint32_t java_name_index
	}, ; 377
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000625, ; uint32_t type_token_id
		i32 845; uint32_t java_name_index
	}, ; 378
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200003d, ; uint32_t type_token_id
		i32 896; uint32_t java_name_index
	}, ; 379
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 746; uint32_t java_name_index
	}, ; 380
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200010e, ; uint32_t type_token_id
		i32 53; uint32_t java_name_index
	}, ; 381
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x020000a7, ; uint32_t type_token_id
		i32 763; uint32_t java_name_index
	}, ; 382
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000173, ; uint32_t type_token_id
		i32 1044; uint32_t java_name_index
	}, ; 383
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 549; uint32_t java_name_index
	}, ; 384
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 399; uint32_t java_name_index
	}, ; 385
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ac, ; uint32_t type_token_id
		i32 409; uint32_t java_name_index
	}, ; 386
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001c0, ; uint32_t type_token_id
		i32 161; uint32_t java_name_index
	}, ; 387
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200031b, ; uint32_t type_token_id
		i32 325; uint32_t java_name_index
	}, ; 388
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002df, ; uint32_t type_token_id
		i32 277; uint32_t java_name_index
	}, ; 389
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 561; uint32_t java_name_index
	}, ; 390
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 425; uint32_t java_name_index
	}, ; 391
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200024c, ; uint32_t type_token_id
		i32 1058; uint32_t java_name_index
	}, ; 392
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000f9, ; uint32_t type_token_id
		i32 44; uint32_t java_name_index
	}, ; 393
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000364, ; uint32_t type_token_id
		i32 367; uint32_t java_name_index
	}, ; 394
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 916; uint32_t java_name_index
	}, ; 395
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200020b, ; uint32_t type_token_id
		i32 195; uint32_t java_name_index
	}, ; 396
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000194, ; uint32_t type_token_id
		i32 135; uint32_t java_name_index
	}, ; 397
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000022, ; uint32_t type_token_id
		i32 503; uint32_t java_name_index
	}, ; 398
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200006b, ; uint32_t type_token_id
		i32 924; uint32_t java_name_index
	}, ; 399
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020005f7, ; uint32_t type_token_id
		i32 787; uint32_t java_name_index
	}, ; 400
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 755; uint32_t java_name_index
	}, ; 401
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 527; uint32_t java_name_index
	}, ; 402
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000a9, ; uint32_t type_token_id
		i32 616; uint32_t java_name_index
	}, ; 403
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000cd, ; uint32_t type_token_id
		i32 21; uint32_t java_name_index
	}, ; 404
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 994; uint32_t java_name_index
	}, ; 405
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 489; uint32_t java_name_index
	}, ; 406
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 398; uint32_t java_name_index
	}, ; 407
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e1, ; uint32_t type_token_id
		i32 279; uint32_t java_name_index
	}, ; 408
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000604, ; uint32_t type_token_id
		i32 796; uint32_t java_name_index
	}, ; 409
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001c1, ; uint32_t type_token_id
		i32 162; uint32_t java_name_index
	}, ; 410
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f9, ; uint32_t type_token_id
		i32 459; uint32_t java_name_index
	}, ; 411
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000410, ; uint32_t type_token_id
		i32 474; uint32_t java_name_index
	}, ; 412
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 180; uint32_t java_name_index
	}, ; 413
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003d3, ; uint32_t type_token_id
		i32 850; uint32_t java_name_index
	}, ; 414
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ed, ; uint32_t type_token_id
		i32 447; uint32_t java_name_index
	}, ; 415
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200015c, ; uint32_t type_token_id
		i32 1026; uint32_t java_name_index
	}, ; 416
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001c9, ; uint32_t type_token_id
		i32 167; uint32_t java_name_index
	}, ; 417
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200010f, ; uint32_t type_token_id
		i32 54; uint32_t java_name_index
	}, ; 418
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 1006; uint32_t java_name_index
	}, ; 419
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200011a, ; uint32_t type_token_id
		i32 58; uint32_t java_name_index
	}, ; 420
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 496; uint32_t java_name_index
	}, ; 421
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000111, ; uint32_t type_token_id
		i32 55; uint32_t java_name_index
	}, ; 422
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000208, ; uint32_t type_token_id
		i32 193; uint32_t java_name_index
	}, ; 423
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 488; uint32_t java_name_index
	}, ; 424
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 448; uint32_t java_name_index
	}, ; 425
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 525; uint32_t java_name_index
	}, ; 426
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 240; uint32_t java_name_index
	}, ; 427
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 540; uint32_t java_name_index
	}, ; 428
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000243, ; uint32_t type_token_id
		i32 218; uint32_t java_name_index
	}, ; 429
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000323, ; uint32_t type_token_id
		i32 331; uint32_t java_name_index
	}, ; 430
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 428; uint32_t java_name_index
	}, ; 431
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 559; uint32_t java_name_index
	}, ; 432
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 62; uint32_t java_name_index
	}, ; 433
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 146; uint32_t java_name_index
	}, ; 434
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 370; uint32_t java_name_index
	}, ; 435
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 621; uint32_t java_name_index
	}, ; 436
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 432; uint32_t java_name_index
	}, ; 437
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 722; uint32_t java_name_index
	}, ; 438
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 102; uint32_t java_name_index
	}, ; 439
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000316, ; uint32_t type_token_id
		i32 323; uint32_t java_name_index
	}, ; 440
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000168, ; uint32_t type_token_id
		i32 1035; uint32_t java_name_index
	}, ; 441
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000197, ; uint32_t type_token_id
		i32 138; uint32_t java_name_index
	}, ; 442
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000322, ; uint32_t type_token_id
		i32 330; uint32_t java_name_index
	}, ; 443
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 832; uint32_t java_name_index
	}, ; 444
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 973; uint32_t java_name_index
	}, ; 445
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ee, ; uint32_t type_token_id
		i32 291; uint32_t java_name_index
	}, ; 446
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000560, ; uint32_t type_token_id
		i32 770; uint32_t java_name_index
	}, ; 447
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200034b, ; uint32_t type_token_id
		i32 353; uint32_t java_name_index
	}, ; 448
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 429; uint32_t java_name_index
	}, ; 449
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 732; uint32_t java_name_index
	}, ; 450
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 99; uint32_t java_name_index
	}, ; 451
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200005d, ; uint32_t type_token_id
		i32 580; uint32_t java_name_index
	}, ; 452
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 168; uint32_t java_name_index
	}, ; 453
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 524; uint32_t java_name_index
	}, ; 454
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 931; uint32_t java_name_index
	}, ; 455
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200009d, ; uint32_t type_token_id
		i32 948; uint32_t java_name_index
	}, ; 456
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ee, ; uint32_t type_token_id
		i32 869; uint32_t java_name_index
	}, ; 457
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000310, ; uint32_t type_token_id
		i32 319; uint32_t java_name_index
	}, ; 458
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 490; uint32_t java_name_index
	}, ; 459
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000349, ; uint32_t type_token_id
		i32 1055; uint32_t java_name_index
	}, ; 460
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200015a, ; uint32_t type_token_id
		i32 1023; uint32_t java_name_index
	}, ; 461
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000ac, ; uint32_t type_token_id
		i32 618; uint32_t java_name_index
	}, ; 462
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 475; uint32_t java_name_index
	}, ; 463
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 586; uint32_t java_name_index
	}, ; 464
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200003f, ; uint32_t type_token_id
		i32 898; uint32_t java_name_index
	}, ; 465
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200014a, ; uint32_t type_token_id
		i32 91; uint32_t java_name_index
	}, ; 466
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000131, ; uint32_t type_token_id
		i32 74; uint32_t java_name_index
	}, ; 467
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000061, ; uint32_t type_token_id
		i32 645; uint32_t java_name_index
	}, ; 468
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000257, ; uint32_t type_token_id
		i32 225; uint32_t java_name_index
	}, ; 469
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000250, ; uint32_t type_token_id
		i32 223; uint32_t java_name_index
	}, ; 470
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002fe, ; uint32_t type_token_id
		i32 306; uint32_t java_name_index
	}, ; 471
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003e1, ; uint32_t type_token_id
		i32 856; uint32_t java_name_index
	}, ; 472
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000196, ; uint32_t type_token_id
		i32 137; uint32_t java_name_index
	}, ; 473
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 343; uint32_t java_name_index
	}, ; 474
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 536; uint32_t java_name_index
	}, ; 475
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 913; uint32_t java_name_index
	}, ; 476
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000301, ; uint32_t type_token_id
		i32 308; uint32_t java_name_index
	}, ; 477
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 949; uint32_t java_name_index
	}, ; 478
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000179, ; uint32_t type_token_id
		i32 116; uint32_t java_name_index
	}, ; 479
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 556; uint32_t java_name_index
	}, ; 480
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 578; uint32_t java_name_index
	}, ; 481
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000155, ; uint32_t type_token_id
		i32 1017; uint32_t java_name_index
	}, ; 482
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000005, ; uint32_t type_token_id
		i32 506; uint32_t java_name_index
	}, ; 483
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000128, ; uint32_t type_token_id
		i32 1004; uint32_t java_name_index
	}, ; 484
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 43; uint32_t java_name_index
	}, ; 485
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003b8, ; uint32_t type_token_id
		i32 418; uint32_t java_name_index
	}, ; 486
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000335, ; uint32_t type_token_id
		i32 341; uint32_t java_name_index
	}, ; 487
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000320, ; uint32_t type_token_id
		i32 329; uint32_t java_name_index
	}, ; 488
	%struct.TypeMapJava {
		i32 3, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 511; uint32_t java_name_index
	}, ; 489
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200002d, ; uint32_t type_token_id
		i32 957; uint32_t java_name_index
	}, ; 490
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000013, ; uint32_t type_token_id
		i32 491; uint32_t java_name_index
	}, ; 491
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000b3, ; uint32_t type_token_id
		i32 622; uint32_t java_name_index
	}, ; 492
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000182, ; uint32_t type_token_id
		i32 1046; uint32_t java_name_index
	}, ; 493
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020005e6, ; uint32_t type_token_id
		i32 774; uint32_t java_name_index
	}, ; 494
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200003c, ; uint32_t type_token_id
		i32 895; uint32_t java_name_index
	}, ; 495
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000394, ; uint32_t type_token_id
		i32 806; uint32_t java_name_index
	}, ; 496
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000011, ; uint32_t type_token_id
		i32 550; uint32_t java_name_index
	}, ; 497
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000042, ; uint32_t type_token_id
		i32 564; uint32_t java_name_index
	}, ; 498
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 585; uint32_t java_name_index
	}, ; 499
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000363, ; uint32_t type_token_id
		i32 366; uint32_t java_name_index
	}, ; 500
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ec, ; uint32_t type_token_id
		i32 446; uint32_t java_name_index
	}, ; 501
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 1024; uint32_t java_name_index
	}, ; 502
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 40; uint32_t java_name_index
	}, ; 503
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000308, ; uint32_t type_token_id
		i32 313; uint32_t java_name_index
	}, ; 504
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200031e, ; uint32_t type_token_id
		i32 328; uint32_t java_name_index
	}, ; 505
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 574; uint32_t java_name_index
	}, ; 506
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 738; uint32_t java_name_index
	}, ; 507
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000069, ; uint32_t type_token_id
		i32 922; uint32_t java_name_index
	}, ; 508
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200028a, ; uint32_t type_token_id
		i32 252; uint32_t java_name_index
	}, ; 509
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000120, ; uint32_t type_token_id
		i32 63; uint32_t java_name_index
	}, ; 510
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000209, ; uint32_t type_token_id
		i32 194; uint32_t java_name_index
	}, ; 511
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000ef, ; uint32_t type_token_id
		i32 39; uint32_t java_name_index
	}, ; 512
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 346; uint32_t java_name_index
	}, ; 513
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 83; uint32_t java_name_index
	}, ; 514
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000174, ; uint32_t type_token_id
		i32 113; uint32_t java_name_index
	}, ; 515
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 147; uint32_t java_name_index
	}, ; 516
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200009f, ; uint32_t type_token_id
		i32 757; uint32_t java_name_index
	}, ; 517
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 576; uint32_t java_name_index
	}, ; 518
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003d1, ; uint32_t type_token_id
		i32 431; uint32_t java_name_index
	}, ; 519
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000d8, ; uint32_t type_token_id
		i32 26; uint32_t java_name_index
	}, ; 520
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 440; uint32_t java_name_index
	}, ; 521
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 677; uint32_t java_name_index
	}, ; 522
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 661; uint32_t java_name_index
	}, ; 523
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000e2, ; uint32_t type_token_id
		i32 33; uint32_t java_name_index
	}, ; 524
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000270, ; uint32_t type_token_id
		i32 239; uint32_t java_name_index
	}, ; 525
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 73; uint32_t java_name_index
	}, ; 526
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 624; uint32_t java_name_index
	}, ; 527
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000253, ; uint32_t type_token_id
		i32 1060; uint32_t java_name_index
	}, ; 528
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000365, ; uint32_t type_token_id
		i32 368; uint32_t java_name_index
	}, ; 529
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 498; uint32_t java_name_index
	}, ; 530
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000341, ; uint32_t type_token_id
		i32 348; uint32_t java_name_index
	}, ; 531
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003a0, ; uint32_t type_token_id
		i32 402; uint32_t java_name_index
	}, ; 532
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000348, ; uint32_t type_token_id
		i32 1054; uint32_t java_name_index
	}, ; 533
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200019d, ; uint32_t type_token_id
		i32 143; uint32_t java_name_index
	}, ; 534
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 958; uint32_t java_name_index
	}, ; 535
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000109, ; uint32_t type_token_id
		i32 52; uint32_t java_name_index
	}, ; 536
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e9, ; uint32_t type_token_id
		i32 286; uint32_t java_name_index
	}, ; 537
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000c6, ; uint32_t type_token_id
		i32 17; uint32_t java_name_index
	}, ; 538
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 933; uint32_t java_name_index
	}, ; 539
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 354; uint32_t java_name_index
	}, ; 540
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 534; uint32_t java_name_index
	}, ; 541
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 539; uint32_t java_name_index
	}, ; 542
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200031c, ; uint32_t type_token_id
		i32 326; uint32_t java_name_index
	}, ; 543
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 767; uint32_t java_name_index
	}, ; 544
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 879; uint32_t java_name_index
	}, ; 545
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001bc, ; uint32_t type_token_id
		i32 159; uint32_t java_name_index
	}, ; 546
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200035a, ; uint32_t type_token_id
		i32 776; uint32_t java_name_index
	}, ; 547
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 886; uint32_t java_name_index
	}, ; 548
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 497; uint32_t java_name_index
	}, ; 549
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000a8, ; uint32_t type_token_id
		i32 615; uint32_t java_name_index
	}, ; 550
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003e5, ; uint32_t type_token_id
		i32 859; uint32_t java_name_index
	}, ; 551
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200027b, ; uint32_t type_token_id
		i32 242; uint32_t java_name_index
	}, ; 552
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000086, ; uint32_t type_token_id
		i32 598; uint32_t java_name_index
	}, ; 553
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 520; uint32_t java_name_index
	}, ; 554
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 495; uint32_t java_name_index
	}, ; 555
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 600; uint32_t java_name_index
	}, ; 556
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 505; uint32_t java_name_index
	}, ; 557
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000115, ; uint32_t type_token_id
		i32 57; uint32_t java_name_index
	}, ; 558
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e4, ; uint32_t type_token_id
		i32 282; uint32_t java_name_index
	}, ; 559
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 397; uint32_t java_name_index
	}, ; 560
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x02000006, ; uint32_t type_token_id
		i32 507; uint32_t java_name_index
	}, ; 561
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x02000028, ; uint32_t type_token_id
		i32 680; uint32_t java_name_index
	}, ; 562
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 0; uint32_t java_name_index
	}, ; 563
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200033d, ; uint32_t type_token_id
		i32 345; uint32_t java_name_index
	}, ; 564
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003d5, ; uint32_t type_token_id
		i32 851; uint32_t java_name_index
	}, ; 565
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200008e, ; uint32_t type_token_id
		i32 939; uint32_t java_name_index
	}, ; 566
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 963; uint32_t java_name_index
	}, ; 567
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 707; uint32_t java_name_index
	}, ; 568
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 720; uint32_t java_name_index
	}, ; 569
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 928; uint32_t java_name_index
	}, ; 570
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 500; uint32_t java_name_index
	}, ; 571
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000191, ; uint32_t type_token_id
		i32 1050; uint32_t java_name_index
	}, ; 572
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200016a, ; uint32_t type_token_id
		i32 1037; uint32_t java_name_index
	}, ; 573
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000074, ; uint32_t type_token_id
		i32 656; uint32_t java_name_index
	}, ; 574
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000394, ; uint32_t type_token_id
		i32 394; uint32_t java_name_index
	}, ; 575
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200038f, ; uint32_t type_token_id
		i32 390; uint32_t java_name_index
	}, ; 576
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 734; uint32_t java_name_index
	}, ; 577
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000068, ; uint32_t type_token_id
		i32 921; uint32_t java_name_index
	}, ; 578
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000366, ; uint32_t type_token_id
		i32 369; uint32_t java_name_index
	}, ; 579
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000123, ; uint32_t type_token_id
		i32 999; uint32_t java_name_index
	}, ; 580
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 575; uint32_t java_name_index
	}, ; 581
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000288, ; uint32_t type_token_id
		i32 250; uint32_t java_name_index
	}, ; 582
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 960; uint32_t java_name_index
	}, ; 583
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000340, ; uint32_t type_token_id
		i32 347; uint32_t java_name_index
	}, ; 584
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 974; uint32_t java_name_index
	}, ; 585
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ec, ; uint32_t type_token_id
		i32 289; uint32_t java_name_index
	}, ; 586
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000c3, ; uint32_t type_token_id
		i32 629; uint32_t java_name_index
	}, ; 587
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 554; uint32_t java_name_index
	}, ; 588
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000029, ; uint32_t type_token_id
		i32 531; uint32_t java_name_index
	}, ; 589
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000364, ; uint32_t type_token_id
		i32 783; uint32_t java_name_index
	}, ; 590
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x02000027, ; uint32_t type_token_id
		i32 529; uint32_t java_name_index
	}, ; 591
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 471; uint32_t java_name_index
	}, ; 592
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 692; uint32_t java_name_index
	}, ; 593
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000137, ; uint32_t type_token_id
		i32 1008; uint32_t java_name_index
	}, ; 594
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200026d, ; uint32_t type_token_id
		i32 237; uint32_t java_name_index
	}, ; 595
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000058, ; uint32_t type_token_id
		i32 639; uint32_t java_name_index
	}, ; 596
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200007c, ; uint32_t type_token_id
		i32 659; uint32_t java_name_index
	}, ; 597
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000362, ; uint32_t type_token_id
		i32 782; uint32_t java_name_index
	}, ; 598
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000403, ; uint32_t type_token_id
		i32 467; uint32_t java_name_index
	}, ; 599
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000138, ; uint32_t type_token_id
		i32 79; uint32_t java_name_index
	}, ; 600
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200013c, ; uint32_t type_token_id
		i32 82; uint32_t java_name_index
	}, ; 601
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000622, ; uint32_t type_token_id
		i32 831; uint32_t java_name_index
	}, ; 602
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000266, ; uint32_t type_token_id
		i32 232; uint32_t java_name_index
	}, ; 603
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 176; uint32_t java_name_index
	}, ; 604
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x02000018, ; uint32_t type_token_id
		i32 1063; uint32_t java_name_index
	}, ; 605
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000059, ; uint32_t type_token_id
		i32 640; uint32_t java_name_index
	}, ; 606
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200037f, ; uint32_t type_token_id
		i32 379; uint32_t java_name_index
	}, ; 607
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f8, ; uint32_t type_token_id
		i32 301; uint32_t java_name_index
	}, ; 608
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000147, ; uint32_t type_token_id
		i32 90; uint32_t java_name_index
	}, ; 609
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200041b, ; uint32_t type_token_id
		i32 483; uint32_t java_name_index
	}, ; 610
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200034f, ; uint32_t type_token_id
		i32 356; uint32_t java_name_index
	}, ; 611
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000104, ; uint32_t type_token_id
		i32 50; uint32_t java_name_index
	}, ; 612
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002e9, ; uint32_t type_token_id
		i32 1049; uint32_t java_name_index
	}, ; 613
	%struct.TypeMapJava {
		i32 32, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 1062; uint32_t java_name_index
	}, ; 614
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000614, ; uint32_t type_token_id
		i32 815; uint32_t java_name_index
	}, ; 615
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 748; uint32_t java_name_index
	}, ; 616
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000392, ; uint32_t type_token_id
		i32 392; uint32_t java_name_index
	}, ; 617
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ed, ; uint32_t type_token_id
		i32 290; uint32_t java_name_index
	}, ; 618
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 644; uint32_t java_name_index
	}, ; 619
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003e6, ; uint32_t type_token_id
		i32 860; uint32_t java_name_index
	}, ; 620
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 589; uint32_t java_name_index
	}, ; 621
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003bb, ; uint32_t type_token_id
		i32 420; uint32_t java_name_index
	}, ; 622
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 212; uint32_t java_name_index
	}, ; 623
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000ad, ; uint32_t type_token_id
		i32 619; uint32_t java_name_index
	}, ; 624
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 632; uint32_t java_name_index
	}, ; 625
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 977; uint32_t java_name_index
	}, ; 626
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000ab, ; uint32_t type_token_id
		i32 1; uint32_t java_name_index
	}, ; 627
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000185, ; uint32_t type_token_id
		i32 1048; uint32_t java_name_index
	}, ; 628
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 19; uint32_t java_name_index
	}, ; 629
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200013d, ; uint32_t type_token_id
		i32 1010; uint32_t java_name_index
	}, ; 630
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020006a2, ; uint32_t type_token_id
		i32 789; uint32_t java_name_index
	}, ; 631
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200060f, ; uint32_t type_token_id
		i32 810; uint32_t java_name_index
	}, ; 632
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000391, ; uint32_t type_token_id
		i32 803; uint32_t java_name_index
	}, ; 633
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 744; uint32_t java_name_index
	}, ; 634
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 964; uint32_t java_name_index
	}, ; 635
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000de, ; uint32_t type_token_id
		i32 30; uint32_t java_name_index
	}, ; 636
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200016e, ; uint32_t type_token_id
		i32 107; uint32_t java_name_index
	}, ; 637
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000395, ; uint32_t type_token_id
		i32 807; uint32_t java_name_index
	}, ; 638
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000c0, ; uint32_t type_token_id
		i32 627; uint32_t java_name_index
	}, ; 639
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000049, ; uint32_t type_token_id
		i32 704; uint32_t java_name_index
	}, ; 640
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 350; uint32_t java_name_index
	}, ; 641
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 200; uint32_t java_name_index
	}, ; 642
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200007f, ; uint32_t type_token_id
		i32 733; uint32_t java_name_index
	}, ; 643
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000121, ; uint32_t type_token_id
		i32 998; uint32_t java_name_index
	}, ; 644
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 729; uint32_t java_name_index
	}, ; 645
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200007b, ; uint32_t type_token_id
		i32 658; uint32_t java_name_index
	}, ; 646
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 602; uint32_t java_name_index
	}, ; 647
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 411; uint32_t java_name_index
	}, ; 648
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000151, ; uint32_t type_token_id
		i32 1014; uint32_t java_name_index
	}, ; 649
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200030d, ; uint32_t type_token_id
		i32 316; uint32_t java_name_index
	}, ; 650
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 372; uint32_t java_name_index
	}, ; 651
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000067, ; uint32_t type_token_id
		i32 920; uint32_t java_name_index
	}, ; 652
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 214; uint32_t java_name_index
	}, ; 653
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200029d, ; uint32_t type_token_id
		i32 991; uint32_t java_name_index
	}, ; 654
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200012c, ; uint32_t type_token_id
		i32 71; uint32_t java_name_index
	}, ; 655
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000119, ; uint32_t type_token_id
		i32 993; uint32_t java_name_index
	}, ; 656
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1068; uint32_t java_name_index
	}, ; 657
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001b0, ; uint32_t type_token_id
		i32 154; uint32_t java_name_index
	}, ; 658
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000384, ; uint32_t type_token_id
		i32 383; uint32_t java_name_index
	}, ; 659
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 342; uint32_t java_name_index
	}, ; 660
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 45; uint32_t java_name_index
	}, ; 661
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200004a, ; uint32_t type_token_id
		i32 705; uint32_t java_name_index
	}, ; 662
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000253, ; uint32_t type_token_id
		i32 224; uint32_t java_name_index
	}, ; 663
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 494; uint32_t java_name_index
	}, ; 664
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000158, ; uint32_t type_token_id
		i32 1020; uint32_t java_name_index
	}, ; 665
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 336; uint32_t java_name_index
	}, ; 666
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000352, ; uint32_t type_token_id
		i32 358; uint32_t java_name_index
	}, ; 667
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 909; uint32_t java_name_index
	}, ; 668
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200007e, ; uint32_t type_token_id
		i32 595; uint32_t java_name_index
	}, ; 669
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200035f, ; uint32_t type_token_id
		i32 365; uint32_t java_name_index
	}, ; 670
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 713; uint32_t java_name_index
	}, ; 671
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200004f, ; uint32_t type_token_id
		i32 709; uint32_t java_name_index
	}, ; 672
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000046, ; uint32_t type_token_id
		i32 701; uint32_t java_name_index
	}, ; 673
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200005b, ; uint32_t type_token_id
		i32 642; uint32_t java_name_index
	}, ; 674
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 754; uint32_t java_name_index
	}, ; 675
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003b4, ; uint32_t type_token_id
		i32 415; uint32_t java_name_index
	}, ; 676
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200012a, ; uint32_t type_token_id
		i32 69; uint32_t java_name_index
	}, ; 677
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f8, ; uint32_t type_token_id
		i32 458; uint32_t java_name_index
	}, ; 678
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 7; uint32_t java_name_index
	}, ; 679
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 523; uint32_t java_name_index
	}, ; 680
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000152, ; uint32_t type_token_id
		i32 1015; uint32_t java_name_index
	}, ; 681
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000e1, ; uint32_t type_token_id
		i32 32; uint32_t java_name_index
	}, ; 682
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200023b, ; uint32_t type_token_id
		i32 217; uint32_t java_name_index
	}, ; 683
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200025f, ; uint32_t type_token_id
		i32 230; uint32_t java_name_index
	}, ; 684
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 65; uint32_t java_name_index
	}, ; 685
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 513; uint32_t java_name_index
	}, ; 686
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001f8, ; uint32_t type_token_id
		i32 184; uint32_t java_name_index
	}, ; 687
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000ff, ; uint32_t type_token_id
		i32 47; uint32_t java_name_index
	}, ; 688
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200024d, ; uint32_t type_token_id
		i32 1059; uint32_t java_name_index
	}, ; 689
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 174; uint32_t java_name_index
	}, ; 690
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ce, ; uint32_t type_token_id
		i32 846; uint32_t java_name_index
	}, ; 691
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 23; uint32_t java_name_index
	}, ; 692
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 562; uint32_t java_name_index
	}, ; 693
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200008c, ; uint32_t type_token_id
		i32 937; uint32_t java_name_index
	}, ; 694
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000311, ; uint32_t type_token_id
		i32 320; uint32_t java_name_index
	}, ; 695
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000330, ; uint32_t type_token_id
		i32 1051; uint32_t java_name_index
	}, ; 696
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002fd, ; uint32_t type_token_id
		i32 305; uint32_t java_name_index
	}, ; 697
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001c4, ; uint32_t type_token_id
		i32 165; uint32_t java_name_index
	}, ; 698
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 714; uint32_t java_name_index
	}, ; 699
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000019, ; uint32_t type_token_id
		i32 691; uint32_t java_name_index
	}, ; 700
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 874; uint32_t java_name_index
	}, ; 701
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 98; uint32_t java_name_index
	}, ; 702
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f3, ; uint32_t type_token_id
		i32 453; uint32_t java_name_index
	}, ; 703
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000302, ; uint32_t type_token_id
		i32 309; uint32_t java_name_index
	}, ; 704
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 935; uint32_t java_name_index
	}, ; 705
	%struct.TypeMapJava {
		i32 34, ; uint32_t module_index
		i32 u0x0200001a, ; uint32_t type_token_id
		i32 1072; uint32_t java_name_index
	}, ; 706
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000191, ; uint32_t type_token_id
		i32 132; uint32_t java_name_index
	}, ; 707
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200015e, ; uint32_t type_token_id
		i32 1027; uint32_t java_name_index
	}, ; 708
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000198, ; uint32_t type_token_id
		i32 139; uint32_t java_name_index
	}, ; 709
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000602, ; uint32_t type_token_id
		i32 795; uint32_t java_name_index
	}, ; 710
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000153, ; uint32_t type_token_id
		i32 1016; uint32_t java_name_index
	}, ; 711
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 918; uint32_t java_name_index
	}, ; 712
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200020d, ; uint32_t type_token_id
		i32 196; uint32_t java_name_index
	}, ; 713
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c4, ; uint32_t type_token_id
		i32 835; uint32_t java_name_index
	}, ; 714
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 436; uint32_t java_name_index
	}, ; 715
	%struct.TypeMapJava {
		i32 29, ; uint32_t module_index
		i32 u0x0200000b, ; uint32_t type_token_id
		i32 983; uint32_t java_name_index
	}, ; 716
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 563; uint32_t java_name_index
	}, ; 717
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001d8, ; uint32_t type_token_id
		i32 175; uint32_t java_name_index
	}, ; 718
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 430; uint32_t java_name_index
	}, ; 719
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200026b, ; uint32_t type_token_id
		i32 235; uint32_t java_name_index
	}, ; 720
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200038a, ; uint32_t type_token_id
		i32 793; uint32_t java_name_index
	}, ; 721
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000060, ; uint32_t type_token_id
		i32 719; uint32_t java_name_index
	}, ; 722
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 670; uint32_t java_name_index
	}, ; 723
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001ff, ; uint32_t type_token_id
		i32 189; uint32_t java_name_index
	}, ; 724
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000357, ; uint32_t type_token_id
		i32 360; uint32_t java_name_index
	}, ; 725
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200041a, ; uint32_t type_token_id
		i32 482; uint32_t java_name_index
	}, ; 726
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 211; uint32_t java_name_index
	}, ; 727
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 118; uint32_t java_name_index
	}, ; 728
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 648; uint32_t java_name_index
	}, ; 729
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 338; uint32_t java_name_index
	}, ; 730
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d9, ; uint32_t type_token_id
		i32 271; uint32_t java_name_index
	}, ; 731
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000226, ; uint32_t type_token_id
		i32 206; uint32_t java_name_index
	}, ; 732
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 85; uint32_t java_name_index
	}, ; 733
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 968; uint32_t java_name_index
	}, ; 734
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000054, ; uint32_t type_token_id
		i32 636; uint32_t java_name_index
	}, ; 735
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f2, ; uint32_t type_token_id
		i32 452; uint32_t java_name_index
	}, ; 736
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 830; uint32_t java_name_index
	}, ; 737
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000133, ; uint32_t type_token_id
		i32 76; uint32_t java_name_index
	}, ; 738
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 213; uint32_t java_name_index
	}, ; 739
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 899; uint32_t java_name_index
	}, ; 740
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 674; uint32_t java_name_index
	}, ; 741
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000276, ; uint32_t type_token_id
		i32 241; uint32_t java_name_index
	}, ; 742
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000386, ; uint32_t type_token_id
		i32 384; uint32_t java_name_index
	}, ; 743
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 255; uint32_t java_name_index
	}, ; 744
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200042d, ; uint32_t type_token_id
		i32 486; uint32_t java_name_index
	}, ; 745
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200018a, ; uint32_t type_token_id
		i32 128; uint32_t java_name_index
	}, ; 746
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c5, ; uint32_t type_token_id
		i32 836; uint32_t java_name_index
	}, ; 747
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200008a, ; uint32_t type_token_id
		i32 742; uint32_t java_name_index
	}, ; 748
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 724; uint32_t java_name_index
	}, ; 749
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c8, ; uint32_t type_token_id
		i32 839; uint32_t java_name_index
	}, ; 750
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 986; uint32_t java_name_index
	}, ; 751
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003d2, ; uint32_t type_token_id
		i32 849; uint32_t java_name_index
	}, ; 752
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000085, ; uint32_t type_token_id
		i32 665; uint32_t java_name_index
	}, ; 753
	%struct.TypeMapJava {
		i32 30, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 985; uint32_t java_name_index
	}, ; 754
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000041, ; uint32_t type_token_id
		i32 900; uint32_t java_name_index
	}, ; 755
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003e2, ; uint32_t type_token_id
		i32 857; uint32_t java_name_index
	}, ; 756
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 517; uint32_t java_name_index
	}, ; 757
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000634, ; uint32_t type_token_id
		i32 871; uint32_t java_name_index
	}, ; 758
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000348, ; uint32_t type_token_id
		i32 772; uint32_t java_name_index
	}, ; 759
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000167, ; uint32_t type_token_id
		i32 104; uint32_t java_name_index
	}, ; 760
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000120, ; uint32_t type_token_id
		i32 997; uint32_t java_name_index
	}, ; 761
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ae, ; uint32_t type_token_id
		i32 827; uint32_t java_name_index
	}, ; 762
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003be, ; uint32_t type_token_id
		i32 422; uint32_t java_name_index
	}, ; 763
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200027f, ; uint32_t type_token_id
		i32 245; uint32_t java_name_index
	}, ; 764
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 565; uint32_t java_name_index
	}, ; 765
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000089, ; uint32_t type_token_id
		i32 741; uint32_t java_name_index
	}, ; 766
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 443; uint32_t java_name_index
	}, ; 767
	%struct.TypeMapJava {
		i32 33, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 1064; uint32_t java_name_index
	}, ; 768
	%struct.TypeMapJava {
		i32 15, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 681; uint32_t java_name_index
	}, ; 769
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200038b, ; uint32_t type_token_id
		i32 794; uint32_t java_name_index
	}, ; 770
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003eb, ; uint32_t type_token_id
		i32 863; uint32_t java_name_index
	}, ; 771
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000143, ; uint32_t type_token_id
		i32 86; uint32_t java_name_index
	}, ; 772
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 584; uint32_t java_name_index
	}, ; 773
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 906; uint32_t java_name_index
	}, ; 774
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000192, ; uint32_t type_token_id
		i32 133; uint32_t java_name_index
	}, ; 775
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000db, ; uint32_t type_token_id
		i32 28; uint32_t java_name_index
	}, ; 776
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000396, ; uint32_t type_token_id
		i32 809; uint32_t java_name_index
	}, ; 777
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000c, ; uint32_t type_token_id
		i32 547; uint32_t java_name_index
	}, ; 778
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 818; uint32_t java_name_index
	}, ; 779
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001c2, ; uint32_t type_token_id
		i32 163; uint32_t java_name_index
	}, ; 780
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 756; uint32_t java_name_index
	}, ; 781
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000361, ; uint32_t type_token_id
		i32 781; uint32_t java_name_index
	}, ; 782
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002d9, ; uint32_t type_token_id
		i32 1043; uint32_t java_name_index
	}, ; 783
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002d0, ; uint32_t type_token_id
		i32 1022; uint32_t java_name_index
	}, ; 784
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200024b, ; uint32_t type_token_id
		i32 220; uint32_t java_name_index
	}, ; 785
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003b3, ; uint32_t type_token_id
		i32 829; uint32_t java_name_index
	}, ; 786
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ad, ; uint32_t type_token_id
		i32 826; uint32_t java_name_index
	}, ; 787
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 156; uint32_t java_name_index
	}, ; 788
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000080, ; uint32_t type_token_id
		i32 936; uint32_t java_name_index
	}, ; 789
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200009c, ; uint32_t type_token_id
		i32 947; uint32_t java_name_index
	}, ; 790
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 943; uint32_t java_name_index
	}, ; 791
	%struct.TypeMapJava {
		i32 4, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 512; uint32_t java_name_index
	}, ; 792
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x0200001d, ; uint32_t type_token_id
		i32 891; uint32_t java_name_index
	}, ; 793
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 362; uint32_t java_name_index
	}, ; 794
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 145; uint32_t java_name_index
	}, ; 795
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ea, ; uint32_t type_token_id
		i32 287; uint32_t java_name_index
	}, ; 796
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000283, ; uint32_t type_token_id
		i32 248; uint32_t java_name_index
	}, ; 797
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000126, ; uint32_t type_token_id
		i32 1002; uint32_t java_name_index
	}, ; 798
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200006e, ; uint32_t type_token_id
		i32 926; uint32_t java_name_index
	}, ; 799
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 190; uint32_t java_name_index
	}, ; 800
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c6, ; uint32_t type_token_id
		i32 837; uint32_t java_name_index
	}, ; 801
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000020, ; uint32_t type_token_id
		i32 502; uint32_t java_name_index
	}, ; 802
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e0, ; uint32_t type_token_id
		i32 278; uint32_t java_name_index
	}, ; 803
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 915; uint32_t java_name_index
	}, ; 804
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000177, ; uint32_t type_token_id
		i32 115; uint32_t java_name_index
	}, ; 805
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000047, ; uint32_t type_token_id
		i32 568; uint32_t java_name_index
	}, ; 806
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000324, ; uint32_t type_token_id
		i32 332; uint32_t java_name_index
	}, ; 807
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000139, ; uint32_t type_token_id
		i32 80; uint32_t java_name_index
	}, ; 808
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200023a, ; uint32_t type_token_id
		i32 216; uint32_t java_name_index
	}, ; 809
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001a8, ; uint32_t type_token_id
		i32 149; uint32_t java_name_index
	}, ; 810
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 215; uint32_t java_name_index
	}, ; 811
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200000a, ; uint32_t type_token_id
		i32 881; uint32_t java_name_index
	}, ; 812
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000023, ; uint32_t type_token_id
		i32 504; uint32_t java_name_index
	}, ; 813
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000051, ; uint32_t type_token_id
		i32 634; uint32_t java_name_index
	}, ; 814
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 535; uint32_t java_name_index
	}, ; 815
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200006c, ; uint32_t type_token_id
		i32 652; uint32_t java_name_index
	}, ; 816
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000392, ; uint32_t type_token_id
		i32 804; uint32_t java_name_index
	}, ; 817
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200034c, ; uint32_t type_token_id
		i32 1057; uint32_t java_name_index
	}, ; 818
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 877; uint32_t java_name_index
	}, ; 819
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000c5, ; uint32_t type_token_id
		i32 16; uint32_t java_name_index
	}, ; 820
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200007a, ; uint32_t type_token_id
		i32 593; uint32_t java_name_index
	}, ; 821
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002db, ; uint32_t type_token_id
		i32 273; uint32_t java_name_index
	}, ; 822
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001dc, ; uint32_t type_token_id
		i32 177; uint32_t java_name_index
	}, ; 823
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 205; uint32_t java_name_index
	}, ; 824
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200000f, ; uint32_t type_token_id
		i32 685; uint32_t java_name_index
	}, ; 825
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ca, ; uint32_t type_token_id
		i32 841; uint32_t java_name_index
	}, ; 826
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000264, ; uint32_t type_token_id
		i32 231; uint32_t java_name_index
	}, ; 827
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f9, ; uint32_t type_token_id
		i32 302; uint32_t java_name_index
	}, ; 828
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 876; uint32_t java_name_index
	}, ; 829
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000083, ; uint32_t type_token_id
		i32 736; uint32_t java_name_index
	}, ; 830
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 9; uint32_t java_name_index
	}, ; 831
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200009b, ; uint32_t type_token_id
		i32 753; uint32_t java_name_index
	}, ; 832
	%struct.TypeMapJava {
		i32 1, ; uint32_t module_index
		i32 u0x02000014, ; uint32_t type_token_id
		i32 492; uint32_t java_name_index
	}, ; 833
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 596; uint32_t java_name_index
	}, ; 834
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 389; uint32_t java_name_index
	}, ; 835
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 654; uint32_t java_name_index
	}, ; 836
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000157, ; uint32_t type_token_id
		i32 1019; uint32_t java_name_index
	}, ; 837
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 696; uint32_t java_name_index
	}, ; 838
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 966; uint32_t java_name_index
	}, ; 839
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 637; uint32_t java_name_index
	}, ; 840
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000699, ; uint32_t type_token_id
		i32 872; uint32_t java_name_index
	}, ; 841
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000088, ; uint32_t type_token_id
		i32 740; uint32_t java_name_index
	}, ; 842
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002de, ; uint32_t type_token_id
		i32 276; uint32_t java_name_index
	}, ; 843
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002dd, ; uint32_t type_token_id
		i32 275; uint32_t java_name_index
	}, ; 844
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 822; uint32_t java_name_index
	}, ; 845
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000317, ; uint32_t type_token_id
		i32 324; uint32_t java_name_index
	}, ; 846
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020000b7, ; uint32_t type_token_id
		i32 989; uint32_t java_name_index
	}, ; 847
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 700; uint32_t java_name_index
	}, ; 848
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 695; uint32_t java_name_index
	}, ; 849
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 93; uint32_t java_name_index
	}, ; 850
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 706; uint32_t java_name_index
	}, ; 851
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 171; uint32_t java_name_index
	}, ; 852
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200024e, ; uint32_t type_token_id
		i32 222; uint32_t java_name_index
	}, ; 853
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000da, ; uint32_t type_token_id
		i32 27; uint32_t java_name_index
	}, ; 854
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000b4, ; uint32_t type_token_id
		i32 6; uint32_t java_name_index
	}, ; 855
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000010, ; uint32_t type_token_id
		i32 560; uint32_t java_name_index
	}, ; 856
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 178; uint32_t java_name_index
	}, ; 857
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000090, ; uint32_t type_token_id
		i32 603; uint32_t java_name_index
	}, ; 858
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000416, ; uint32_t type_token_id
		i32 479; uint32_t java_name_index
	}, ; 859
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 351; uint32_t java_name_index
	}, ; 860
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000045, ; uint32_t type_token_id
		i32 902; uint32_t java_name_index
	}, ; 861
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000118, ; uint32_t type_token_id
		i32 992; uint32_t java_name_index
	}, ; 862
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200028b, ; uint32_t type_token_id
		i32 253; uint32_t java_name_index
	}, ; 863
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x0200000d, ; uint32_t type_token_id
		i32 548; uint32_t java_name_index
	}, ; 864
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 820; uint32_t java_name_index
	}, ; 865
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000056, ; uint32_t type_token_id
		i32 910; uint32_t java_name_index
	}, ; 866
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e5, ; uint32_t type_token_id
		i32 283; uint32_t java_name_index
	}, ; 867
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003cc, ; uint32_t type_token_id
		i32 843; uint32_t java_name_index
	}, ; 868
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003cb, ; uint32_t type_token_id
		i32 842; uint32_t java_name_index
	}, ; 869
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001e0, ; uint32_t type_token_id
		i32 179; uint32_t java_name_index
	}, ; 870
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200009e, ; uint32_t type_token_id
		i32 608; uint32_t java_name_index
	}, ; 871
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 435; uint32_t java_name_index
	}, ; 872
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000396, ; uint32_t type_token_id
		i32 396; uint32_t java_name_index
	}, ; 873
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000084, ; uint32_t type_token_id
		i32 737; uint32_t java_name_index
	}, ; 874
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 119; uint32_t java_name_index
	}, ; 875
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e3, ; uint32_t type_token_id
		i32 281; uint32_t java_name_index
	}, ; 876
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000098, ; uint32_t type_token_id
		i32 604; uint32_t java_name_index
	}, ; 877
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 100; uint32_t java_name_index
	}, ; 878
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003c7, ; uint32_t type_token_id
		i32 838; uint32_t java_name_index
	}, ; 879
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000144, ; uint32_t type_token_id
		i32 87; uint32_t java_name_index
	}, ; 880
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 731; uint32_t java_name_index
	}, ; 881
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000093, ; uint32_t type_token_id
		i32 942; uint32_t java_name_index
	}, ; 882
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 623; uint32_t java_name_index
	}, ; 883
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002b7, ; uint32_t type_token_id
		i32 260; uint32_t java_name_index
	}, ; 884
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000393, ; uint32_t type_token_id
		i32 805; uint32_t java_name_index
	}, ; 885
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000ea, ; uint32_t type_token_id
		i32 37; uint32_t java_name_index
	}, ; 886
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003a5, ; uint32_t type_token_id
		i32 819; uint32_t java_name_index
	}, ; 887
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000087, ; uint32_t type_token_id
		i32 666; uint32_t java_name_index
	}, ; 888
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200019c, ; uint32_t type_token_id
		i32 142; uint32_t java_name_index
	}, ; 889
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 976; uint32_t java_name_index
	}, ; 890
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000007, ; uint32_t type_token_id
		i32 515; uint32_t java_name_index
	}, ; 891
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000048, ; uint32_t type_token_id
		i32 904; uint32_t java_name_index
	}, ; 892
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 439; uint32_t java_name_index
	}, ; 893
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 905; uint32_t java_name_index
	}, ; 894
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000303, ; uint32_t type_token_id
		i32 310; uint32_t java_name_index
	}, ; 895
	%struct.TypeMapJava {
		i32 20, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 878; uint32_t java_name_index
	}, ; 896
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200069a, ; uint32_t type_token_id
		i32 873; uint32_t java_name_index
	}, ; 897
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003de, ; uint32_t type_token_id
		i32 853; uint32_t java_name_index
	}, ; 898
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001f7, ; uint32_t type_token_id
		i32 183; uint32_t java_name_index
	}, ; 899
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003fb, ; uint32_t type_token_id
		i32 461; uint32_t java_name_index
	}, ; 900
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200005a, ; uint32_t type_token_id
		i32 641; uint32_t java_name_index
	}, ; 901
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200004c, ; uint32_t type_token_id
		i32 631; uint32_t java_name_index
	}, ; 902
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200038c, ; uint32_t type_token_id
		i32 387; uint32_t java_name_index
	}, ; 903
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000287, ; uint32_t type_token_id
		i32 249; uint32_t java_name_index
	}, ; 904
	%struct.TypeMapJava {
		i32 28, ; uint32_t module_index
		i32 u0x02000078, ; uint32_t type_token_id
		i32 982; uint32_t java_name_index
	}, ; 905
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200000e, ; uint32_t type_token_id
		i32 684; uint32_t java_name_index
	}, ; 906
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002b6, ; uint32_t type_token_id
		i32 259; uint32_t java_name_index
	}, ; 907
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000204, ; uint32_t type_token_id
		i32 191; uint32_t java_name_index
	}, ; 908
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 555; uint32_t java_name_index
	}, ; 909
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000016, ; uint32_t type_token_id
		i32 689; uint32_t java_name_index
	}, ; 910
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000169, ; uint32_t type_token_id
		i32 105; uint32_t java_name_index
	}, ; 911
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002e7, ; uint32_t type_token_id
		i32 285; uint32_t java_name_index
	}, ; 912
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003f1, ; uint32_t type_token_id
		i32 451; uint32_t java_name_index
	}, ; 913
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 519; uint32_t java_name_index
	}, ; 914
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000180, ; uint32_t type_token_id
		i32 120; uint32_t java_name_index
	}, ; 915
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000199, ; uint32_t type_token_id
		i32 140; uint32_t java_name_index
	}, ; 916
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 97; uint32_t java_name_index
	}, ; 917
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000b2, ; uint32_t type_token_id
		i32 5; uint32_t java_name_index
	}, ; 918
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200018f, ; uint32_t type_token_id
		i32 131; uint32_t java_name_index
	}, ; 919
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000397, ; uint32_t type_token_id
		i32 812; uint32_t java_name_index
	}, ; 920
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200038d, ; uint32_t type_token_id
		i32 388; uint32_t java_name_index
	}, ; 921
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000d7, ; uint32_t type_token_id
		i32 25; uint32_t java_name_index
	}, ; 922
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000207, ; uint32_t type_token_id
		i32 192; uint32_t java_name_index
	}, ; 923
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000186, ; uint32_t type_token_id
		i32 125; uint32_t java_name_index
	}, ; 924
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d0, ; uint32_t type_token_id
		i32 265; uint32_t java_name_index
	}, ; 925
	%struct.TypeMapJava {
		i32 22, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 890; uint32_t java_name_index
	}, ; 926
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 687; uint32_t java_name_index
	}, ; 927
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001fc, ; uint32_t type_token_id
		i32 187; uint32_t java_name_index
	}, ; 928
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000090, ; uint32_t type_token_id
		i32 747; uint32_t java_name_index
	}, ; 929
	%struct.TypeMapJava {
		i32 7, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 542; uint32_t java_name_index
	}, ; 930
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 404; uint32_t java_name_index
	}, ; 931
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000350, ; uint32_t type_token_id
		i32 357; uint32_t java_name_index
	}, ; 932
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002ce, ; uint32_t type_token_id
		i32 264; uint32_t java_name_index
	}, ; 933
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000306, ; uint32_t type_token_id
		i32 312; uint32_t java_name_index
	}, ; 934
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200038e, ; uint32_t type_token_id
		i32 800; uint32_t java_name_index
	}, ; 935
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000100, ; uint32_t type_token_id
		i32 48; uint32_t java_name_index
	}, ; 936
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000072, ; uint32_t type_token_id
		i32 591; uint32_t java_name_index
	}, ; 937
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002eb, ; uint32_t type_token_id
		i32 288; uint32_t java_name_index
	}, ; 938
	%struct.TypeMapJava {
		i32 5, ; uint32_t module_index
		i32 u0x02000008, ; uint32_t type_token_id
		i32 516; uint32_t java_name_index
	}, ; 939
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200008f, ; uint32_t type_token_id
		i32 940; uint32_t java_name_index
	}, ; 940
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000017, ; uint32_t type_token_id
		i32 553; uint32_t java_name_index
	}, ; 941
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000130, ; uint32_t type_token_id
		i32 1007; uint32_t java_name_index
	}, ; 942
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200027d, ; uint32_t type_token_id
		i32 244; uint32_t java_name_index
	}, ; 943
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200006a, ; uint32_t type_token_id
		i32 587; uint32_t java_name_index
	}, ; 944
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002dc, ; uint32_t type_token_id
		i32 274; uint32_t java_name_index
	}, ; 945
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x02000009, ; uint32_t type_token_id
		i32 682; uint32_t java_name_index
	}, ; 946
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003ef, ; uint32_t type_token_id
		i32 449; uint32_t java_name_index
	}, ; 947
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000e0, ; uint32_t type_token_id
		i32 31; uint32_t java_name_index
	}, ; 948
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200014c, ; uint32_t type_token_id
		i32 92; uint32_t java_name_index
	}, ; 949
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 628; uint32_t java_name_index
	}, ; 950
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000050, ; uint32_t type_token_id
		i32 710; uint32_t java_name_index
	}, ; 951
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200012b, ; uint32_t type_token_id
		i32 70; uint32_t java_name_index
	}, ; 952
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002fa, ; uint32_t type_token_id
		i32 303; uint32_t java_name_index
	}, ; 953
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003b2, ; uint32_t type_token_id
		i32 414; uint32_t java_name_index
	}, ; 954
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 96; uint32_t java_name_index
	}, ; 955
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 22; uint32_t java_name_index
	}, ; 956
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 823; uint32_t java_name_index
	}, ; 957
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200039f, ; uint32_t type_token_id
		i32 401; uint32_t java_name_index
	}, ; 958
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 541; uint32_t java_name_index
	}, ; 959
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 201; uint32_t java_name_index
	}, ; 960
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000065, ; uint32_t type_token_id
		i32 583; uint32_t java_name_index
	}, ; 961
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000026, ; uint32_t type_token_id
		i32 952; uint32_t java_name_index
	}, ; 962
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200018d, ; uint32_t type_token_id
		i32 130; uint32_t java_name_index
	}, ; 963
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x0200002a, ; uint32_t type_token_id
		i32 532; uint32_t java_name_index
	}, ; 964
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000040, ; uint32_t type_token_id
		i32 981; uint32_t java_name_index
	}, ; 965
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 376; uint32_t java_name_index
	}, ; 966
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000332, ; uint32_t type_token_id
		i32 339; uint32_t java_name_index
	}, ; 967
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f4, ; uint32_t type_token_id
		i32 297; uint32_t java_name_index
	}, ; 968
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x02000066, ; uint32_t type_token_id
		i32 919; uint32_t java_name_index
	}, ; 969
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f6, ; uint32_t type_token_id
		i32 299; uint32_t java_name_index
	}, ; 970
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200035e, ; uint32_t type_token_id
		i32 364; uint32_t java_name_index
	}, ; 971
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200035b, ; uint32_t type_token_id
		i32 777; uint32_t java_name_index
	}, ; 972
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000170, ; uint32_t type_token_id
		i32 1041; uint32_t java_name_index
	}, ; 973
	%struct.TypeMapJava {
		i32 13, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 671; uint32_t java_name_index
	}, ; 974
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200008d, ; uint32_t type_token_id
		i32 938; uint32_t java_name_index
	}, ; 975
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200005e, ; uint32_t type_token_id
		i32 717; uint32_t java_name_index
	}, ; 976
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002a4, ; uint32_t type_token_id
		i32 254; uint32_t java_name_index
	}, ; 977
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x02000055, ; uint32_t type_token_id
		i32 887; uint32_t java_name_index
	}, ; 978
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d8, ; uint32_t type_token_id
		i32 270; uint32_t java_name_index
	}, ; 979
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000c2, ; uint32_t type_token_id
		i32 14; uint32_t java_name_index
	}, ; 980
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020003ab, ; uint32_t type_token_id
		i32 825; uint32_t java_name_index
	}, ; 981
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200032a, ; uint32_t type_token_id
		i32 335; uint32_t java_name_index
	}, ; 982
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d4, ; uint32_t type_token_id
		i32 268; uint32_t java_name_index
	}, ; 983
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x02000035, ; uint32_t type_token_id
		i32 975; uint32_t java_name_index
	}, ; 984
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200004d, ; uint32_t type_token_id
		i32 573; uint32_t java_name_index
	}, ; 985
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002de, ; uint32_t type_token_id
		i32 1047; uint32_t java_name_index
	}, ; 986
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000405, ; uint32_t type_token_id
		i32 468; uint32_t java_name_index
	}, ; 987
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000300, ; uint32_t type_token_id
		i32 307; uint32_t java_name_index
	}, ; 988
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000314, ; uint32_t type_token_id
		i32 321; uint32_t java_name_index
	}, ; 989
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000082, ; uint32_t type_token_id
		i32 735; uint32_t java_name_index
	}, ; 990
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 67; uint32_t java_name_index
	}, ; 991
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200036e, ; uint32_t type_token_id
		i32 374; uint32_t java_name_index
	}, ; 992
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 246; uint32_t java_name_index
	}, ; 993
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000159, ; uint32_t type_token_id
		i32 1021; uint32_t java_name_index
	}, ; 994
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 170; uint32_t java_name_index
	}, ; 995
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000187, ; uint32_t type_token_id
		i32 126; uint32_t java_name_index
	}, ; 996
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200030f, ; uint32_t type_token_id
		i32 318; uint32_t java_name_index
	}, ; 997
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 630; uint32_t java_name_index
	}, ; 998
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000491, ; uint32_t type_token_id
		i32 769; uint32_t java_name_index
	}, ; 999
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200031d, ; uint32_t type_token_id
		i32 327; uint32_t java_name_index
	}, ; 1000
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000414, ; uint32_t type_token_id
		i32 477; uint32_t java_name_index
	}, ; 1001
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000211, ; uint32_t type_token_id
		i32 197; uint32_t java_name_index
	}, ; 1002
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200026a, ; uint32_t type_token_id
		i32 234; uint32_t java_name_index
	}, ; 1003
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000633, ; uint32_t type_token_id
		i32 870; uint32_t java_name_index
	}, ; 1004
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000145, ; uint32_t type_token_id
		i32 88; uint32_t java_name_index
	}, ; 1005
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x0200004b, ; uint32_t type_token_id
		i32 571; uint32_t java_name_index
	}, ; 1006
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x0200002b, ; uint32_t type_token_id
		i32 956; uint32_t java_name_index
	}, ; 1007
	%struct.TypeMapJava {
		i32 27, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 978; uint32_t java_name_index
	}, ; 1008
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001e4, ; uint32_t type_token_id
		i32 181; uint32_t java_name_index
	}, ; 1009
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003bc, ; uint32_t type_token_id
		i32 421; uint32_t java_name_index
	}, ; 1010
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x020000a2, ; uint32_t type_token_id
		i32 760; uint32_t java_name_index
	}, ; 1011
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200015f, ; uint32_t type_token_id
		i32 1028; uint32_t java_name_index
	}, ; 1012
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001cc, ; uint32_t type_token_id
		i32 169; uint32_t java_name_index
	}, ; 1013
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000070, ; uint32_t type_token_id
		i32 725; uint32_t java_name_index
	}, ; 1014
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003bf, ; uint32_t type_token_id
		i32 423; uint32_t java_name_index
	}, ; 1015
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 672; uint32_t java_name_index
	}, ; 1016
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x020005ec, ; uint32_t type_token_id
		i32 775; uint32_t java_name_index
	}, ; 1017
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000172, ; uint32_t type_token_id
		i32 111; uint32_t java_name_index
	}, ; 1018
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 765; uint32_t java_name_index
	}, ; 1019
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000164, ; uint32_t type_token_id
		i32 1032; uint32_t java_name_index
	}, ; 1020
	%struct.TypeMapJava {
		i32 2, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 508; uint32_t java_name_index
	}, ; 1021
	%struct.TypeMapJava {
		i32 8, ; uint32_t module_index
		i32 u0x02000004, ; uint32_t type_token_id
		i32 544; uint32_t java_name_index
	}, ; 1022
	%struct.TypeMapJava {
		i32 14, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 676; uint32_t java_name_index
	}, ; 1023
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020001a9, ; uint32_t type_token_id
		i32 150; uint32_t java_name_index
	}, ; 1024
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000f3, ; uint32_t type_token_id
		i32 41; uint32_t java_name_index
	}, ; 1025
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 855; uint32_t java_name_index
	}, ; 1026
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 606; uint32_t java_name_index
	}, ; 1027
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200039e, ; uint32_t type_token_id
		i32 400; uint32_t java_name_index
	}, ; 1028
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x02000057, ; uint32_t type_token_id
		i32 579; uint32_t java_name_index
	}, ; 1029
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200035d, ; uint32_t type_token_id
		i32 363; uint32_t java_name_index
	}, ; 1030
	%struct.TypeMapJava {
		i32 18, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 768; uint32_t java_name_index
	}, ; 1031
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200006f, ; uint32_t type_token_id
		i32 927; uint32_t java_name_index
	}, ; 1032
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200016b, ; uint32_t type_token_id
		i32 1038; uint32_t java_name_index
	}, ; 1033
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200004e, ; uint32_t type_token_id
		i32 708; uint32_t java_name_index
	}, ; 1034
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020000c4, ; uint32_t type_token_id
		i32 15; uint32_t java_name_index
	}, ; 1035
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020003b5, ; uint32_t type_token_id
		i32 416; uint32_t java_name_index
	}, ; 1036
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x0200041c, ; uint32_t type_token_id
		i32 484; uint32_t java_name_index
	}, ; 1037
	%struct.TypeMapJava {
		i32 21, ; uint32_t module_index
		i32 u0x0200001c, ; uint32_t type_token_id
		i32 883; uint32_t java_name_index
	}, ; 1038
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 101; uint32_t java_name_index
	}, ; 1039
	%struct.TypeMapJava {
		i32 16, ; uint32_t module_index
		i32 u0x0200001f, ; uint32_t type_token_id
		i32 694; uint32_t java_name_index
	}, ; 1040
	%struct.TypeMapJava {
		i32 23, ; uint32_t module_index
		i32 u0x0200003b, ; uint32_t type_token_id
		i32 894; uint32_t java_name_index
	}, ; 1041
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x02000388, ; uint32_t type_token_id
		i32 792; uint32_t java_name_index
	}, ; 1042
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f7, ; uint32_t type_token_id
		i32 300; uint32_t java_name_index
	}, ; 1043
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x020002c9, ; uint32_t type_token_id
		i32 1011; uint32_t java_name_index
	}, ; 1044
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002d1, ; uint32_t type_token_id
		i32 266; uint32_t java_name_index
	}, ; 1045
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 610; uint32_t java_name_index
	}, ; 1046
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 611; uint32_t java_name_index
	}, ; 1047
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 221; uint32_t java_name_index
	}, ; 1048
	%struct.TypeMapJava {
		i32 12, ; uint32_t module_index
		i32 u0x02000062, ; uint32_t type_token_id
		i32 646; uint32_t java_name_index
	}, ; 1049
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000182, ; uint32_t type_token_id
		i32 121; uint32_t java_name_index
	}, ; 1050
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x02000094, ; uint32_t type_token_id
		i32 749; uint32_t java_name_index
	}, ; 1051
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002b8, ; uint32_t type_token_id
		i32 261; uint32_t java_name_index
	}, ; 1052
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 186; uint32_t java_name_index
	}, ; 1053
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 148; uint32_t java_name_index
	}, ; 1054
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 204; uint32_t java_name_index
	}, ; 1055
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 202; uint32_t java_name_index
	}, ; 1056
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x02000173, ; uint32_t type_token_id
		i32 112; uint32_t java_name_index
	}, ; 1057
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x02000166, ; uint32_t type_token_id
		i32 1034; uint32_t java_name_index
	}, ; 1058
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 438; uint32_t java_name_index
	}, ; 1059
	%struct.TypeMapJava {
		i32 24, ; uint32_t module_index
		i32 u0x02000030, ; uint32_t type_token_id
		i32 959; uint32_t java_name_index
	}, ; 1060
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 521; uint32_t java_name_index
	}, ; 1061
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x020002f0, ; uint32_t type_token_id
		i32 293; uint32_t java_name_index
	}, ; 1062
	%struct.TypeMapJava {
		i32 10, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 558; uint32_t java_name_index
	}, ; 1063
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x0200009a, ; uint32_t type_token_id
		i32 752; uint32_t java_name_index
	}, ; 1064
	%struct.TypeMapJava {
		i32 19, ; uint32_t module_index
		i32 u0x0200035c, ; uint32_t type_token_id
		i32 778; uint32_t java_name_index
	}, ; 1065
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 413; uint32_t java_name_index
	}, ; 1066
	%struct.TypeMapJava {
		i32 26, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 56; uint32_t java_name_index
	}, ; 1067
	%struct.TypeMapJava {
		i32 6, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 528; uint32_t java_name_index
	}, ; 1068
	%struct.TypeMapJava {
		i32 31, ; uint32_t module_index
		i32 u0x0200011f, ; uint32_t type_token_id
		i32 996; uint32_t java_name_index
	}, ; 1069
	%struct.TypeMapJava {
		i32 17, ; uint32_t module_index
		i32 u0x020000a0, ; uint32_t type_token_id
		i32 758; uint32_t java_name_index
	}, ; 1070
	%struct.TypeMapJava {
		i32 9, ; uint32_t module_index
		i32 u0x02000012, ; uint32_t type_token_id
		i32 551; uint32_t java_name_index
	}, ; 1071
	%struct.TypeMapJava {
		i32 11, ; uint32_t module_index
		i32 u0x00000000, ; uint32_t type_token_id
		i32 612; uint32_t java_name_index
	} ; 1072
], align 4

; Java type names
@java_type_names = dso_local local_unnamed_addr constant [1073 x ptr] [
	ptr @.str.0, ; 0
	ptr @.str.1, ; 1
	ptr @.str.2, ; 2
	ptr @.str.3, ; 3
	ptr @.str.4, ; 4
	ptr @.str.5, ; 5
	ptr @.str.6, ; 6
	ptr @.str.7, ; 7
	ptr @.str.8, ; 8
	ptr @.str.9, ; 9
	ptr @.str.10, ; 10
	ptr @.str.11, ; 11
	ptr @.str.12, ; 12
	ptr @.str.13, ; 13
	ptr @.str.14, ; 14
	ptr @.str.15, ; 15
	ptr @.str.16, ; 16
	ptr @.str.17, ; 17
	ptr @.str.18, ; 18
	ptr @.str.19, ; 19
	ptr @.str.20, ; 20
	ptr @.str.21, ; 21
	ptr @.str.22, ; 22
	ptr @.str.23, ; 23
	ptr @.str.24, ; 24
	ptr @.str.25, ; 25
	ptr @.str.26, ; 26
	ptr @.str.27, ; 27
	ptr @.str.28, ; 28
	ptr @.str.29, ; 29
	ptr @.str.30, ; 30
	ptr @.str.31, ; 31
	ptr @.str.32, ; 32
	ptr @.str.33, ; 33
	ptr @.str.34, ; 34
	ptr @.str.35, ; 35
	ptr @.str.36, ; 36
	ptr @.str.37, ; 37
	ptr @.str.38, ; 38
	ptr @.str.39, ; 39
	ptr @.str.40, ; 40
	ptr @.str.41, ; 41
	ptr @.str.42, ; 42
	ptr @.str.43, ; 43
	ptr @.str.44, ; 44
	ptr @.str.45, ; 45
	ptr @.str.46, ; 46
	ptr @.str.47, ; 47
	ptr @.str.48, ; 48
	ptr @.str.49, ; 49
	ptr @.str.50, ; 50
	ptr @.str.51, ; 51
	ptr @.str.52, ; 52
	ptr @.str.53, ; 53
	ptr @.str.54, ; 54
	ptr @.str.55, ; 55
	ptr @.str.56, ; 56
	ptr @.str.57, ; 57
	ptr @.str.58, ; 58
	ptr @.str.59, ; 59
	ptr @.str.60, ; 60
	ptr @.str.61, ; 61
	ptr @.str.62, ; 62
	ptr @.str.63, ; 63
	ptr @.str.64, ; 64
	ptr @.str.65, ; 65
	ptr @.str.66, ; 66
	ptr @.str.67, ; 67
	ptr @.str.68, ; 68
	ptr @.str.69, ; 69
	ptr @.str.70, ; 70
	ptr @.str.71, ; 71
	ptr @.str.72, ; 72
	ptr @.str.73, ; 73
	ptr @.str.74, ; 74
	ptr @.str.75, ; 75
	ptr @.str.76, ; 76
	ptr @.str.77, ; 77
	ptr @.str.78, ; 78
	ptr @.str.79, ; 79
	ptr @.str.80, ; 80
	ptr @.str.81, ; 81
	ptr @.str.82, ; 82
	ptr @.str.83, ; 83
	ptr @.str.84, ; 84
	ptr @.str.85, ; 85
	ptr @.str.86, ; 86
	ptr @.str.87, ; 87
	ptr @.str.88, ; 88
	ptr @.str.89, ; 89
	ptr @.str.90, ; 90
	ptr @.str.91, ; 91
	ptr @.str.92, ; 92
	ptr @.str.93, ; 93
	ptr @.str.94, ; 94
	ptr @.str.95, ; 95
	ptr @.str.96, ; 96
	ptr @.str.97, ; 97
	ptr @.str.98, ; 98
	ptr @.str.99, ; 99
	ptr @.str.100, ; 100
	ptr @.str.101, ; 101
	ptr @.str.102, ; 102
	ptr @.str.103, ; 103
	ptr @.str.104, ; 104
	ptr @.str.105, ; 105
	ptr @.str.106, ; 106
	ptr @.str.107, ; 107
	ptr @.str.108, ; 108
	ptr @.str.109, ; 109
	ptr @.str.110, ; 110
	ptr @.str.111, ; 111
	ptr @.str.112, ; 112
	ptr @.str.113, ; 113
	ptr @.str.114, ; 114
	ptr @.str.115, ; 115
	ptr @.str.116, ; 116
	ptr @.str.117, ; 117
	ptr @.str.118, ; 118
	ptr @.str.119, ; 119
	ptr @.str.120, ; 120
	ptr @.str.121, ; 121
	ptr @.str.122, ; 122
	ptr @.str.123, ; 123
	ptr @.str.124, ; 124
	ptr @.str.125, ; 125
	ptr @.str.126, ; 126
	ptr @.str.127, ; 127
	ptr @.str.128, ; 128
	ptr @.str.129, ; 129
	ptr @.str.130, ; 130
	ptr @.str.131, ; 131
	ptr @.str.132, ; 132
	ptr @.str.133, ; 133
	ptr @.str.134, ; 134
	ptr @.str.135, ; 135
	ptr @.str.136, ; 136
	ptr @.str.137, ; 137
	ptr @.str.138, ; 138
	ptr @.str.139, ; 139
	ptr @.str.140, ; 140
	ptr @.str.141, ; 141
	ptr @.str.142, ; 142
	ptr @.str.143, ; 143
	ptr @.str.144, ; 144
	ptr @.str.145, ; 145
	ptr @.str.146, ; 146
	ptr @.str.147, ; 147
	ptr @.str.148, ; 148
	ptr @.str.149, ; 149
	ptr @.str.150, ; 150
	ptr @.str.151, ; 151
	ptr @.str.152, ; 152
	ptr @.str.153, ; 153
	ptr @.str.154, ; 154
	ptr @.str.155, ; 155
	ptr @.str.156, ; 156
	ptr @.str.157, ; 157
	ptr @.str.158, ; 158
	ptr @.str.159, ; 159
	ptr @.str.160, ; 160
	ptr @.str.161, ; 161
	ptr @.str.162, ; 162
	ptr @.str.163, ; 163
	ptr @.str.164, ; 164
	ptr @.str.165, ; 165
	ptr @.str.166, ; 166
	ptr @.str.167, ; 167
	ptr @.str.168, ; 168
	ptr @.str.169, ; 169
	ptr @.str.170, ; 170
	ptr @.str.171, ; 171
	ptr @.str.172, ; 172
	ptr @.str.173, ; 173
	ptr @.str.174, ; 174
	ptr @.str.175, ; 175
	ptr @.str.176, ; 176
	ptr @.str.177, ; 177
	ptr @.str.178, ; 178
	ptr @.str.179, ; 179
	ptr @.str.180, ; 180
	ptr @.str.181, ; 181
	ptr @.str.182, ; 182
	ptr @.str.183, ; 183
	ptr @.str.184, ; 184
	ptr @.str.185, ; 185
	ptr @.str.186, ; 186
	ptr @.str.187, ; 187
	ptr @.str.188, ; 188
	ptr @.str.189, ; 189
	ptr @.str.190, ; 190
	ptr @.str.191, ; 191
	ptr @.str.192, ; 192
	ptr @.str.193, ; 193
	ptr @.str.194, ; 194
	ptr @.str.195, ; 195
	ptr @.str.196, ; 196
	ptr @.str.197, ; 197
	ptr @.str.198, ; 198
	ptr @.str.199, ; 199
	ptr @.str.200, ; 200
	ptr @.str.201, ; 201
	ptr @.str.202, ; 202
	ptr @.str.203, ; 203
	ptr @.str.204, ; 204
	ptr @.str.205, ; 205
	ptr @.str.206, ; 206
	ptr @.str.207, ; 207
	ptr @.str.208, ; 208
	ptr @.str.209, ; 209
	ptr @.str.210, ; 210
	ptr @.str.211, ; 211
	ptr @.str.212, ; 212
	ptr @.str.213, ; 213
	ptr @.str.214, ; 214
	ptr @.str.215, ; 215
	ptr @.str.216, ; 216
	ptr @.str.217, ; 217
	ptr @.str.218, ; 218
	ptr @.str.219, ; 219
	ptr @.str.220, ; 220
	ptr @.str.221, ; 221
	ptr @.str.222, ; 222
	ptr @.str.223, ; 223
	ptr @.str.224, ; 224
	ptr @.str.225, ; 225
	ptr @.str.226, ; 226
	ptr @.str.227, ; 227
	ptr @.str.228, ; 228
	ptr @.str.229, ; 229
	ptr @.str.230, ; 230
	ptr @.str.231, ; 231
	ptr @.str.232, ; 232
	ptr @.str.233, ; 233
	ptr @.str.234, ; 234
	ptr @.str.235, ; 235
	ptr @.str.236, ; 236
	ptr @.str.237, ; 237
	ptr @.str.238, ; 238
	ptr @.str.239, ; 239
	ptr @.str.240, ; 240
	ptr @.str.241, ; 241
	ptr @.str.242, ; 242
	ptr @.str.243, ; 243
	ptr @.str.244, ; 244
	ptr @.str.245, ; 245
	ptr @.str.246, ; 246
	ptr @.str.247, ; 247
	ptr @.str.248, ; 248
	ptr @.str.249, ; 249
	ptr @.str.250, ; 250
	ptr @.str.251, ; 251
	ptr @.str.252, ; 252
	ptr @.str.253, ; 253
	ptr @.str.254, ; 254
	ptr @.str.255, ; 255
	ptr @.str.256, ; 256
	ptr @.str.257, ; 257
	ptr @.str.258, ; 258
	ptr @.str.259, ; 259
	ptr @.str.260, ; 260
	ptr @.str.261, ; 261
	ptr @.str.262, ; 262
	ptr @.str.263, ; 263
	ptr @.str.264, ; 264
	ptr @.str.265, ; 265
	ptr @.str.266, ; 266
	ptr @.str.267, ; 267
	ptr @.str.268, ; 268
	ptr @.str.269, ; 269
	ptr @.str.270, ; 270
	ptr @.str.271, ; 271
	ptr @.str.272, ; 272
	ptr @.str.273, ; 273
	ptr @.str.274, ; 274
	ptr @.str.275, ; 275
	ptr @.str.276, ; 276
	ptr @.str.277, ; 277
	ptr @.str.278, ; 278
	ptr @.str.279, ; 279
	ptr @.str.280, ; 280
	ptr @.str.281, ; 281
	ptr @.str.282, ; 282
	ptr @.str.283, ; 283
	ptr @.str.284, ; 284
	ptr @.str.285, ; 285
	ptr @.str.286, ; 286
	ptr @.str.287, ; 287
	ptr @.str.288, ; 288
	ptr @.str.289, ; 289
	ptr @.str.290, ; 290
	ptr @.str.291, ; 291
	ptr @.str.292, ; 292
	ptr @.str.293, ; 293
	ptr @.str.294, ; 294
	ptr @.str.295, ; 295
	ptr @.str.296, ; 296
	ptr @.str.297, ; 297
	ptr @.str.298, ; 298
	ptr @.str.299, ; 299
	ptr @.str.300, ; 300
	ptr @.str.301, ; 301
	ptr @.str.302, ; 302
	ptr @.str.303, ; 303
	ptr @.str.304, ; 304
	ptr @.str.305, ; 305
	ptr @.str.306, ; 306
	ptr @.str.307, ; 307
	ptr @.str.308, ; 308
	ptr @.str.309, ; 309
	ptr @.str.310, ; 310
	ptr @.str.311, ; 311
	ptr @.str.312, ; 312
	ptr @.str.313, ; 313
	ptr @.str.314, ; 314
	ptr @.str.315, ; 315
	ptr @.str.316, ; 316
	ptr @.str.317, ; 317
	ptr @.str.318, ; 318
	ptr @.str.319, ; 319
	ptr @.str.320, ; 320
	ptr @.str.321, ; 321
	ptr @.str.322, ; 322
	ptr @.str.323, ; 323
	ptr @.str.324, ; 324
	ptr @.str.325, ; 325
	ptr @.str.326, ; 326
	ptr @.str.327, ; 327
	ptr @.str.328, ; 328
	ptr @.str.329, ; 329
	ptr @.str.330, ; 330
	ptr @.str.331, ; 331
	ptr @.str.332, ; 332
	ptr @.str.333, ; 333
	ptr @.str.334, ; 334
	ptr @.str.335, ; 335
	ptr @.str.336, ; 336
	ptr @.str.337, ; 337
	ptr @.str.338, ; 338
	ptr @.str.339, ; 339
	ptr @.str.340, ; 340
	ptr @.str.341, ; 341
	ptr @.str.342, ; 342
	ptr @.str.343, ; 343
	ptr @.str.344, ; 344
	ptr @.str.345, ; 345
	ptr @.str.346, ; 346
	ptr @.str.347, ; 347
	ptr @.str.348, ; 348
	ptr @.str.349, ; 349
	ptr @.str.350, ; 350
	ptr @.str.351, ; 351
	ptr @.str.352, ; 352
	ptr @.str.353, ; 353
	ptr @.str.354, ; 354
	ptr @.str.355, ; 355
	ptr @.str.356, ; 356
	ptr @.str.357, ; 357
	ptr @.str.358, ; 358
	ptr @.str.359, ; 359
	ptr @.str.360, ; 360
	ptr @.str.361, ; 361
	ptr @.str.362, ; 362
	ptr @.str.363, ; 363
	ptr @.str.364, ; 364
	ptr @.str.365, ; 365
	ptr @.str.366, ; 366
	ptr @.str.367, ; 367
	ptr @.str.368, ; 368
	ptr @.str.369, ; 369
	ptr @.str.370, ; 370
	ptr @.str.371, ; 371
	ptr @.str.372, ; 372
	ptr @.str.373, ; 373
	ptr @.str.374, ; 374
	ptr @.str.375, ; 375
	ptr @.str.376, ; 376
	ptr @.str.377, ; 377
	ptr @.str.378, ; 378
	ptr @.str.379, ; 379
	ptr @.str.380, ; 380
	ptr @.str.381, ; 381
	ptr @.str.382, ; 382
	ptr @.str.383, ; 383
	ptr @.str.384, ; 384
	ptr @.str.385, ; 385
	ptr @.str.386, ; 386
	ptr @.str.387, ; 387
	ptr @.str.388, ; 388
	ptr @.str.389, ; 389
	ptr @.str.390, ; 390
	ptr @.str.391, ; 391
	ptr @.str.392, ; 392
	ptr @.str.393, ; 393
	ptr @.str.394, ; 394
	ptr @.str.395, ; 395
	ptr @.str.396, ; 396
	ptr @.str.397, ; 397
	ptr @.str.398, ; 398
	ptr @.str.399, ; 399
	ptr @.str.400, ; 400
	ptr @.str.401, ; 401
	ptr @.str.402, ; 402
	ptr @.str.403, ; 403
	ptr @.str.404, ; 404
	ptr @.str.405, ; 405
	ptr @.str.406, ; 406
	ptr @.str.407, ; 407
	ptr @.str.408, ; 408
	ptr @.str.409, ; 409
	ptr @.str.410, ; 410
	ptr @.str.411, ; 411
	ptr @.str.412, ; 412
	ptr @.str.413, ; 413
	ptr @.str.414, ; 414
	ptr @.str.415, ; 415
	ptr @.str.416, ; 416
	ptr @.str.417, ; 417
	ptr @.str.418, ; 418
	ptr @.str.419, ; 419
	ptr @.str.420, ; 420
	ptr @.str.421, ; 421
	ptr @.str.422, ; 422
	ptr @.str.423, ; 423
	ptr @.str.424, ; 424
	ptr @.str.425, ; 425
	ptr @.str.426, ; 426
	ptr @.str.427, ; 427
	ptr @.str.428, ; 428
	ptr @.str.429, ; 429
	ptr @.str.430, ; 430
	ptr @.str.431, ; 431
	ptr @.str.432, ; 432
	ptr @.str.433, ; 433
	ptr @.str.434, ; 434
	ptr @.str.435, ; 435
	ptr @.str.436, ; 436
	ptr @.str.437, ; 437
	ptr @.str.438, ; 438
	ptr @.str.439, ; 439
	ptr @.str.440, ; 440
	ptr @.str.441, ; 441
	ptr @.str.442, ; 442
	ptr @.str.443, ; 443
	ptr @.str.444, ; 444
	ptr @.str.445, ; 445
	ptr @.str.446, ; 446
	ptr @.str.447, ; 447
	ptr @.str.448, ; 448
	ptr @.str.449, ; 449
	ptr @.str.450, ; 450
	ptr @.str.451, ; 451
	ptr @.str.452, ; 452
	ptr @.str.453, ; 453
	ptr @.str.454, ; 454
	ptr @.str.455, ; 455
	ptr @.str.456, ; 456
	ptr @.str.457, ; 457
	ptr @.str.458, ; 458
	ptr @.str.459, ; 459
	ptr @.str.460, ; 460
	ptr @.str.461, ; 461
	ptr @.str.462, ; 462
	ptr @.str.463, ; 463
	ptr @.str.464, ; 464
	ptr @.str.465, ; 465
	ptr @.str.466, ; 466
	ptr @.str.467, ; 467
	ptr @.str.468, ; 468
	ptr @.str.469, ; 469
	ptr @.str.470, ; 470
	ptr @.str.471, ; 471
	ptr @.str.472, ; 472
	ptr @.str.473, ; 473
	ptr @.str.474, ; 474
	ptr @.str.475, ; 475
	ptr @.str.476, ; 476
	ptr @.str.477, ; 477
	ptr @.str.478, ; 478
	ptr @.str.479, ; 479
	ptr @.str.480, ; 480
	ptr @.str.481, ; 481
	ptr @.str.482, ; 482
	ptr @.str.483, ; 483
	ptr @.str.484, ; 484
	ptr @.str.485, ; 485
	ptr @.str.486, ; 486
	ptr @.str.487, ; 487
	ptr @.str.488, ; 488
	ptr @.str.489, ; 489
	ptr @.str.490, ; 490
	ptr @.str.491, ; 491
	ptr @.str.492, ; 492
	ptr @.str.493, ; 493
	ptr @.str.494, ; 494
	ptr @.str.495, ; 495
	ptr @.str.496, ; 496
	ptr @.str.497, ; 497
	ptr @.str.498, ; 498
	ptr @.str.499, ; 499
	ptr @.str.500, ; 500
	ptr @.str.501, ; 501
	ptr @.str.502, ; 502
	ptr @.str.503, ; 503
	ptr @.str.504, ; 504
	ptr @.str.505, ; 505
	ptr @.str.506, ; 506
	ptr @.str.507, ; 507
	ptr @.str.508, ; 508
	ptr @.str.509, ; 509
	ptr @.str.510, ; 510
	ptr @.str.511, ; 511
	ptr @.str.512, ; 512
	ptr @.str.513, ; 513
	ptr @.str.514, ; 514
	ptr @.str.515, ; 515
	ptr @.str.516, ; 516
	ptr @.str.517, ; 517
	ptr @.str.518, ; 518
	ptr @.str.519, ; 519
	ptr @.str.520, ; 520
	ptr @.str.521, ; 521
	ptr @.str.522, ; 522
	ptr @.str.523, ; 523
	ptr @.str.524, ; 524
	ptr @.str.525, ; 525
	ptr @.str.526, ; 526
	ptr @.str.527, ; 527
	ptr @.str.528, ; 528
	ptr @.str.529, ; 529
	ptr @.str.530, ; 530
	ptr @.str.531, ; 531
	ptr @.str.532, ; 532
	ptr @.str.533, ; 533
	ptr @.str.534, ; 534
	ptr @.str.535, ; 535
	ptr @.str.536, ; 536
	ptr @.str.537, ; 537
	ptr @.str.538, ; 538
	ptr @.str.539, ; 539
	ptr @.str.540, ; 540
	ptr @.str.541, ; 541
	ptr @.str.542, ; 542
	ptr @.str.543, ; 543
	ptr @.str.544, ; 544
	ptr @.str.545, ; 545
	ptr @.str.546, ; 546
	ptr @.str.547, ; 547
	ptr @.str.548, ; 548
	ptr @.str.549, ; 549
	ptr @.str.550, ; 550
	ptr @.str.551, ; 551
	ptr @.str.552, ; 552
	ptr @.str.553, ; 553
	ptr @.str.554, ; 554
	ptr @.str.555, ; 555
	ptr @.str.556, ; 556
	ptr @.str.557, ; 557
	ptr @.str.558, ; 558
	ptr @.str.559, ; 559
	ptr @.str.560, ; 560
	ptr @.str.561, ; 561
	ptr @.str.562, ; 562
	ptr @.str.563, ; 563
	ptr @.str.564, ; 564
	ptr @.str.565, ; 565
	ptr @.str.566, ; 566
	ptr @.str.567, ; 567
	ptr @.str.568, ; 568
	ptr @.str.569, ; 569
	ptr @.str.570, ; 570
	ptr @.str.571, ; 571
	ptr @.str.572, ; 572
	ptr @.str.573, ; 573
	ptr @.str.574, ; 574
	ptr @.str.575, ; 575
	ptr @.str.576, ; 576
	ptr @.str.577, ; 577
	ptr @.str.578, ; 578
	ptr @.str.579, ; 579
	ptr @.str.580, ; 580
	ptr @.str.581, ; 581
	ptr @.str.582, ; 582
	ptr @.str.583, ; 583
	ptr @.str.584, ; 584
	ptr @.str.585, ; 585
	ptr @.str.586, ; 586
	ptr @.str.587, ; 587
	ptr @.str.588, ; 588
	ptr @.str.589, ; 589
	ptr @.str.590, ; 590
	ptr @.str.591, ; 591
	ptr @.str.592, ; 592
	ptr @.str.593, ; 593
	ptr @.str.594, ; 594
	ptr @.str.595, ; 595
	ptr @.str.596, ; 596
	ptr @.str.597, ; 597
	ptr @.str.598, ; 598
	ptr @.str.599, ; 599
	ptr @.str.600, ; 600
	ptr @.str.601, ; 601
	ptr @.str.602, ; 602
	ptr @.str.603, ; 603
	ptr @.str.604, ; 604
	ptr @.str.605, ; 605
	ptr @.str.606, ; 606
	ptr @.str.607, ; 607
	ptr @.str.608, ; 608
	ptr @.str.609, ; 609
	ptr @.str.610, ; 610
	ptr @.str.611, ; 611
	ptr @.str.612, ; 612
	ptr @.str.613, ; 613
	ptr @.str.614, ; 614
	ptr @.str.615, ; 615
	ptr @.str.616, ; 616
	ptr @.str.617, ; 617
	ptr @.str.618, ; 618
	ptr @.str.619, ; 619
	ptr @.str.620, ; 620
	ptr @.str.621, ; 621
	ptr @.str.622, ; 622
	ptr @.str.623, ; 623
	ptr @.str.624, ; 624
	ptr @.str.625, ; 625
	ptr @.str.626, ; 626
	ptr @.str.627, ; 627
	ptr @.str.628, ; 628
	ptr @.str.629, ; 629
	ptr @.str.630, ; 630
	ptr @.str.631, ; 631
	ptr @.str.632, ; 632
	ptr @.str.633, ; 633
	ptr @.str.634, ; 634
	ptr @.str.635, ; 635
	ptr @.str.636, ; 636
	ptr @.str.637, ; 637
	ptr @.str.638, ; 638
	ptr @.str.639, ; 639
	ptr @.str.640, ; 640
	ptr @.str.641, ; 641
	ptr @.str.642, ; 642
	ptr @.str.643, ; 643
	ptr @.str.644, ; 644
	ptr @.str.645, ; 645
	ptr @.str.646, ; 646
	ptr @.str.647, ; 647
	ptr @.str.648, ; 648
	ptr @.str.649, ; 649
	ptr @.str.650, ; 650
	ptr @.str.651, ; 651
	ptr @.str.652, ; 652
	ptr @.str.653, ; 653
	ptr @.str.654, ; 654
	ptr @.str.655, ; 655
	ptr @.str.656, ; 656
	ptr @.str.657, ; 657
	ptr @.str.658, ; 658
	ptr @.str.659, ; 659
	ptr @.str.660, ; 660
	ptr @.str.661, ; 661
	ptr @.str.662, ; 662
	ptr @.str.663, ; 663
	ptr @.str.664, ; 664
	ptr @.str.665, ; 665
	ptr @.str.666, ; 666
	ptr @.str.667, ; 667
	ptr @.str.668, ; 668
	ptr @.str.669, ; 669
	ptr @.str.670, ; 670
	ptr @.str.671, ; 671
	ptr @.str.672, ; 672
	ptr @.str.673, ; 673
	ptr @.str.674, ; 674
	ptr @.str.675, ; 675
	ptr @.str.676, ; 676
	ptr @.str.677, ; 677
	ptr @.str.678, ; 678
	ptr @.str.679, ; 679
	ptr @.str.680, ; 680
	ptr @.str.681, ; 681
	ptr @.str.682, ; 682
	ptr @.str.683, ; 683
	ptr @.str.684, ; 684
	ptr @.str.685, ; 685
	ptr @.str.686, ; 686
	ptr @.str.687, ; 687
	ptr @.str.688, ; 688
	ptr @.str.689, ; 689
	ptr @.str.690, ; 690
	ptr @.str.691, ; 691
	ptr @.str.692, ; 692
	ptr @.str.693, ; 693
	ptr @.str.694, ; 694
	ptr @.str.695, ; 695
	ptr @.str.696, ; 696
	ptr @.str.697, ; 697
	ptr @.str.698, ; 698
	ptr @.str.699, ; 699
	ptr @.str.700, ; 700
	ptr @.str.701, ; 701
	ptr @.str.702, ; 702
	ptr @.str.703, ; 703
	ptr @.str.704, ; 704
	ptr @.str.705, ; 705
	ptr @.str.706, ; 706
	ptr @.str.707, ; 707
	ptr @.str.708, ; 708
	ptr @.str.709, ; 709
	ptr @.str.710, ; 710
	ptr @.str.711, ; 711
	ptr @.str.712, ; 712
	ptr @.str.713, ; 713
	ptr @.str.714, ; 714
	ptr @.str.715, ; 715
	ptr @.str.716, ; 716
	ptr @.str.717, ; 717
	ptr @.str.718, ; 718
	ptr @.str.719, ; 719
	ptr @.str.720, ; 720
	ptr @.str.721, ; 721
	ptr @.str.722, ; 722
	ptr @.str.723, ; 723
	ptr @.str.724, ; 724
	ptr @.str.725, ; 725
	ptr @.str.726, ; 726
	ptr @.str.727, ; 727
	ptr @.str.728, ; 728
	ptr @.str.729, ; 729
	ptr @.str.730, ; 730
	ptr @.str.731, ; 731
	ptr @.str.732, ; 732
	ptr @.str.733, ; 733
	ptr @.str.734, ; 734
	ptr @.str.735, ; 735
	ptr @.str.736, ; 736
	ptr @.str.737, ; 737
	ptr @.str.738, ; 738
	ptr @.str.739, ; 739
	ptr @.str.740, ; 740
	ptr @.str.741, ; 741
	ptr @.str.742, ; 742
	ptr @.str.743, ; 743
	ptr @.str.744, ; 744
	ptr @.str.745, ; 745
	ptr @.str.746, ; 746
	ptr @.str.747, ; 747
	ptr @.str.748, ; 748
	ptr @.str.749, ; 749
	ptr @.str.750, ; 750
	ptr @.str.751, ; 751
	ptr @.str.752, ; 752
	ptr @.str.753, ; 753
	ptr @.str.754, ; 754
	ptr @.str.755, ; 755
	ptr @.str.756, ; 756
	ptr @.str.757, ; 757
	ptr @.str.758, ; 758
	ptr @.str.759, ; 759
	ptr @.str.760, ; 760
	ptr @.str.761, ; 761
	ptr @.str.762, ; 762
	ptr @.str.763, ; 763
	ptr @.str.764, ; 764
	ptr @.str.765, ; 765
	ptr @.str.766, ; 766
	ptr @.str.767, ; 767
	ptr @.str.768, ; 768
	ptr @.str.769, ; 769
	ptr @.str.770, ; 770
	ptr @.str.771, ; 771
	ptr @.str.772, ; 772
	ptr @.str.773, ; 773
	ptr @.str.774, ; 774
	ptr @.str.775, ; 775
	ptr @.str.776, ; 776
	ptr @.str.777, ; 777
	ptr @.str.778, ; 778
	ptr @.str.779, ; 779
	ptr @.str.780, ; 780
	ptr @.str.781, ; 781
	ptr @.str.782, ; 782
	ptr @.str.783, ; 783
	ptr @.str.784, ; 784
	ptr @.str.785, ; 785
	ptr @.str.786, ; 786
	ptr @.str.787, ; 787
	ptr @.str.788, ; 788
	ptr @.str.789, ; 789
	ptr @.str.790, ; 790
	ptr @.str.791, ; 791
	ptr @.str.792, ; 792
	ptr @.str.793, ; 793
	ptr @.str.794, ; 794
	ptr @.str.795, ; 795
	ptr @.str.796, ; 796
	ptr @.str.797, ; 797
	ptr @.str.798, ; 798
	ptr @.str.799, ; 799
	ptr @.str.800, ; 800
	ptr @.str.801, ; 801
	ptr @.str.802, ; 802
	ptr @.str.803, ; 803
	ptr @.str.804, ; 804
	ptr @.str.805, ; 805
	ptr @.str.806, ; 806
	ptr @.str.807, ; 807
	ptr @.str.808, ; 808
	ptr @.str.809, ; 809
	ptr @.str.810, ; 810
	ptr @.str.811, ; 811
	ptr @.str.812, ; 812
	ptr @.str.813, ; 813
	ptr @.str.814, ; 814
	ptr @.str.815, ; 815
	ptr @.str.816, ; 816
	ptr @.str.817, ; 817
	ptr @.str.818, ; 818
	ptr @.str.819, ; 819
	ptr @.str.820, ; 820
	ptr @.str.821, ; 821
	ptr @.str.822, ; 822
	ptr @.str.823, ; 823
	ptr @.str.824, ; 824
	ptr @.str.825, ; 825
	ptr @.str.826, ; 826
	ptr @.str.827, ; 827
	ptr @.str.828, ; 828
	ptr @.str.829, ; 829
	ptr @.str.830, ; 830
	ptr @.str.831, ; 831
	ptr @.str.832, ; 832
	ptr @.str.833, ; 833
	ptr @.str.834, ; 834
	ptr @.str.835, ; 835
	ptr @.str.836, ; 836
	ptr @.str.837, ; 837
	ptr @.str.838, ; 838
	ptr @.str.839, ; 839
	ptr @.str.840, ; 840
	ptr @.str.841, ; 841
	ptr @.str.842, ; 842
	ptr @.str.843, ; 843
	ptr @.str.844, ; 844
	ptr @.str.845, ; 845
	ptr @.str.846, ; 846
	ptr @.str.847, ; 847
	ptr @.str.848, ; 848
	ptr @.str.849, ; 849
	ptr @.str.850, ; 850
	ptr @.str.851, ; 851
	ptr @.str.852, ; 852
	ptr @.str.853, ; 853
	ptr @.str.854, ; 854
	ptr @.str.855, ; 855
	ptr @.str.856, ; 856
	ptr @.str.857, ; 857
	ptr @.str.858, ; 858
	ptr @.str.859, ; 859
	ptr @.str.860, ; 860
	ptr @.str.861, ; 861
	ptr @.str.862, ; 862
	ptr @.str.863, ; 863
	ptr @.str.864, ; 864
	ptr @.str.865, ; 865
	ptr @.str.866, ; 866
	ptr @.str.867, ; 867
	ptr @.str.868, ; 868
	ptr @.str.869, ; 869
	ptr @.str.870, ; 870
	ptr @.str.871, ; 871
	ptr @.str.872, ; 872
	ptr @.str.873, ; 873
	ptr @.str.874, ; 874
	ptr @.str.875, ; 875
	ptr @.str.876, ; 876
	ptr @.str.877, ; 877
	ptr @.str.878, ; 878
	ptr @.str.879, ; 879
	ptr @.str.880, ; 880
	ptr @.str.881, ; 881
	ptr @.str.882, ; 882
	ptr @.str.883, ; 883
	ptr @.str.884, ; 884
	ptr @.str.885, ; 885
	ptr @.str.886, ; 886
	ptr @.str.887, ; 887
	ptr @.str.888, ; 888
	ptr @.str.889, ; 889
	ptr @.str.890, ; 890
	ptr @.str.891, ; 891
	ptr @.str.892, ; 892
	ptr @.str.893, ; 893
	ptr @.str.894, ; 894
	ptr @.str.895, ; 895
	ptr @.str.896, ; 896
	ptr @.str.897, ; 897
	ptr @.str.898, ; 898
	ptr @.str.899, ; 899
	ptr @.str.900, ; 900
	ptr @.str.901, ; 901
	ptr @.str.902, ; 902
	ptr @.str.903, ; 903
	ptr @.str.904, ; 904
	ptr @.str.905, ; 905
	ptr @.str.906, ; 906
	ptr @.str.907, ; 907
	ptr @.str.908, ; 908
	ptr @.str.909, ; 909
	ptr @.str.910, ; 910
	ptr @.str.911, ; 911
	ptr @.str.912, ; 912
	ptr @.str.913, ; 913
	ptr @.str.914, ; 914
	ptr @.str.915, ; 915
	ptr @.str.916, ; 916
	ptr @.str.917, ; 917
	ptr @.str.918, ; 918
	ptr @.str.919, ; 919
	ptr @.str.920, ; 920
	ptr @.str.921, ; 921
	ptr @.str.922, ; 922
	ptr @.str.923, ; 923
	ptr @.str.924, ; 924
	ptr @.str.925, ; 925
	ptr @.str.926, ; 926
	ptr @.str.927, ; 927
	ptr @.str.928, ; 928
	ptr @.str.929, ; 929
	ptr @.str.930, ; 930
	ptr @.str.931, ; 931
	ptr @.str.932, ; 932
	ptr @.str.933, ; 933
	ptr @.str.934, ; 934
	ptr @.str.935, ; 935
	ptr @.str.936, ; 936
	ptr @.str.937, ; 937
	ptr @.str.938, ; 938
	ptr @.str.939, ; 939
	ptr @.str.940, ; 940
	ptr @.str.941, ; 941
	ptr @.str.942, ; 942
	ptr @.str.943, ; 943
	ptr @.str.944, ; 944
	ptr @.str.945, ; 945
	ptr @.str.946, ; 946
	ptr @.str.947, ; 947
	ptr @.str.948, ; 948
	ptr @.str.949, ; 949
	ptr @.str.950, ; 950
	ptr @.str.951, ; 951
	ptr @.str.952, ; 952
	ptr @.str.953, ; 953
	ptr @.str.954, ; 954
	ptr @.str.955, ; 955
	ptr @.str.956, ; 956
	ptr @.str.957, ; 957
	ptr @.str.958, ; 958
	ptr @.str.959, ; 959
	ptr @.str.960, ; 960
	ptr @.str.961, ; 961
	ptr @.str.962, ; 962
	ptr @.str.963, ; 963
	ptr @.str.964, ; 964
	ptr @.str.965, ; 965
	ptr @.str.966, ; 966
	ptr @.str.967, ; 967
	ptr @.str.968, ; 968
	ptr @.str.969, ; 969
	ptr @.str.970, ; 970
	ptr @.str.971, ; 971
	ptr @.str.972, ; 972
	ptr @.str.973, ; 973
	ptr @.str.974, ; 974
	ptr @.str.975, ; 975
	ptr @.str.976, ; 976
	ptr @.str.977, ; 977
	ptr @.str.978, ; 978
	ptr @.str.979, ; 979
	ptr @.str.980, ; 980
	ptr @.str.981, ; 981
	ptr @.str.982, ; 982
	ptr @.str.983, ; 983
	ptr @.str.984, ; 984
	ptr @.str.985, ; 985
	ptr @.str.986, ; 986
	ptr @.str.987, ; 987
	ptr @.str.988, ; 988
	ptr @.str.989, ; 989
	ptr @.str.990, ; 990
	ptr @.str.991, ; 991
	ptr @.str.992, ; 992
	ptr @.str.993, ; 993
	ptr @.str.994, ; 994
	ptr @.str.995, ; 995
	ptr @.str.996, ; 996
	ptr @.str.997, ; 997
	ptr @.str.998, ; 998
	ptr @.str.999, ; 999
	ptr @.str.1000, ; 1000
	ptr @.str.1001, ; 1001
	ptr @.str.1002, ; 1002
	ptr @.str.1003, ; 1003
	ptr @.str.1004, ; 1004
	ptr @.str.1005, ; 1005
	ptr @.str.1006, ; 1006
	ptr @.str.1007, ; 1007
	ptr @.str.1008, ; 1008
	ptr @.str.1009, ; 1009
	ptr @.str.1010, ; 1010
	ptr @.str.1011, ; 1011
	ptr @.str.1012, ; 1012
	ptr @.str.1013, ; 1013
	ptr @.str.1014, ; 1014
	ptr @.str.1015, ; 1015
	ptr @.str.1016, ; 1016
	ptr @.str.1017, ; 1017
	ptr @.str.1018, ; 1018
	ptr @.str.1019, ; 1019
	ptr @.str.1020, ; 1020
	ptr @.str.1021, ; 1021
	ptr @.str.1022, ; 1022
	ptr @.str.1023, ; 1023
	ptr @.str.1024, ; 1024
	ptr @.str.1025, ; 1025
	ptr @.str.1026, ; 1026
	ptr @.str.1027, ; 1027
	ptr @.str.1028, ; 1028
	ptr @.str.1029, ; 1029
	ptr @.str.1030, ; 1030
	ptr @.str.1031, ; 1031
	ptr @.str.1032, ; 1032
	ptr @.str.1033, ; 1033
	ptr @.str.1034, ; 1034
	ptr @.str.1035, ; 1035
	ptr @.str.1036, ; 1036
	ptr @.str.1037, ; 1037
	ptr @.str.1038, ; 1038
	ptr @.str.1039, ; 1039
	ptr @.str.1040, ; 1040
	ptr @.str.1041, ; 1041
	ptr @.str.1042, ; 1042
	ptr @.str.1043, ; 1043
	ptr @.str.1044, ; 1044
	ptr @.str.1045, ; 1045
	ptr @.str.1046, ; 1046
	ptr @.str.1047, ; 1047
	ptr @.str.1048, ; 1048
	ptr @.str.1049, ; 1049
	ptr @.str.1050, ; 1050
	ptr @.str.1051, ; 1051
	ptr @.str.1052, ; 1052
	ptr @.str.1053, ; 1053
	ptr @.str.1054, ; 1054
	ptr @.str.1055, ; 1055
	ptr @.str.1056, ; 1056
	ptr @.str.1057, ; 1057
	ptr @.str.1058, ; 1058
	ptr @.str.1059, ; 1059
	ptr @.str.1060, ; 1060
	ptr @.str.1061, ; 1061
	ptr @.str.1062, ; 1062
	ptr @.str.1063, ; 1063
	ptr @.str.1064, ; 1064
	ptr @.str.1065, ; 1065
	ptr @.str.1066, ; 1066
	ptr @.str.1067, ; 1067
	ptr @.str.1068, ; 1068
	ptr @.str.1069, ; 1069
	ptr @.str.1070, ; 1070
	ptr @.str.1071, ; 1071
	ptr @.str.1072 ; 1072
], align 4

; Strings
@.str.0 = private unnamed_addr constant [29 x i8] c"org/xmlpull/v1/XmlPullParser\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"org/xmlpull/v1/XmlPullParserException\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"javax/security/cert/Certificate\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"javax/security/cert/X509Certificate\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"javax/security/auth/Subject\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"javax/net/SocketFactory\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"javax/net/ssl/HttpsURLConnection\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/HostnameVerifier\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/KeyManager\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLSession\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/SSLSessionContext\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"javax/net/ssl/TrustManager\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"javax/net/ssl/KeyManagerFactory\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"javax/net/ssl/SSLContext\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"javax/net/ssl/SSLSocketFactory\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"javax/net/ssl/TrustManagerFactory\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"android/window/BackEvent\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"android/window/InputTransferToken\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"android/window/OnBackInvokedCallback\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"android/window/OnBackInvokedDispatcher\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"android/window/TrustedPresentationThresholds\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"android/webkit/CookieManager\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"android/webkit/ValueCallback\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"android/webkit/WebResourceRequest\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"android/webkit/RenderProcessGoneDetail\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"android/webkit/WebChromeClient\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"android/webkit/WebChromeClient$FileChooserParams\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"android/webkit/WebMessage\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"android/webkit/WebResourceError\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"android/webkit/WebResourceResponse\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"android/webkit/WebSettings\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"android/webkit/WebView\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"android/webkit/WebViewClient\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"android/database/CharArrayBuffer\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"android/database/ContentObserver\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"android/database/DataSetObserver\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"android/database/Cursor\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"android/widget/AbsListView\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"android/widget/AbsListView$OnScrollListener\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"android/widget/AdapterView\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"android/widget/AdapterView$OnItemClickListener\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"mono/android/widget/AdapterView_OnItemClickListenerImplementor\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"android/widget/AdapterView$OnItemLongClickListener\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"android/widget/AdapterView$OnItemSelectedListener\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"android/widget/AutoCompleteTextView\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"android/widget/BaseAdapter\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"android/widget/DatePicker\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"android/widget/TextView\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"android/widget/TextView$BufferType\00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"android/widget/TextView$OnEditorActionListener\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"mono/android/widget/TextView_OnEditorActionListenerImplementor\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"android/widget/AbsoluteLayout\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"android/widget/AbsSeekBar\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"android/widget/Button\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"android/widget/CheckBox\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"android/widget/CompoundButton\00", align 1
@.str.56 = private unnamed_addr constant [54 x i8] c"android/widget/CompoundButton$OnCheckedChangeListener\00", align 1
@.str.57 = private unnamed_addr constant [70 x i8] c"mono/android/widget/CompoundButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"android/widget/EdgeEffect\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"android/widget/EditText\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"android/widget/Filter\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"android/widget/Filter$FilterResults\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"android/widget/FrameLayout\00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"android/widget/FrameLayout$LayoutParams\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"android/widget/HorizontalScrollView\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"android/widget/Adapter\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"android/widget/Filterable\00", align 1
@.str.67 = private unnamed_addr constant [35 x i8] c"android/widget/FilterQueryProvider\00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"android/widget/ListAdapter\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"android/widget/ImageButton\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"android/widget/ImageView\00", align 1
@.str.71 = private unnamed_addr constant [35 x i8] c"android/widget/ImageView$ScaleType\00", align 1
@.str.72 = private unnamed_addr constant [30 x i8] c"android/widget/SectionIndexer\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"android/widget/SpinnerAdapter\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"android/widget/LinearLayout\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"android/widget/LinearLayout$LayoutParams\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"android/widget/ListView\00", align 1
@.str.77 = private unnamed_addr constant [27 x i8] c"android/widget/ProgressBar\00", align 1
@.str.78 = private unnamed_addr constant [27 x i8] c"android/widget/RadioButton\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"android/widget/SearchView\00", align 1
@.str.80 = private unnamed_addr constant [23 x i8] c"android/widget/SeekBar\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"android/widget/SeekBar$OnSeekBarChangeListener\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"android/widget/Switch\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"android/widget/TimePicker\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"android/util/DisplayMetrics\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"android/util/AttributeSet\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"android/util/Pair\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"android/util/SizeF\00", align 1
@.str.88 = private unnamed_addr constant [25 x i8] c"android/util/SparseArray\00", align 1
@.str.89 = private unnamed_addr constant [22 x i8] c"android/util/StateSet\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"android/util/TypedValue\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"mono/android/text/TextWatcherImplementor\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"android/text/Html\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"android/text/Editable\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"android/text/GetChars\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"android/text/InputFilter$LengthFilter\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"android/text/InputFilter\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"android/text/NoCopySpan\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"android/text/Spannable\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"android/text/Spanned\00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"android/text/TextDirectionHeuristic\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"android/text/TextWatcher\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"android/text/Layout\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"android/text/Layout$Alignment\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"android/text/SpannableString\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"android/text/SpannableStringBuilder\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"android/text/SpannableStringInternal\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"android/text/StaticLayout\00", align 1
@.str.108 = private unnamed_addr constant [34 x i8] c"android/text/StaticLayout$Builder\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"android/text/TextPaint\00", align 1
@.str.110 = private unnamed_addr constant [23 x i8] c"android/text/TextUtils\00", align 1
@.str.111 = private unnamed_addr constant [34 x i8] c"android/text/TextUtils$TruncateAt\00", align 1
@.str.112 = private unnamed_addr constant [39 x i8] c"android/text/style/BackgroundColorSpan\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"android/text/style/BulletSpan\00", align 1
@.str.114 = private unnamed_addr constant [34 x i8] c"android/text/style/CharacterStyle\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"android/text/style/ClickableSpan\00", align 1
@.str.116 = private unnamed_addr constant [39 x i8] c"android/text/style/ForegroundColorSpan\00", align 1
@.str.117 = private unnamed_addr constant [34 x i8] c"android/text/style/LineHeightSpan\00", align 1
@.str.118 = private unnamed_addr constant [34 x i8] c"android/text/style/ParagraphStyle\00", align 1
@.str.119 = private unnamed_addr constant [36 x i8] c"android/text/style/WrapTogetherSpan\00", align 1
@.str.120 = private unnamed_addr constant [39 x i8] c"android/text/style/MetricAffectingSpan\00", align 1
@.str.121 = private unnamed_addr constant [37 x i8] c"android/text/style/StrikethroughSpan\00", align 1
@.str.122 = private unnamed_addr constant [29 x i8] c"android/text/style/StyleSpan\00", align 1
@.str.123 = private unnamed_addr constant [33 x i8] c"android/text/style/SubscriptSpan\00", align 1
@.str.124 = private unnamed_addr constant [35 x i8] c"android/text/style/SuperscriptSpan\00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"android/text/style/TypefaceSpan\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"android/text/style/UnderlineSpan\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"android/text/method/BaseKeyListener\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"android/text/method/DigitsKeyListener\00", align 1
@.str.129 = private unnamed_addr constant [32 x i8] c"android/text/method/KeyListener\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"android/text/method/MetaKeyKeyListener\00", align 1
@.str.131 = private unnamed_addr constant [38 x i8] c"android/text/method/NumberKeyListener\00", align 1
@.str.132 = private unnamed_addr constant [31 x i8] c"android/text/format/DateFormat\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"android/preference/PreferenceManager\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"android/opengl/Matrix\00", align 1
@.str.135 = private unnamed_addr constant [19 x i8] c"android/os/Handler\00", align 1
@.str.136 = private unnamed_addr constant [19 x i8] c"android/os/Message\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"android/os/PowerManager\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"android/os/BaseBundle\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"android/os/Build\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"android/os/Build$VERSION\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"android/os/Bundle\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c"android/os/CancellationSignal\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"android/os/Environment\00", align 1
@.str.144 = private unnamed_addr constant [34 x i8] c"android/os/IBinder$DeathRecipient\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"android/os/IBinder\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"android/os/IInterface\00", align 1
@.str.147 = private unnamed_addr constant [30 x i8] c"android/os/Parcelable$Creator\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"android/os/Parcelable\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"android/os/LocaleList\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"android/os/Looper\00", align 1
@.str.151 = private unnamed_addr constant [18 x i8] c"android/os/Parcel\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"android/animation/Animator\00", align 1
@.str.153 = private unnamed_addr constant [44 x i8] c"android/animation/Animator$AnimatorListener\00", align 1
@.str.154 = private unnamed_addr constant [47 x i8] c"mono/android/animation/AnimatorEventDispatcher\00", align 1
@.str.155 = private unnamed_addr constant [32 x i8] c"android/animation/ValueAnimator\00", align 1
@.str.156 = private unnamed_addr constant [55 x i8] c"android/animation/ValueAnimator$AnimatorUpdateListener\00", align 1
@.str.157 = private unnamed_addr constant [71 x i8] c"mono/android/animation/ValueAnimator_AnimatorUpdateListenerImplementor\00", align 1
@.str.158 = private unnamed_addr constant [60 x i8] c"android/animation/ValueAnimator$DurationScaleChangeListener\00", align 1
@.str.159 = private unnamed_addr constant [42 x i8] c"android/animation/AnimatorListenerAdapter\00", align 1
@.str.160 = private unnamed_addr constant [35 x i8] c"android/animation/TimeInterpolator\00", align 1
@.str.161 = private unnamed_addr constant [40 x i8] c"android/view/WindowManager$LayoutParams\00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"android/view/View\00", align 1
@.str.163 = private unnamed_addr constant [40 x i8] c"android/view/View$AccessibilityDelegate\00", align 1
@.str.164 = private unnamed_addr constant [36 x i8] c"android/view/View$DragShadowBuilder\00", align 1
@.str.165 = private unnamed_addr constant [30 x i8] c"android/view/View$MeasureSpec\00", align 1
@.str.166 = private unnamed_addr constant [46 x i8] c"android/view/View$OnAttachStateChangeListener\00", align 1
@.str.167 = private unnamed_addr constant [62 x i8] c"mono/android/view/View_OnAttachStateChangeListenerImplementor\00", align 1
@.str.168 = private unnamed_addr constant [34 x i8] c"android/view/View$OnClickListener\00", align 1
@.str.169 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnClickListenerImplementor\00", align 1
@.str.170 = private unnamed_addr constant [33 x i8] c"android/view/View$OnDragListener\00", align 1
@.str.171 = private unnamed_addr constant [40 x i8] c"android/view/View$OnFocusChangeListener\00", align 1
@.str.172 = private unnamed_addr constant [56 x i8] c"mono/android/view/View_OnFocusChangeListenerImplementor\00", align 1
@.str.173 = private unnamed_addr constant [34 x i8] c"android/view/View$OnHoverListener\00", align 1
@.str.174 = private unnamed_addr constant [32 x i8] c"android/view/View$OnKeyListener\00", align 1
@.str.175 = private unnamed_addr constant [48 x i8] c"mono/android/view/View_OnKeyListenerImplementor\00", align 1
@.str.176 = private unnamed_addr constant [41 x i8] c"android/view/View$OnLayoutChangeListener\00", align 1
@.str.177 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnLayoutChangeListenerImplementor\00", align 1
@.str.178 = private unnamed_addr constant [41 x i8] c"android/view/View$OnScrollChangeListener\00", align 1
@.str.179 = private unnamed_addr constant [57 x i8] c"mono/android/view/View_OnScrollChangeListenerImplementor\00", align 1
@.str.180 = private unnamed_addr constant [34 x i8] c"android/view/View$OnTouchListener\00", align 1
@.str.181 = private unnamed_addr constant [50 x i8] c"mono/android/view/View_OnTouchListenerImplementor\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"android/view/KeyEvent\00", align 1
@.str.183 = private unnamed_addr constant [28 x i8] c"android/view/LayoutInflater\00", align 1
@.str.184 = private unnamed_addr constant [25 x i8] c"android/view/MotionEvent\00", align 1
@.str.185 = private unnamed_addr constant [30 x i8] c"android/view/ViewTreeObserver\00", align 1
@.str.186 = private unnamed_addr constant [53 x i8] c"android/view/ViewTreeObserver$OnGlobalLayoutListener\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"android/view/Window\00", align 1
@.str.188 = private unnamed_addr constant [29 x i8] c"android/view/Window$Callback\00", align 1
@.str.189 = private unnamed_addr constant [24 x i8] c"android/view/ActionMode\00", align 1
@.str.190 = private unnamed_addr constant [33 x i8] c"android/view/ActionMode$Callback\00", align 1
@.str.191 = private unnamed_addr constant [28 x i8] c"android/view/ActionProvider\00", align 1
@.str.192 = private unnamed_addr constant [27 x i8] c"android/view/Choreographer\00", align 1
@.str.193 = private unnamed_addr constant [25 x i8] c"android/view/ContentInfo\00", align 1
@.str.194 = private unnamed_addr constant [33 x i8] c"android/view/ContextThemeWrapper\00", align 1
@.str.195 = private unnamed_addr constant [21 x i8] c"android/view/Display\00", align 1
@.str.196 = private unnamed_addr constant [23 x i8] c"android/view/DragEvent\00", align 1
@.str.197 = private unnamed_addr constant [29 x i8] c"android/view/GestureDetector\00", align 1
@.str.198 = private unnamed_addr constant [49 x i8] c"android/view/GestureDetector$OnDoubleTapListener\00", align 1
@.str.199 = private unnamed_addr constant [47 x i8] c"android/view/GestureDetector$OnGestureListener\00", align 1
@.str.200 = private unnamed_addr constant [41 x i8] c"android/view/ContextMenu$ContextMenuInfo\00", align 1
@.str.201 = private unnamed_addr constant [25 x i8] c"android/view/ContextMenu\00", align 1
@.str.202 = private unnamed_addr constant [18 x i8] c"android/view/Menu\00", align 1
@.str.203 = private unnamed_addr constant [45 x i8] c"android/view/MenuItem$OnActionExpandListener\00", align 1
@.str.204 = private unnamed_addr constant [46 x i8] c"android/view/MenuItem$OnMenuItemClickListener\00", align 1
@.str.205 = private unnamed_addr constant [22 x i8] c"android/view/MenuItem\00", align 1
@.str.206 = private unnamed_addr constant [24 x i8] c"android/view/InputEvent\00", align 1
@.str.207 = private unnamed_addr constant [21 x i8] c"android/view/SubMenu\00", align 1
@.str.208 = private unnamed_addr constant [41 x i8] c"android/view/SurfaceControlInputReceiver\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c"android/view/ViewManager\00", align 1
@.str.210 = private unnamed_addr constant [24 x i8] c"android/view/ViewParent\00", align 1
@.str.211 = private unnamed_addr constant [45 x i8] c"android/view/WindowInsetsAnimationController\00", align 1
@.str.212 = private unnamed_addr constant [50 x i8] c"android/view/WindowInsetsAnimationControlListener\00", align 1
@.str.213 = private unnamed_addr constant [36 x i8] c"android/view/WindowInsetsController\00", align 1
@.str.214 = private unnamed_addr constant [72 x i8] c"android/view/WindowInsetsController$OnControllableInsetsChangedListener\00", align 1
@.str.215 = private unnamed_addr constant [27 x i8] c"android/view/WindowManager\00", align 1
@.str.216 = private unnamed_addr constant [35 x i8] c"android/view/KeyboardShortcutGroup\00", align 1
@.str.217 = private unnamed_addr constant [34 x i8] c"android/view/KeyboardShortcutInfo\00", align 1
@.str.218 = private unnamed_addr constant [26 x i8] c"android/view/MenuInflater\00", align 1
@.str.219 = private unnamed_addr constant [38 x i8] c"android/view/OrientationEventListener\00", align 1
@.str.220 = private unnamed_addr constant [34 x i8] c"android/view/ScaleGestureDetector\00", align 1
@.str.221 = private unnamed_addr constant [57 x i8] c"android/view/ScaleGestureDetector$OnScaleGestureListener\00", align 1
@.str.222 = private unnamed_addr constant [63 x i8] c"android/view/ScaleGestureDetector$SimpleOnScaleGestureListener\00", align 1
@.str.223 = private unnamed_addr constant [25 x i8] c"android/view/SearchEvent\00", align 1
@.str.224 = private unnamed_addr constant [28 x i8] c"android/view/SurfaceControl\00", align 1
@.str.225 = private unnamed_addr constant [31 x i8] c"android/view/ViewConfiguration\00", align 1
@.str.226 = private unnamed_addr constant [23 x i8] c"android/view/ViewGroup\00", align 1
@.str.227 = private unnamed_addr constant [36 x i8] c"android/view/ViewGroup$LayoutParams\00", align 1
@.str.228 = private unnamed_addr constant [42 x i8] c"android/view/ViewGroup$MarginLayoutParams\00", align 1
@.str.229 = private unnamed_addr constant [49 x i8] c"android/view/ViewGroup$OnHierarchyChangeListener\00", align 1
@.str.230 = private unnamed_addr constant [65 x i8] c"mono/android/view/ViewGroup_OnHierarchyChangeListenerImplementor\00", align 1
@.str.231 = private unnamed_addr constant [34 x i8] c"android/view/ViewPropertyAnimator\00", align 1
@.str.232 = private unnamed_addr constant [27 x i8] c"android/view/ViewStructure\00", align 1
@.str.233 = private unnamed_addr constant [26 x i8] c"android/view/WindowInsets\00", align 1
@.str.234 = private unnamed_addr constant [35 x i8] c"android/view/WindowInsetsAnimation\00", align 1
@.str.235 = private unnamed_addr constant [42 x i8] c"android/view/WindowInsetsAnimation$Bounds\00", align 1
@.str.236 = private unnamed_addr constant [27 x i8] c"android/view/WindowMetrics\00", align 1
@.str.237 = private unnamed_addr constant [50 x i8] c"android/view/contentcapture/ContentCaptureSession\00", align 1
@.str.238 = private unnamed_addr constant [33 x i8] c"android/view/autofill/AutofillId\00", align 1
@.str.239 = private unnamed_addr constant [33 x i8] c"android/view/animation/Animation\00", align 1
@.str.240 = private unnamed_addr constant [51 x i8] c"android/view/animation/Animation$AnimationListener\00", align 1
@.str.241 = private unnamed_addr constant [67 x i8] c"mono/android/view/animation/Animation_AnimationListenerImplementor\00", align 1
@.str.242 = private unnamed_addr constant [36 x i8] c"android/view/animation/AnimationSet\00", align 1
@.str.243 = private unnamed_addr constant [38 x i8] c"android/view/animation/AnimationUtils\00", align 1
@.str.244 = private unnamed_addr constant [40 x i8] c"android/view/animation/BaseInterpolator\00", align 1
@.str.245 = private unnamed_addr constant [46 x i8] c"android/view/animation/DecelerateInterpolator\00", align 1
@.str.246 = private unnamed_addr constant [36 x i8] c"android/view/animation/Interpolator\00", align 1
@.str.247 = private unnamed_addr constant [42 x i8] c"android/view/animation/LinearInterpolator\00", align 1
@.str.248 = private unnamed_addr constant [44 x i8] c"android/view/inputmethod/InputMethodManager\00", align 1
@.str.249 = private unnamed_addr constant [46 x i8] c"android/view/accessibility/AccessibilityEvent\00", align 1
@.str.250 = private unnamed_addr constant [49 x i8] c"android/view/accessibility/AccessibilityNodeInfo\00", align 1
@.str.251 = private unnamed_addr constant [68 x i8] c"android/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo\00", align 1
@.str.252 = private unnamed_addr constant [47 x i8] c"android/view/accessibility/AccessibilityRecord\00", align 1
@.str.253 = private unnamed_addr constant [51 x i8] c"android/view/accessibility/AccessibilityWindowInfo\00", align 1
@.str.254 = private unnamed_addr constant [40 x i8] c"mono/android/runtime/InputStreamAdapter\00", align 1
@.str.255 = private unnamed_addr constant [31 x i8] c"mono/android/runtime/JavaArray\00", align 1
@.str.256 = private unnamed_addr constant [21 x i8] c"java/util/Collection\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"java/util/HashMap\00", align 1
@.str.258 = private unnamed_addr constant [20 x i8] c"java/util/ArrayList\00", align 1
@.str.259 = private unnamed_addr constant [32 x i8] c"mono/android/runtime/JavaObject\00", align 1
@.str.260 = private unnamed_addr constant [35 x i8] c"android/runtime/JavaProxyThrowable\00", align 1
@.str.261 = private unnamed_addr constant [18 x i8] c"java/util/HashSet\00", align 1
@.str.262 = private unnamed_addr constant [41 x i8] c"mono/android/runtime/OutputStreamAdapter\00", align 1
@.str.263 = private unnamed_addr constant [36 x i8] c"android/runtime/XmlReaderPullParser\00", align 1
@.str.264 = private unnamed_addr constant [16 x i8] c"android/net/Uri\00", align 1
@.str.265 = private unnamed_addr constant [24 x i8] c"android/graphics/Bitmap\00", align 1
@.str.266 = private unnamed_addr constant [39 x i8] c"android/graphics/Bitmap$CompressFormat\00", align 1
@.str.267 = private unnamed_addr constant [31 x i8] c"android/graphics/Bitmap$Config\00", align 1
@.str.268 = private unnamed_addr constant [24 x i8] c"android/graphics/Canvas\00", align 1
@.str.269 = private unnamed_addr constant [31 x i8] c"android/graphics/BitmapFactory\00", align 1
@.str.270 = private unnamed_addr constant [30 x i8] c"android/graphics/BitmapShader\00", align 1
@.str.271 = private unnamed_addr constant [27 x i8] c"android/graphics/BlendMode\00", align 1
@.str.272 = private unnamed_addr constant [32 x i8] c"android/graphics/BlurMaskFilter\00", align 1
@.str.273 = private unnamed_addr constant [37 x i8] c"android/graphics/BlurMaskFilter$Blur\00", align 1
@.str.274 = private unnamed_addr constant [29 x i8] c"android/graphics/ColorFilter\00", align 1
@.str.275 = private unnamed_addr constant [32 x i8] c"android/graphics/DashPathEffect\00", align 1
@.str.276 = private unnamed_addr constant [24 x i8] c"android/graphics/Insets\00", align 1
@.str.277 = private unnamed_addr constant [32 x i8] c"android/graphics/LinearGradient\00", align 1
@.str.278 = private unnamed_addr constant [28 x i8] c"android/graphics/MaskFilter\00", align 1
@.str.279 = private unnamed_addr constant [24 x i8] c"android/graphics/Matrix\00", align 1
@.str.280 = private unnamed_addr constant [23 x i8] c"android/graphics/Paint\00", align 1
@.str.281 = private unnamed_addr constant [27 x i8] c"android/graphics/Paint$Cap\00", align 1
@.str.282 = private unnamed_addr constant [35 x i8] c"android/graphics/Paint$FontMetrics\00", align 1
@.str.283 = private unnamed_addr constant [38 x i8] c"android/graphics/Paint$FontMetricsInt\00", align 1
@.str.284 = private unnamed_addr constant [28 x i8] c"android/graphics/Paint$Join\00", align 1
@.str.285 = private unnamed_addr constant [29 x i8] c"android/graphics/Paint$Style\00", align 1
@.str.286 = private unnamed_addr constant [22 x i8] c"android/graphics/Path\00", align 1
@.str.287 = private unnamed_addr constant [32 x i8] c"android/graphics/Path$Direction\00", align 1
@.str.288 = private unnamed_addr constant [31 x i8] c"android/graphics/Path$FillType\00", align 1
@.str.289 = private unnamed_addr constant [25 x i8] c"android/graphics/Path$Op\00", align 1
@.str.290 = private unnamed_addr constant [28 x i8] c"android/graphics/PathEffect\00", align 1
@.str.291 = private unnamed_addr constant [23 x i8] c"android/graphics/Point\00", align 1
@.str.292 = private unnamed_addr constant [24 x i8] c"android/graphics/PointF\00", align 1
@.str.293 = private unnamed_addr constant [28 x i8] c"android/graphics/PorterDuff\00", align 1
@.str.294 = private unnamed_addr constant [33 x i8] c"android/graphics/PorterDuff$Mode\00", align 1
@.str.295 = private unnamed_addr constant [36 x i8] c"android/graphics/PorterDuffXfermode\00", align 1
@.str.296 = private unnamed_addr constant [32 x i8] c"android/graphics/RadialGradient\00", align 1
@.str.297 = private unnamed_addr constant [22 x i8] c"android/graphics/Rect\00", align 1
@.str.298 = private unnamed_addr constant [23 x i8] c"android/graphics/RectF\00", align 1
@.str.299 = private unnamed_addr constant [24 x i8] c"android/graphics/Region\00", align 1
@.str.300 = private unnamed_addr constant [27 x i8] c"android/graphics/Region$Op\00", align 1
@.str.301 = private unnamed_addr constant [24 x i8] c"android/graphics/Shader\00", align 1
@.str.302 = private unnamed_addr constant [33 x i8] c"android/graphics/Shader$TileMode\00", align 1
@.str.303 = private unnamed_addr constant [26 x i8] c"android/graphics/Typeface\00", align 1
@.str.304 = private unnamed_addr constant [26 x i8] c"android/graphics/Xfermode\00", align 1
@.str.305 = private unnamed_addr constant [35 x i8] c"android/graphics/drawable/Drawable\00", align 1
@.str.306 = private unnamed_addr constant [49 x i8] c"android/graphics/drawable/Drawable$ConstantState\00", align 1
@.str.307 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/DrawableContainer\00", align 1
@.str.308 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/InsetDrawable\00", align 1
@.str.309 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/LayerDrawable\00", align 1
@.str.310 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/AnimationDrawable\00", align 1
@.str.311 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ColorDrawable\00", align 1
@.str.312 = private unnamed_addr constant [42 x i8] c"android/graphics/drawable/DrawableWrapper\00", align 1
@.str.313 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/GradientDrawable\00", align 1
@.str.314 = private unnamed_addr constant [55 x i8] c"android/graphics/drawable/GradientDrawable$Orientation\00", align 1
@.str.315 = private unnamed_addr constant [37 x i8] c"android/graphics/drawable/Animatable\00", align 1
@.str.316 = private unnamed_addr constant [31 x i8] c"android/graphics/drawable/Icon\00", align 1
@.str.317 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/PaintDrawable\00", align 1
@.str.318 = private unnamed_addr constant [41 x i8] c"android/graphics/drawable/RippleDrawable\00", align 1
@.str.319 = private unnamed_addr constant [40 x i8] c"android/graphics/drawable/ShapeDrawable\00", align 1
@.str.320 = private unnamed_addr constant [54 x i8] c"android/graphics/drawable/ShapeDrawable$ShaderFactory\00", align 1
@.str.321 = private unnamed_addr constant [44 x i8] c"android/graphics/drawable/StateListDrawable\00", align 1
@.str.322 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/OvalShape\00", align 1
@.str.323 = private unnamed_addr constant [43 x i8] c"android/graphics/drawable/shapes/RectShape\00", align 1
@.str.324 = private unnamed_addr constant [39 x i8] c"android/graphics/drawable/shapes/Shape\00", align 1
@.str.325 = private unnamed_addr constant [32 x i8] c"android/content/ContentProvider\00", align 1
@.str.326 = private unnamed_addr constant [30 x i8] c"android/content/ContentValues\00", align 1
@.str.327 = private unnamed_addr constant [24 x i8] c"android/content/Context\00", align 1
@.str.328 = private unnamed_addr constant [23 x i8] c"android/content/Intent\00", align 1
@.str.329 = private unnamed_addr constant [34 x i8] c"android/content/BroadcastReceiver\00", align 1
@.str.330 = private unnamed_addr constant [25 x i8] c"android/content/ClipData\00", align 1
@.str.331 = private unnamed_addr constant [30 x i8] c"android/content/ClipData$Item\00", align 1
@.str.332 = private unnamed_addr constant [32 x i8] c"android/content/ClipDescription\00", align 1
@.str.333 = private unnamed_addr constant [30 x i8] c"android/content/ComponentName\00", align 1
@.str.334 = private unnamed_addr constant [32 x i8] c"android/content/ContentResolver\00", align 1
@.str.335 = private unnamed_addr constant [31 x i8] c"android/content/ContextWrapper\00", align 1
@.str.336 = private unnamed_addr constant [49 x i8] c"android/content/DialogInterface$OnCancelListener\00", align 1
@.str.337 = private unnamed_addr constant [65 x i8] c"mono/android/content/DialogInterface_OnCancelListenerImplementor\00", align 1
@.str.338 = private unnamed_addr constant [48 x i8] c"android/content/DialogInterface$OnClickListener\00", align 1
@.str.339 = private unnamed_addr constant [64 x i8] c"mono/android/content/DialogInterface_OnClickListenerImplementor\00", align 1
@.str.340 = private unnamed_addr constant [50 x i8] c"android/content/DialogInterface$OnDismissListener\00", align 1
@.str.341 = private unnamed_addr constant [66 x i8] c"mono/android/content/DialogInterface_OnDismissListenerImplementor\00", align 1
@.str.342 = private unnamed_addr constant [46 x i8] c"android/content/DialogInterface$OnKeyListener\00", align 1
@.str.343 = private unnamed_addr constant [59 x i8] c"android/content/DialogInterface$OnMultiChoiceClickListener\00", align 1
@.str.344 = private unnamed_addr constant [47 x i8] c"android/content/DialogInterface$OnShowListener\00", align 1
@.str.345 = private unnamed_addr constant [63 x i8] c"mono/android/content/DialogInterface_OnShowListenerImplementor\00", align 1
@.str.346 = private unnamed_addr constant [32 x i8] c"android/content/DialogInterface\00", align 1
@.str.347 = private unnamed_addr constant [29 x i8] c"android/content/IntentFilter\00", align 1
@.str.348 = private unnamed_addr constant [29 x i8] c"android/content/IntentSender\00", align 1
@.str.349 = private unnamed_addr constant [41 x i8] c"android/content/SharedPreferences$Editor\00", align 1
@.str.350 = private unnamed_addr constant [67 x i8] c"android/content/SharedPreferences$OnSharedPreferenceChangeListener\00", align 1
@.str.351 = private unnamed_addr constant [34 x i8] c"android/content/SharedPreferences\00", align 1
@.str.352 = private unnamed_addr constant [33 x i8] c"android/content/res/AssetManager\00", align 1
@.str.353 = private unnamed_addr constant [35 x i8] c"android/content/res/ColorStateList\00", align 1
@.str.354 = private unnamed_addr constant [34 x i8] c"android/content/res/Configuration\00", align 1
@.str.355 = private unnamed_addr constant [30 x i8] c"android/content/res/Resources\00", align 1
@.str.356 = private unnamed_addr constant [36 x i8] c"android/content/res/Resources$Theme\00", align 1
@.str.357 = private unnamed_addr constant [31 x i8] c"android/content/res/TypedArray\00", align 1
@.str.358 = private unnamed_addr constant [34 x i8] c"android/content/pm/PackageManager\00", align 1
@.str.359 = private unnamed_addr constant [35 x i8] c"android/content/pm/ApplicationInfo\00", align 1
@.str.360 = private unnamed_addr constant [31 x i8] c"android/content/pm/PackageInfo\00", align 1
@.str.361 = private unnamed_addr constant [35 x i8] c"android/content/pm/PackageItemInfo\00", align 1
@.str.362 = private unnamed_addr constant [32 x i8] c"android/content/pm/ShortcutInfo\00", align 1
@.str.363 = private unnamed_addr constant [40 x i8] c"android/content/pm/ShortcutInfo$Builder\00", align 1
@.str.364 = private unnamed_addr constant [35 x i8] c"android/content/pm/ShortcutManager\00", align 1
@.str.365 = private unnamed_addr constant [29 x i8] c"android/content/pm/Signature\00", align 1
@.str.366 = private unnamed_addr constant [21 x i8] c"android/app/Activity\00", align 1
@.str.367 = private unnamed_addr constant [24 x i8] c"android/app/AlertDialog\00", align 1
@.str.368 = private unnamed_addr constant [32 x i8] c"android/app/AlertDialog$Builder\00", align 1
@.str.369 = private unnamed_addr constant [24 x i8] c"android/app/Application\00", align 1
@.str.370 = private unnamed_addr constant [51 x i8] c"android/app/Application$ActivityLifecycleCallbacks\00", align 1
@.str.371 = private unnamed_addr constant [29 x i8] c"android/app/DatePickerDialog\00", align 1
@.str.372 = private unnamed_addr constant [47 x i8] c"android/app/DatePickerDialog$OnDateSetListener\00", align 1
@.str.373 = private unnamed_addr constant [63 x i8] c"mono/android/app/DatePickerDialog_OnDateSetListenerImplementor\00", align 1
@.str.374 = private unnamed_addr constant [19 x i8] c"android/app/Dialog\00", align 1
@.str.375 = private unnamed_addr constant [29 x i8] c"android/app/TimePickerDialog\00", align 1
@.str.376 = private unnamed_addr constant [47 x i8] c"android/app/TimePickerDialog$OnTimeSetListener\00", align 1
@.str.377 = private unnamed_addr constant [63 x i8] c"mono/android/app/TimePickerDialog_OnTimeSetListenerImplementor\00", align 1
@.str.378 = private unnamed_addr constant [26 x i8] c"android/app/UiModeManager\00", align 1
@.str.379 = private unnamed_addr constant [26 x i8] c"android/app/PendingIntent\00", align 1
@.str.380 = private unnamed_addr constant [27 x i8] c"android/app/SearchableInfo\00", align 1
@.str.381 = private unnamed_addr constant [24 x i8] c"java/text/DecimalFormat\00", align 1
@.str.382 = private unnamed_addr constant [31 x i8] c"java/text/DecimalFormatSymbols\00", align 1
@.str.383 = private unnamed_addr constant [23 x i8] c"java/text/NumberFormat\00", align 1
@.str.384 = private unnamed_addr constant [17 x i8] c"java/text/Format\00", align 1
@.str.385 = private unnamed_addr constant [26 x i8] c"java/net/ConnectException\00", align 1
@.str.386 = private unnamed_addr constant [27 x i8] c"java/net/HttpURLConnection\00", align 1
@.str.387 = private unnamed_addr constant [27 x i8] c"java/net/InetSocketAddress\00", align 1
@.str.388 = private unnamed_addr constant [27 x i8] c"java/net/ProtocolException\00", align 1
@.str.389 = private unnamed_addr constant [15 x i8] c"java/net/Proxy\00", align 1
@.str.390 = private unnamed_addr constant [20 x i8] c"java/net/Proxy$Type\00", align 1
@.str.391 = private unnamed_addr constant [23 x i8] c"java/net/SocketAddress\00", align 1
@.str.392 = private unnamed_addr constant [25 x i8] c"java/net/SocketException\00", align 1
@.str.393 = private unnamed_addr constant [32 x i8] c"java/net/SocketTimeoutException\00", align 1
@.str.394 = private unnamed_addr constant [33 x i8] c"java/net/UnknownServiceException\00", align 1
@.str.395 = private unnamed_addr constant [13 x i8] c"java/net/URL\00", align 1
@.str.396 = private unnamed_addr constant [23 x i8] c"java/net/URLConnection\00", align 1
@.str.397 = private unnamed_addr constant [18 x i8] c"java/security/Key\00", align 1
@.str.398 = private unnamed_addr constant [24 x i8] c"java/security/Principal\00", align 1
@.str.399 = private unnamed_addr constant [25 x i8] c"java/security/PrivateKey\00", align 1
@.str.400 = private unnamed_addr constant [25 x i8] c"java/security/KeyFactory\00", align 1
@.str.401 = private unnamed_addr constant [23 x i8] c"java/security/KeyStore\00", align 1
@.str.402 = private unnamed_addr constant [27 x i8] c"java/security/SecureRandom\00", align 1
@.str.403 = private unnamed_addr constant [34 x i8] c"java/security/spec/EncodedKeySpec\00", align 1
@.str.404 = private unnamed_addr constant [27 x i8] c"java/security/spec/KeySpec\00", align 1
@.str.405 = private unnamed_addr constant [39 x i8] c"java/security/spec/PKCS8EncodedKeySpec\00", align 1
@.str.406 = private unnamed_addr constant [31 x i8] c"java/security/cert/Certificate\00", align 1
@.str.407 = private unnamed_addr constant [30 x i8] c"java/nio/channels/FileChannel\00", align 1
@.str.408 = private unnamed_addr constant [51 x i8] c"java/nio/channels/spi/AbstractInterruptibleChannel\00", align 1
@.str.409 = private unnamed_addr constant [13 x i8] c"java/io/File\00", align 1
@.str.410 = private unnamed_addr constant [23 x i8] c"java/io/FileDescriptor\00", align 1
@.str.411 = private unnamed_addr constant [24 x i8] c"java/io/FileInputStream\00", align 1
@.str.412 = private unnamed_addr constant [30 x i8] c"java/io/FileNotFoundException\00", align 1
@.str.413 = private unnamed_addr constant [18 x i8] c"java/io/Closeable\00", align 1
@.str.414 = private unnamed_addr constant [20 x i8] c"java/io/InputStream\00", align 1
@.str.415 = private unnamed_addr constant [31 x i8] c"java/io/InterruptedIOException\00", align 1
@.str.416 = private unnamed_addr constant [20 x i8] c"java/io/IOException\00", align 1
@.str.417 = private unnamed_addr constant [21 x i8] c"java/io/Serializable\00", align 1
@.str.418 = private unnamed_addr constant [21 x i8] c"java/io/OutputStream\00", align 1
@.str.419 = private unnamed_addr constant [20 x i8] c"java/io/PrintWriter\00", align 1
@.str.420 = private unnamed_addr constant [25 x i8] c"java/io/RandomAccessFile\00", align 1
@.str.421 = private unnamed_addr constant [15 x i8] c"java/io/Reader\00", align 1
@.str.422 = private unnamed_addr constant [21 x i8] c"java/io/StringWriter\00", align 1
@.str.423 = private unnamed_addr constant [15 x i8] c"java/io/Writer\00", align 1
@.str.424 = private unnamed_addr constant [15 x i8] c"java/util/List\00", align 1
@.str.425 = private unnamed_addr constant [21 x i8] c"java/util/Comparator\00", align 1
@.str.426 = private unnamed_addr constant [22 x i8] c"java/util/Enumeration\00", align 1
@.str.427 = private unnamed_addr constant [19 x i8] c"java/util/Iterator\00", align 1
@.str.428 = private unnamed_addr constant [23 x i8] c"java/util/ListIterator\00", align 1
@.str.429 = private unnamed_addr constant [30 x i8] c"java/util/SequencedCollection\00", align 1
@.str.430 = private unnamed_addr constant [22 x i8] c"java/util/Spliterator\00", align 1
@.str.431 = private unnamed_addr constant [17 x i8] c"java/util/Locale\00", align 1
@.str.432 = private unnamed_addr constant [17 x i8] c"java/util/Random\00", align 1
@.str.433 = private unnamed_addr constant [28 x i8] c"java/util/function/Consumer\00", align 1
@.str.434 = private unnamed_addr constant [28 x i8] c"java/util/function/Function\00", align 1
@.str.435 = private unnamed_addr constant [31 x i8] c"java/util/function/IntConsumer\00", align 1
@.str.436 = private unnamed_addr constant [31 x i8] c"java/util/function/IntFunction\00", align 1
@.str.437 = private unnamed_addr constant [29 x i8] c"java/util/function/Predicate\00", align 1
@.str.438 = private unnamed_addr constant [36 x i8] c"java/util/function/ToDoubleFunction\00", align 1
@.str.439 = private unnamed_addr constant [33 x i8] c"java/util/function/ToIntFunction\00", align 1
@.str.440 = private unnamed_addr constant [34 x i8] c"java/util/function/ToLongFunction\00", align 1
@.str.441 = private unnamed_addr constant [33 x i8] c"java/util/function/UnaryOperator\00", align 1
@.str.442 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/Executor\00", align 1
@.str.443 = private unnamed_addr constant [28 x i8] c"java/util/concurrent/Future\00", align 1
@.str.444 = private unnamed_addr constant [30 x i8] c"java/util/concurrent/TimeUnit\00", align 1
@.str.445 = private unnamed_addr constant [44 x i8] c"java/util/concurrent/atomic/AtomicReference\00", align 1
@.str.446 = private unnamed_addr constant [18 x i8] c"java/lang/Boolean\00", align 1
@.str.447 = private unnamed_addr constant [15 x i8] c"java/lang/Byte\00", align 1
@.str.448 = private unnamed_addr constant [20 x i8] c"java/lang/Character\00", align 1
@.str.449 = private unnamed_addr constant [16 x i8] c"java/lang/Class\00", align 1
@.str.450 = private unnamed_addr constant [33 x i8] c"java/lang/ClassNotFoundException\00", align 1
@.str.451 = private unnamed_addr constant [17 x i8] c"java/lang/Double\00", align 1
@.str.452 = private unnamed_addr constant [20 x i8] c"java/lang/Exception\00", align 1
@.str.453 = private unnamed_addr constant [16 x i8] c"java/lang/Float\00", align 1
@.str.454 = private unnamed_addr constant [23 x i8] c"java/lang/CharSequence\00", align 1
@.str.455 = private unnamed_addr constant [18 x i8] c"java/lang/Integer\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"java/lang/Long\00", align 1
@.str.457 = private unnamed_addr constant [17 x i8] c"java/lang/Object\00", align 1
@.str.458 = private unnamed_addr constant [24 x i8] c"mono/java/lang/Runnable\00", align 1
@.str.459 = private unnamed_addr constant [27 x i8] c"java/lang/RuntimeException\00", align 1
@.str.460 = private unnamed_addr constant [16 x i8] c"java/lang/Short\00", align 1
@.str.461 = private unnamed_addr constant [17 x i8] c"java/lang/String\00", align 1
@.str.462 = private unnamed_addr constant [17 x i8] c"java/lang/Thread\00", align 1
@.str.463 = private unnamed_addr constant [35 x i8] c"mono/java/lang/RunnableImplementor\00", align 1
@.str.464 = private unnamed_addr constant [20 x i8] c"java/lang/Throwable\00", align 1
@.str.465 = private unnamed_addr constant [29 x i8] c"java/lang/ClassCastException\00", align 1
@.str.466 = private unnamed_addr constant [22 x i8] c"java/lang/ClassLoader\00", align 1
@.str.467 = private unnamed_addr constant [15 x i8] c"java/lang/Enum\00", align 1
@.str.468 = private unnamed_addr constant [16 x i8] c"java/lang/Error\00", align 1
@.str.469 = private unnamed_addr constant [21 x i8] c"java/lang/Appendable\00", align 1
@.str.470 = private unnamed_addr constant [24 x i8] c"java/lang/AutoCloseable\00", align 1
@.str.471 = private unnamed_addr constant [19 x i8] c"java/lang/Iterable\00", align 1
@.str.472 = private unnamed_addr constant [35 x i8] c"java/lang/IllegalArgumentException\00", align 1
@.str.473 = private unnamed_addr constant [32 x i8] c"java/lang/IllegalStateException\00", align 1
@.str.474 = private unnamed_addr constant [36 x i8] c"java/lang/IndexOutOfBoundsException\00", align 1
@.str.475 = private unnamed_addr constant [19 x i8] c"java/lang/Runnable\00", align 1
@.str.476 = private unnamed_addr constant [23 x i8] c"java/lang/LinkageError\00", align 1
@.str.477 = private unnamed_addr constant [31 x i8] c"java/lang/NoClassDefFoundError\00", align 1
@.str.478 = private unnamed_addr constant [31 x i8] c"java/lang/NullPointerException\00", align 1
@.str.479 = private unnamed_addr constant [17 x i8] c"java/lang/Number\00", align 1
@.str.480 = private unnamed_addr constant [39 x i8] c"java/lang/ReflectiveOperationException\00", align 1
@.str.481 = private unnamed_addr constant [28 x i8] c"java/lang/SecurityException\00", align 1
@.str.482 = private unnamed_addr constant [28 x i8] c"java/lang/StackTraceElement\00", align 1
@.str.483 = private unnamed_addr constant [40 x i8] c"java/lang/UnsupportedOperationException\00", align 1
@.str.484 = private unnamed_addr constant [15 x i8] c"java/lang/Void\00", align 1
@.str.485 = private unnamed_addr constant [32 x i8] c"java/lang/annotation/Annotation\00", align 1
@.str.486 = private unnamed_addr constant [25 x i8] c"mono/android/TypeManager\00", align 1
@.str.487 = private unnamed_addr constant [36 x i8] c"androidx/lifecycle/SavedStateHandle\00", align 1
@.str.488 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavDirections\00", align 1
@.str.489 = private unnamed_addr constant [46 x i8] c"androidx/navigation/NavViewModelStoreProvider\00", align 1
@.str.490 = private unnamed_addr constant [30 x i8] c"androidx/navigation/NavAction\00", align 1
@.str.491 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavArgument\00", align 1
@.str.492 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavBackStackEntry\00", align 1
@.str.493 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavDeepLink\00", align 1
@.str.494 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkRequest\00", align 1
@.str.495 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavDestination\00", align 1
@.str.496 = private unnamed_addr constant [49 x i8] c"androidx/navigation/NavDestination$DeepLinkMatch\00", align 1
@.str.497 = private unnamed_addr constant [29 x i8] c"androidx/navigation/NavGraph\00", align 1
@.str.498 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavGraphNavigator\00", align 1
@.str.499 = private unnamed_addr constant [30 x i8] c"androidx/navigation/Navigator\00", align 1
@.str.500 = private unnamed_addr constant [37 x i8] c"androidx/navigation/Navigator$Extras\00", align 1
@.str.501 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavigatorProvider\00", align 1
@.str.502 = private unnamed_addr constant [35 x i8] c"androidx/navigation/NavigatorState\00", align 1
@.str.503 = private unnamed_addr constant [31 x i8] c"androidx/navigation/NavOptions\00", align 1
@.str.504 = private unnamed_addr constant [28 x i8] c"androidx/navigation/NavType\00", align 1
@.str.505 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/Lifecycle\00", align 1
@.str.506 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$Event\00", align 1
@.str.507 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/Lifecycle$State\00", align 1
@.str.508 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/LifecycleObserver\00", align 1
@.str.509 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/LifecycleOwner\00", align 1
@.str.510 = private unnamed_addr constant [35 x i8] c"crc6419642c0f0ae4fee2/MainActivity\00", align 1
@.str.511 = private unnamed_addr constant [38 x i8] c"crc6419642c0f0ae4fee2/MainApplication\00", align 1
@.str.512 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/content/res/AppCompatResources\00", align 1
@.str.513 = private unnamed_addr constant [59 x i8] c"androidx/appcompat/graphics/drawable/DrawableWrapperCompat\00", align 1
@.str.514 = private unnamed_addr constant [47 x i8] c"androidx/navigation/fragment/FragmentNavigator\00", align 1
@.str.515 = private unnamed_addr constant [59 x i8] c"androidx/navigation/fragment/FragmentNavigator$Destination\00", align 1
@.str.516 = private unnamed_addr constant [45 x i8] c"androidx/navigation/fragment/NavHostFragment\00", align 1
@.str.517 = private unnamed_addr constant [16 x i8] c"kotlin/Function\00", align 1
@.str.518 = private unnamed_addr constant [26 x i8] c"kotlin/sequences/Sequence\00", align 1
@.str.519 = private unnamed_addr constant [33 x i8] c"kotlin/reflect/KAnnotatedElement\00", align 1
@.str.520 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KCallable\00", align 1
@.str.521 = private unnamed_addr constant [22 x i8] c"kotlin/reflect/KClass\00", align 1
@.str.522 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KClassifier\00", align 1
@.str.523 = private unnamed_addr constant [37 x i8] c"kotlin/reflect/KDeclarationContainer\00", align 1
@.str.524 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KFunction\00", align 1
@.str.525 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KParameter$Kind\00", align 1
@.str.526 = private unnamed_addr constant [26 x i8] c"kotlin/reflect/KParameter\00", align 1
@.str.527 = private unnamed_addr constant [21 x i8] c"kotlin/reflect/KType\00", align 1
@.str.528 = private unnamed_addr constant [30 x i8] c"kotlin/reflect/KTypeParameter\00", align 1
@.str.529 = private unnamed_addr constant [31 x i8] c"kotlin/reflect/KTypeProjection\00", align 1
@.str.530 = private unnamed_addr constant [41 x i8] c"kotlin/reflect/KTypeProjection$Companion\00", align 1
@.str.531 = private unnamed_addr constant [25 x i8] c"kotlin/reflect/KVariance\00", align 1
@.str.532 = private unnamed_addr constant [27 x i8] c"kotlin/reflect/KVisibility\00", align 1
@.str.533 = private unnamed_addr constant [45 x i8] c"kotlin/jvm/internal/DefaultConstructorMarker\00", align 1
@.str.534 = private unnamed_addr constant [42 x i8] c"kotlin/jvm/internal/markers/KMappedMarker\00", align 1
@.str.535 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function0\00", align 1
@.str.536 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function1\00", align 1
@.str.537 = private unnamed_addr constant [31 x i8] c"kotlin/jvm/functions/Function2\00", align 1
@.str.538 = private unnamed_addr constant [25 x i8] c"kotlin/enums/EnumEntries\00", align 1
@.str.539 = private unnamed_addr constant [31 x i8] c"kotlin/coroutines/Continuation\00", align 1
@.str.540 = private unnamed_addr constant [39 x i8] c"kotlin/coroutines/CoroutineContext$Key\00", align 1
@.str.541 = private unnamed_addr constant [35 x i8] c"kotlin/coroutines/CoroutineContext\00", align 1
@.str.542 = private unnamed_addr constant [36 x i8] c"androidx/customview/widget/Openable\00", align 1
@.str.543 = private unnamed_addr constant [43 x i8] c"androidx/navigation/ui/AppBarConfiguration\00", align 1
@.str.544 = private unnamed_addr constant [51 x i8] c"androidx/navigation/ui/AppBarConfiguration$Builder\00", align 1
@.str.545 = private unnamed_addr constant [64 x i8] c"androidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener\00", align 1
@.str.546 = private unnamed_addr constant [36 x i8] c"androidx/navigation/ui/NavigationUI\00", align 1
@.str.547 = private unnamed_addr constant [38 x i8] c"androidx/viewpager2/widget/ViewPager2\00", align 1
@.str.548 = private unnamed_addr constant [59 x i8] c"androidx/viewpager2/widget/ViewPager2$OnPageChangeCallback\00", align 1
@.str.549 = private unnamed_addr constant [54 x i8] c"androidx/viewpager2/widget/ViewPager2$PageTransformer\00", align 1
@.str.550 = private unnamed_addr constant [49 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter\00", align 1
@.str.551 = private unnamed_addr constant [77 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback\00", align 1
@.str.552 = private unnamed_addr constant [97 x i8] c"androidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener\00", align 1
@.str.553 = private unnamed_addr constant [47 x i8] c"androidx/viewpager2/adapter/FragmentViewHolder\00", align 1
@.str.554 = private unnamed_addr constant [39 x i8] c"androidx/lifecycle/ViewModelStoreOwner\00", align 1
@.str.555 = private unnamed_addr constant [29 x i8] c"androidx/lifecycle/ViewModel\00", align 1
@.str.556 = private unnamed_addr constant [37 x i8] c"androidx/lifecycle/ViewModelProvider\00", align 1
@.str.557 = private unnamed_addr constant [55 x i8] c"androidx/lifecycle/ViewModelProvider$Factory$Companion\00", align 1
@.str.558 = private unnamed_addr constant [45 x i8] c"androidx/lifecycle/ViewModelProvider$Factory\00", align 1
@.str.559 = private unnamed_addr constant [34 x i8] c"androidx/lifecycle/ViewModelStore\00", align 1
@.str.560 = private unnamed_addr constant [44 x i8] c"androidx/lifecycle/viewmodel/CreationExtras\00", align 1
@.str.561 = private unnamed_addr constant [48 x i8] c"androidx/lifecycle/viewmodel/CreationExtras$Key\00", align 1
@.str.562 = private unnamed_addr constant [50 x i8] c"androidx/lifecycle/viewmodel/ViewModelInitializer\00", align 1
@.str.563 = private unnamed_addr constant [50 x i8] c"com/google/android/material/shape/CornerTreatment\00", align 1
@.str.564 = private unnamed_addr constant [48 x i8] c"com/google/android/material/shape/EdgeTreatment\00", align 1
@.str.565 = private unnamed_addr constant [45 x i8] c"com/google/android/material/shape/CornerSize\00", align 1
@.str.566 = private unnamed_addr constant [56 x i8] c"com/google/android/material/shape/MaterialShapeDrawable\00", align 1
@.str.567 = private unnamed_addr constant [83 x i8] c"com/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState\00", align 1
@.str.568 = private unnamed_addr constant [55 x i8] c"com/google/android/material/shape/ShapeAppearanceModel\00", align 1
@.str.569 = private unnamed_addr constant [63 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$Builder\00", align 1
@.str.570 = private unnamed_addr constant [79 x i8] c"com/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator\00", align 1
@.str.571 = private unnamed_addr constant [44 x i8] c"com/google/android/material/shape/ShapePath\00", align 1
@.str.572 = private unnamed_addr constant [49 x i8] c"com/google/android/material/shape/ShapePathModel\00", align 1
@.str.573 = private unnamed_addr constant [57 x i8] c"com/google/android/material/imageview/ShapeableImageView\00", align 1
@.str.574 = private unnamed_addr constant [63 x i8] c"com/google/android/material/elevation/ElevationOverlayProvider\00", align 1
@.str.575 = private unnamed_addr constant [54 x i8] c"com/google/android/material/checkbox/MaterialCheckBox\00", align 1
@.str.576 = private unnamed_addr constant [84 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener\00", align 1
@.str.577 = private unnamed_addr constant [100 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnCheckedStateChangedListenerImplementor\00", align 1
@.str.578 = private unnamed_addr constant [77 x i8] c"com/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener\00", align 1
@.str.579 = private unnamed_addr constant [93 x i8] c"mono/com/google/android/material/checkbox/MaterialCheckBox_OnErrorChangedListenerImplementor\00", align 1
@.str.580 = private unnamed_addr constant [50 x i8] c"com/google/android/material/button/MaterialButton\00", align 1
@.str.581 = private unnamed_addr constant [74 x i8] c"com/google/android/material/button/MaterialButton$OnCheckedChangeListener\00", align 1
@.str.582 = private unnamed_addr constant [90 x i8] c"mono/com/google/android/material/button/MaterialButton_OnCheckedChangeListenerImplementor\00", align 1
@.str.583 = private unnamed_addr constant [60 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior\00", align 1
@.str.584 = private unnamed_addr constant [80 x i8] c"com/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback\00", align 1
@.str.585 = private unnamed_addr constant [58 x i8] c"com/google/android/material/bottomsheet/BottomSheetDialog\00", align 1
@.str.586 = private unnamed_addr constant [48 x i8] c"com/google/android/material/badge/BadgeDrawable\00", align 1
@.str.587 = private unnamed_addr constant [57 x i8] c"com/google/android/material/navigation/NavigationBarView\00", align 1
@.str.588 = private unnamed_addr constant [82 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemReselectedListener\00", align 1
@.str.589 = private unnamed_addr constant [98 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemReselectedListenerImplementor\00", align 1
@.str.590 = private unnamed_addr constant [80 x i8] c"com/google/android/material/navigation/NavigationBarView$OnItemSelectedListener\00", align 1
@.str.591 = private unnamed_addr constant [96 x i8] c"mono/com/google/android/material/navigation/NavigationBarView_OnItemSelectedListenerImplementor\00", align 1
@.str.592 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarItemView\00", align 1
@.str.593 = private unnamed_addr constant [61 x i8] c"com/google/android/material/navigation/NavigationBarMenuView\00", align 1
@.str.594 = private unnamed_addr constant [62 x i8] c"com/google/android/material/navigation/NavigationBarPresenter\00", align 1
@.str.595 = private unnamed_addr constant [54 x i8] c"com/google/android/material/navigation/NavigationView\00", align 1
@.str.596 = private unnamed_addr constant [87 x i8] c"com/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.597 = private unnamed_addr constant [103 x i8] c"mono/com/google/android/material/navigation/NavigationView_OnNavigationItemSelectedListenerImplementor\00", align 1
@.str.598 = private unnamed_addr constant [43 x i8] c"com/google/android/material/tabs/TabLayout\00", align 1
@.str.599 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayout$TabView\00", align 1
@.str.600 = private unnamed_addr constant [69 x i8] c"com/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener\00", align 1
@.str.601 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/tabs/TabLayout_BaseOnTabSelectedListenerImplementor\00", align 1
@.str.602 = private unnamed_addr constant [65 x i8] c"com/google/android/material/tabs/TabLayout$OnTabSelectedListener\00", align 1
@.str.603 = private unnamed_addr constant [47 x i8] c"com/google/android/material/tabs/TabLayout$Tab\00", align 1
@.str.604 = private unnamed_addr constant [51 x i8] c"com/google/android/material/tabs/TabLayoutMediator\00", align 1
@.str.605 = private unnamed_addr constant [76 x i8] c"com/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy\00", align 1
@.str.606 = private unnamed_addr constant [67 x i8] c"com/google/android/material/internal/StaticLayoutBuilderConfigurer\00", align 1
@.str.607 = private unnamed_addr constant [60 x i8] c"com/google/android/material/internal/ScrimInsetsFrameLayout\00", align 1
@.str.608 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationItemView\00", align 1
@.str.609 = private unnamed_addr constant [70 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationMenuView\00", align 1
@.str.610 = private unnamed_addr constant [66 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView\00", align 1
@.str.611 = private unnamed_addr constant [101 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener\00", align 1
@.str.612 = private unnamed_addr constant [99 x i8] c"com/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener\00", align 1
@.str.613 = private unnamed_addr constant [59 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout\00", align 1
@.str.614 = private unnamed_addr constant [89 x i8] c"com/google/android/material/appbar/CollapsingToolbarLayout$StaticLayoutBuilderConfigurer\00", align 1
@.str.615 = private unnamed_addr constant [48 x i8] c"com/google/android/material/appbar/AppBarLayout\00", align 1
@.str.616 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior\00", align 1
@.str.617 = private unnamed_addr constant [78 x i8] c"com/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback\00", align 1
@.str.618 = private unnamed_addr constant [57 x i8] c"com/google/android/material/appbar/AppBarLayout$Behavior\00", align 1
@.str.619 = private unnamed_addr constant [66 x i8] c"com/google/android/material/appbar/AppBarLayout$ChildScrollEffect\00", align 1
@.str.620 = private unnamed_addr constant [61 x i8] c"com/google/android/material/appbar/AppBarLayout$LayoutParams\00", align 1
@.str.621 = private unnamed_addr constant [69 x i8] c"com/google/android/material/appbar/AppBarLayout$LiftOnScrollListener\00", align 1
@.str.622 = private unnamed_addr constant [85 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_LiftOnScrollListenerImplementor\00", align 1
@.str.623 = private unnamed_addr constant [72 x i8] c"com/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener\00", align 1
@.str.624 = private unnamed_addr constant [88 x i8] c"mono/com/google/android/material/appbar/AppBarLayout_OnOffsetChangedListenerImplementor\00", align 1
@.str.625 = private unnamed_addr constant [70 x i8] c"com/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior\00", align 1
@.str.626 = private unnamed_addr constant [50 x i8] c"com/google/android/material/appbar/HeaderBehavior\00", align 1
@.str.627 = private unnamed_addr constant [63 x i8] c"com/google/android/material/appbar/HeaderScrollingViewBehavior\00", align 1
@.str.628 = private unnamed_addr constant [51 x i8] c"com/google/android/material/appbar/MaterialToolbar\00", align 1
@.str.629 = private unnamed_addr constant [54 x i8] c"com/google/android/material/appbar/ViewOffsetBehavior\00", align 1
@.str.630 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/GridLayoutManager\00", align 1
@.str.631 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup\00", align 1
@.str.632 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchUIUtil\00", align 1
@.str.633 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/ItemTouchHelper\00", align 1
@.str.634 = private unnamed_addr constant [54 x i8] c"androidx/recyclerview/widget/ItemTouchHelper$Callback\00", align 1
@.str.635 = private unnamed_addr constant [49 x i8] c"androidx/recyclerview/widget/LinearLayoutManager\00", align 1
@.str.636 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/LinearSmoothScroller\00", align 1
@.str.637 = private unnamed_addr constant [46 x i8] c"androidx/recyclerview/widget/LinearSnapHelper\00", align 1
@.str.638 = private unnamed_addr constant [47 x i8] c"androidx/recyclerview/widget/OrientationHelper\00", align 1
@.str.639 = private unnamed_addr constant [45 x i8] c"androidx/recyclerview/widget/PagerSnapHelper\00", align 1
@.str.640 = private unnamed_addr constant [42 x i8] c"androidx/recyclerview/widget/RecyclerView\00", align 1
@.str.641 = private unnamed_addr constant [50 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter\00", align 1
@.str.642 = private unnamed_addr constant [73 x i8] c"androidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy\00", align 1
@.str.643 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$AdapterDataObserver\00", align 1
@.str.644 = private unnamed_addr constant [68 x i8] c"androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback\00", align 1
@.str.645 = private unnamed_addr constant [60 x i8] c"androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory\00", align 1
@.str.646 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator\00", align 1
@.str.647 = private unnamed_addr constant [84 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener\00", align 1
@.str.648 = private unnamed_addr constant [70 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo\00", align 1
@.str.649 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$ItemDecoration\00", align 1
@.str.650 = private unnamed_addr constant [56 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager\00", align 1
@.str.651 = private unnamed_addr constant [79 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry\00", align 1
@.str.652 = private unnamed_addr constant [67 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutManager$Properties\00", align 1
@.str.653 = private unnamed_addr constant [55 x i8] c"androidx/recyclerview/widget/RecyclerView$LayoutParams\00", align 1
@.str.654 = private unnamed_addr constant [75 x i8] c"androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener\00", align 1
@.str.655 = private unnamed_addr constant [91 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnChildAttachStateChangeListenerImplementor\00", align 1
@.str.656 = private unnamed_addr constant [58 x i8] c"androidx/recyclerview/widget/RecyclerView$OnFlingListener\00", align 1
@.str.657 = private unnamed_addr constant [62 x i8] c"androidx/recyclerview/widget/RecyclerView$OnItemTouchListener\00", align 1
@.str.658 = private unnamed_addr constant [78 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_OnItemTouchListenerImplementor\00", align 1
@.str.659 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$OnScrollListener\00", align 1
@.str.660 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecycledViewPool\00", align 1
@.str.661 = private unnamed_addr constant [51 x i8] c"androidx/recyclerview/widget/RecyclerView$Recycler\00", align 1
@.str.662 = private unnamed_addr constant [59 x i8] c"androidx/recyclerview/widget/RecyclerView$RecyclerListener\00", align 1
@.str.663 = private unnamed_addr constant [75 x i8] c"mono/androidx/recyclerview/widget/RecyclerView_RecyclerListenerImplementor\00", align 1
@.str.664 = private unnamed_addr constant [57 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller\00", align 1
@.str.665 = private unnamed_addr constant [64 x i8] c"androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action\00", align 1
@.str.666 = private unnamed_addr constant [48 x i8] c"androidx/recyclerview/widget/RecyclerView$State\00", align 1
@.str.667 = private unnamed_addr constant [61 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewCacheExtension\00", align 1
@.str.668 = private unnamed_addr constant [53 x i8] c"androidx/recyclerview/widget/RecyclerView$ViewHolder\00", align 1
@.str.669 = private unnamed_addr constant [63 x i8] c"androidx/recyclerview/widget/RecyclerViewAccessibilityDelegate\00", align 1
@.str.670 = private unnamed_addr constant [40 x i8] c"androidx/recyclerview/widget/SnapHelper\00", align 1
@.str.671 = private unnamed_addr constant [38 x i8] c"androidx/collection/SparseArrayCompat\00", align 1
@.str.672 = private unnamed_addr constant [39 x i8] c"androidx/viewpager/widget/PagerAdapter\00", align 1
@.str.673 = private unnamed_addr constant [36 x i8] c"androidx/viewpager/widget/ViewPager\00", align 1
@.str.674 = private unnamed_addr constant [60 x i8] c"androidx/viewpager/widget/ViewPager$OnAdapterChangeListener\00", align 1
@.str.675 = private unnamed_addr constant [76 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnAdapterChangeListenerImplementor\00", align 1
@.str.676 = private unnamed_addr constant [57 x i8] c"androidx/viewpager/widget/ViewPager$OnPageChangeListener\00", align 1
@.str.677 = private unnamed_addr constant [73 x i8] c"mono/androidx/viewpager/widget/ViewPager_OnPageChangeListenerImplementor\00", align 1
@.str.678 = private unnamed_addr constant [52 x i8] c"androidx/viewpager/widget/ViewPager$PageTransformer\00", align 1
@.str.679 = private unnamed_addr constant [52 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout\00", align 1
@.str.680 = private unnamed_addr constant [61 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior\00", align 1
@.str.681 = private unnamed_addr constant [65 x i8] c"androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams\00", align 1
@.str.682 = private unnamed_addr constant [34 x i8] c"androidx/activity/BackEventCompat\00", align 1
@.str.683 = private unnamed_addr constant [36 x i8] c"androidx/activity/ComponentActivity\00", align 1
@.str.684 = private unnamed_addr constant [34 x i8] c"androidx/activity/ComponentDialog\00", align 1
@.str.685 = private unnamed_addr constant [37 x i8] c"androidx/activity/FullyDrawnReporter\00", align 1
@.str.686 = private unnamed_addr constant [40 x i8] c"androidx/activity/OnBackPressedCallback\00", align 1
@.str.687 = private unnamed_addr constant [42 x i8] c"androidx/activity/OnBackPressedDispatcher\00", align 1
@.str.688 = private unnamed_addr constant [58 x i8] c"androidx/activity/contextaware/OnContextAvailableListener\00", align 1
@.str.689 = private unnamed_addr constant [74 x i8] c"mono/androidx/activity/contextaware/OnContextAvailableListenerImplementor\00", align 1
@.str.690 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultLauncher\00", align 1
@.str.691 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultRegistry\00", align 1
@.str.692 = private unnamed_addr constant [48 x i8] c"androidx/activity/result/ActivityResultCallback\00", align 1
@.str.693 = private unnamed_addr constant [57 x i8] c"androidx/activity/result/contract/ActivityResultContract\00", align 1
@.str.694 = private unnamed_addr constant [75 x i8] c"androidx/activity/result/contract/ActivityResultContract$SynchronousResult\00", align 1
@.str.695 = private unnamed_addr constant [28 x i8] c"androidx/core/util/Consumer\00", align 1
@.str.696 = private unnamed_addr constant [29 x i8] c"androidx/core/util/Predicate\00", align 1
@.str.697 = private unnamed_addr constant [24 x i8] c"androidx/core/util/Pair\00", align 1
@.str.698 = private unnamed_addr constant [34 x i8] c"androidx/core/os/LocaleListCompat\00", align 1
@.str.699 = private unnamed_addr constant [44 x i8] c"androidx/core/internal/view/SupportMenuItem\00", align 1
@.str.700 = private unnamed_addr constant [30 x i8] c"androidx/core/graphics/Insets\00", align 1
@.str.701 = private unnamed_addr constant [47 x i8] c"androidx/core/graphics/drawable/DrawableCompat\00", align 1
@.str.702 = private unnamed_addr constant [36 x i8] c"androidx/core/content/ContextCompat\00", align 1
@.str.703 = private unnamed_addr constant [35 x i8] c"androidx/core/content/FileProvider\00", align 1
@.str.704 = private unnamed_addr constant [42 x i8] c"androidx/core/content/res/ResourcesCompat\00", align 1
@.str.705 = private unnamed_addr constant [55 x i8] c"androidx/core/content/res/ResourcesCompat$FontCallback\00", align 1
@.str.706 = private unnamed_addr constant [43 x i8] c"androidx/core/content/pm/PackageInfoCompat\00", align 1
@.str.707 = private unnamed_addr constant [40 x i8] c"androidx/core/app/ActivityOptionsCompat\00", align 1
@.str.708 = private unnamed_addr constant [36 x i8] c"androidx/core/app/ComponentActivity\00", align 1
@.str.709 = private unnamed_addr constant [46 x i8] c"androidx/core/app/ComponentActivity$ExtraData\00", align 1
@.str.710 = private unnamed_addr constant [40 x i8] c"androidx/core/app/SharedElementCallback\00", align 1
@.str.711 = private unnamed_addr constant [70 x i8] c"androidx/core/app/SharedElementCallback$OnSharedElementsReadyListener\00", align 1
@.str.712 = private unnamed_addr constant [35 x i8] c"androidx/core/app/TaskStackBuilder\00", align 1
@.str.713 = private unnamed_addr constant [38 x i8] c"androidx/core/widget/NestedScrollView\00", align 1
@.str.714 = private unnamed_addr constant [61 x i8] c"androidx/core/widget/NestedScrollView$OnScrollChangeListener\00", align 1
@.str.715 = private unnamed_addr constant [77 x i8] c"mono/androidx/core/widget/NestedScrollView_OnScrollChangeListenerImplementor\00", align 1
@.str.716 = private unnamed_addr constant [42 x i8] c"androidx/core/widget/CompoundButtonCompat\00", align 1
@.str.717 = private unnamed_addr constant [36 x i8] c"androidx/core/widget/TextViewCompat\00", align 1
@.str.718 = private unnamed_addr constant [47 x i8] c"androidx/core/view/AccessibilityDelegateCompat\00", align 1
@.str.719 = private unnamed_addr constant [34 x i8] c"androidx/core/view/ActionProvider\00", align 1
@.str.720 = private unnamed_addr constant [58 x i8] c"androidx/core/view/ActionProvider$SubUiVisibilityListener\00", align 1
@.str.721 = private unnamed_addr constant [74 x i8] c"mono/androidx/core/view/ActionProvider_SubUiVisibilityListenerImplementor\00", align 1
@.str.722 = private unnamed_addr constant [53 x i8] c"androidx/core/view/ActionProvider$VisibilityListener\00", align 1
@.str.723 = private unnamed_addr constant [69 x i8] c"mono/androidx/core/view/ActionProvider_VisibilityListenerImplementor\00", align 1
@.str.724 = private unnamed_addr constant [37 x i8] c"androidx/core/view/ContentInfoCompat\00", align 1
@.str.725 = private unnamed_addr constant [39 x i8] c"androidx/core/view/DisplayCutoutCompat\00", align 1
@.str.726 = private unnamed_addr constant [32 x i8] c"androidx/core/view/MenuProvider\00", align 1
@.str.727 = private unnamed_addr constant [47 x i8] c"androidx/core/view/OnApplyWindowInsetsListener\00", align 1
@.str.728 = private unnamed_addr constant [44 x i8] c"androidx/core/view/OnReceiveContentListener\00", align 1
@.str.729 = private unnamed_addr constant [33 x i8] c"androidx/core/view/ScrollingView\00", align 1
@.str.730 = private unnamed_addr constant [48 x i8] c"androidx/core/view/ViewPropertyAnimatorListener\00", align 1
@.str.731 = private unnamed_addr constant [54 x i8] c"androidx/core/view/ViewPropertyAnimatorUpdateListener\00", align 1
@.str.732 = private unnamed_addr constant [62 x i8] c"androidx/core/view/WindowInsetsAnimationControlListenerCompat\00", align 1
@.str.733 = private unnamed_addr constant [34 x i8] c"androidx/core/view/MenuItemCompat\00", align 1
@.str.734 = private unnamed_addr constant [57 x i8] c"androidx/core/view/MenuItemCompat$OnActionExpandListener\00", align 1
@.str.735 = private unnamed_addr constant [37 x i8] c"androidx/core/view/PointerIconCompat\00", align 1
@.str.736 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ScaleGestureDetectorCompat\00", align 1
@.str.737 = private unnamed_addr constant [30 x i8] c"androidx/core/view/ViewCompat\00", align 1
@.str.738 = private unnamed_addr constant [64 x i8] c"androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat\00", align 1
@.str.739 = private unnamed_addr constant [46 x i8] c"androidx/core/view/ViewPropertyAnimatorCompat\00", align 1
@.str.740 = private unnamed_addr constant [39 x i8] c"androidx/core/view/ViewStructureCompat\00", align 1
@.str.741 = private unnamed_addr constant [47 x i8] c"androidx/core/view/WindowInsetsAnimationCompat\00", align 1
@.str.742 = private unnamed_addr constant [60 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$BoundsCompat\00", align 1
@.str.743 = private unnamed_addr constant [56 x i8] c"androidx/core/view/WindowInsetsAnimationCompat$Callback\00", align 1
@.str.744 = private unnamed_addr constant [57 x i8] c"androidx/core/view/WindowInsetsAnimationControllerCompat\00", align 1
@.str.745 = private unnamed_addr constant [38 x i8] c"androidx/core/view/WindowInsetsCompat\00", align 1
@.str.746 = private unnamed_addr constant [43 x i8] c"androidx/core/view/WindowInsetsCompat$Type\00", align 1
@.str.747 = private unnamed_addr constant [48 x i8] c"androidx/core/view/WindowInsetsControllerCompat\00", align 1
@.str.748 = private unnamed_addr constant [84 x i8] c"androidx/core/view/WindowInsetsControllerCompat$OnControllableInsetsChangedListener\00", align 1
@.str.749 = private unnamed_addr constant [100 x i8] c"mono/androidx/core/view/WindowInsetsControllerCompat_OnControllableInsetsChangedListenerImplementor\00", align 1
@.str.750 = private unnamed_addr constant [62 x i8] c"androidx/core/view/contentcapture/ContentCaptureSessionCompat\00", align 1
@.str.751 = private unnamed_addr constant [45 x i8] c"androidx/core/view/autofill/AutofillIdCompat\00", align 1
@.str.752 = private unnamed_addr constant [61 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat\00", align 1
@.str.753 = private unnamed_addr constant [87 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat\00", align 1
@.str.754 = private unnamed_addr constant [82 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat\00", align 1
@.str.755 = private unnamed_addr constant [86 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat\00", align 1
@.str.756 = private unnamed_addr constant [77 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat\00", align 1
@.str.757 = private unnamed_addr constant [85 x i8] c"androidx/core/view/accessibility/AccessibilityNodeInfoCompat$TouchDelegateInfoCompat\00", align 1
@.str.758 = private unnamed_addr constant [65 x i8] c"androidx/core/view/accessibility/AccessibilityNodeProviderCompat\00", align 1
@.str.759 = private unnamed_addr constant [63 x i8] c"androidx/core/view/accessibility/AccessibilityWindowInfoCompat\00", align 1
@.str.760 = private unnamed_addr constant [75 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments\00", align 1
@.str.761 = private unnamed_addr constant [58 x i8] c"androidx/core/view/accessibility/AccessibilityViewCommand\00", align 1
@.str.762 = private unnamed_addr constant [41 x i8] c"androidx/core/text/PrecomputedTextCompat\00", align 1
@.str.763 = private unnamed_addr constant [48 x i8] c"androidx/core/text/PrecomputedTextCompat$Params\00", align 1
@.str.764 = private unnamed_addr constant [31 x i8] c"androidx/loader/content/Loader\00", align 1
@.str.765 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCanceledListener\00", align 1
@.str.766 = private unnamed_addr constant [54 x i8] c"androidx/loader/content/Loader$OnLoadCompleteListener\00", align 1
@.str.767 = private unnamed_addr constant [34 x i8] c"androidx/loader/app/LoaderManager\00", align 1
@.str.768 = private unnamed_addr constant [50 x i8] c"androidx/loader/app/LoaderManager$LoaderCallbacks\00", align 1
@.str.769 = private unnamed_addr constant [55 x i8] c"crc64f728827fec74e9c3/TapWindowTracker_GestureListener\00", align 1
@.str.770 = private unnamed_addr constant [40 x i8] c"crc64f728827fec74e9c3/Toolbar_Container\00", align 1
@.str.771 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/ColorChangeRevealDrawable\00", align 1
@.str.772 = private unnamed_addr constant [52 x i8] c"crc64338477404e88479c/ControlsAccessibilityDelegate\00", align 1
@.str.773 = private unnamed_addr constant [48 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler\00", align 1
@.str.774 = private unnamed_addr constant [69 x i8] c"crc64338477404e88479c/DragAndDropGestureHandler_CustomLocalStateData\00", align 1
@.str.775 = private unnamed_addr constant [66 x i8] c"crc64338477404e88479c/ToolbarExtensions_ToolbarTitleIconImageView\00", align 1
@.str.776 = private unnamed_addr constant [40 x i8] c"crc64338477404e88479c/FragmentContainer\00", align 1
@.str.777 = private unnamed_addr constant [46 x i8] c"crc64338477404e88479c/GenericAnimatorListener\00", align 1
@.str.778 = private unnamed_addr constant [50 x i8] c"crc64338477404e88479c/GenericGlobalLayoutListener\00", align 1
@.str.779 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/GenericMenuClickListener\00", align 1
@.str.780 = private unnamed_addr constant [45 x i8] c"crc64338477404e88479c/GradientStrokeDrawable\00", align 1
@.str.781 = private unnamed_addr constant [43 x i8] c"crc64338477404e88479c/InnerGestureListener\00", align 1
@.str.782 = private unnamed_addr constant [41 x i8] c"crc64338477404e88479c/InnerScaleListener\00", align 1
@.str.783 = private unnamed_addr constant [36 x i8] c"crc64338477404e88479c/MauiViewPager\00", align 1
@.str.784 = private unnamed_addr constant [54 x i8] c"crc64338477404e88479c/MultiPageFragmentStateAdapter_1\00", align 1
@.str.785 = private unnamed_addr constant [44 x i8] c"crc64338477404e88479c/PointerGestureHandler\00", align 1
@.str.786 = private unnamed_addr constant [47 x i8] c"crc64338477404e88479c/TapAndPanGestureDetector\00", align 1
@.str.787 = private unnamed_addr constant [59 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment\00", align 1
@.str.788 = private unnamed_addr constant [81 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog\00", align 1
@.str.789 = private unnamed_addr constant [90 x i8] c"crc64338477404e88479c/ModalNavigationManager_ModalFragment_CustomComponentDialog_CallBack\00", align 1
@.str.790 = private unnamed_addr constant [36 x i8] c"crc640ec207abc449b2ca/ContainerView\00", align 1
@.str.791 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/CustomFrameLayout\00", align 1
@.str.792 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellContentFragment\00", align 1
@.str.793 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellFlyoutLayout\00", align 1
@.str.794 = private unnamed_addr constant [49 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter\00", align 1
@.str.795 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ShellLinearLayout\00", align 1
@.str.796 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRecyclerAdapter_ElementViewHolder\00", align 1
@.str.797 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellFlyoutRenderer\00", align 1
@.str.798 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer\00", align 1
@.str.799 = private unnamed_addr constant [74 x i8] c"crc640ec207abc449b2ca/ShellFlyoutTemplatedContentRenderer_HeaderContainer\00", align 1
@.str.800 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/RecyclerViewContainer\00", align 1
@.str.801 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ScrollLayoutManager\00", align 1
@.str.802 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellFragmentContainer\00", align 1
@.str.803 = private unnamed_addr constant [48 x i8] c"crc640ec207abc449b2ca/ShellFragmentStateAdapter\00", align 1
@.str.804 = private unnamed_addr constant [40 x i8] c"crc640ec207abc449b2ca/ShellItemRenderer\00", align 1
@.str.805 = private unnamed_addr constant [44 x i8] c"crc640ec207abc449b2ca/ShellItemRendererBase\00", align 1
@.str.806 = private unnamed_addr constant [41 x i8] c"crc640ec207abc449b2ca/ShellPageContainer\00", align 1
@.str.807 = private unnamed_addr constant [38 x i8] c"crc640ec207abc449b2ca/ShellSearchView\00", align 1
@.str.808 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchView_ClipDrawableWrapper\00", align 1
@.str.809 = private unnamed_addr constant [45 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter\00", align 1
@.str.810 = private unnamed_addr constant [58 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_CustomFilter\00", align 1
@.str.811 = private unnamed_addr constant [59 x i8] c"crc640ec207abc449b2ca/ShellSearchViewAdapter_ObjectWrapper\00", align 1
@.str.812 = private unnamed_addr constant [43 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer\00", align 1
@.str.813 = private unnamed_addr constant [64 x i8] c"crc640ec207abc449b2ca/ShellSectionRenderer_ViewPagerPageChanged\00", align 1
@.str.814 = private unnamed_addr constant [42 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker\00", align 1
@.str.815 = private unnamed_addr constant [67 x i8] c"crc640ec207abc449b2ca/ShellToolbarTracker_FlyoutIconDrawerDrawable\00", align 1
@.str.816 = private unnamed_addr constant [49 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_TempView\00", align 1
@.str.817 = private unnamed_addr constant [50 x i8] c"crc649ff77a65592e7d55/TabbedPageManager_Listeners\00", align 1
@.str.818 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/CarouselViewAdapter_2\00", align 1
@.str.819 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/EmptyViewAdapter\00", align 1
@.str.820 = private unnamed_addr constant [50 x i8] c"crc645d80431ce5f73f11/GroupableItemsViewAdapter_2\00", align 1
@.str.821 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/ItemsViewAdapter_2\00", align 1
@.str.822 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/ReorderableItemsViewAdapter_2\00", align 1
@.str.823 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/SelectableItemsViewAdapter_2\00", align 1
@.str.824 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/StructuredItemsViewAdapter_2\00", align 1
@.str.825 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/CarouselSpacingItemDecoration\00", align 1
@.str.826 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/CarouselViewOnScrollListener\00", align 1
@.str.827 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/DataChangeObserver\00", align 1
@.str.828 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/GridLayoutSpanSizeLookup\00", align 1
@.str.829 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/ItemContentView\00", align 1
@.str.830 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView\00", align 1
@.str.831 = private unnamed_addr constant [82 x i8] c"crc645d80431ce5f73f11/MauiCarouselRecyclerView_CarouselViewOnGlobalLayoutListener\00", align 1
@.str.832 = private unnamed_addr constant [41 x i8] c"crc645d80431ce5f73f11/MauiRecyclerView_3\00", align 1
@.str.833 = private unnamed_addr constant [47 x i8] c"crc645d80431ce5f73f11/PositionalSmoothScroller\00", align 1
@.str.834 = private unnamed_addr constant [51 x i8] c"crc645d80431ce5f73f11/RecyclerViewScrollListener_2\00", align 1
@.str.835 = private unnamed_addr constant [35 x i8] c"crc645d80431ce5f73f11/ScrollHelper\00", align 1
@.str.836 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SelectableViewHolder\00", align 1
@.str.837 = private unnamed_addr constant [52 x i8] c"crc645d80431ce5f73f11/SimpleItemTouchHelperCallback\00", align 1
@.str.838 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SimpleViewHolder\00", align 1
@.str.839 = private unnamed_addr constant [43 x i8] c"crc645d80431ce5f73f11/SizedItemContentView\00", align 1
@.str.840 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/CenterSnapHelper\00", align 1
@.str.841 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/EdgeSnapHelper\00", align 1
@.str.842 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/EndSingleSnapHelper\00", align 1
@.str.843 = private unnamed_addr constant [36 x i8] c"crc645d80431ce5f73f11/EndSnapHelper\00", align 1
@.str.844 = private unnamed_addr constant [42 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper\00", align 1
@.str.845 = private unnamed_addr constant [64 x i8] c"crc645d80431ce5f73f11/NongreedySnapHelper_InitialScrollListener\00", align 1
@.str.846 = private unnamed_addr constant [39 x i8] c"crc645d80431ce5f73f11/SingleSnapHelper\00", align 1
@.str.847 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/StartSingleSnapHelper\00", align 1
@.str.848 = private unnamed_addr constant [38 x i8] c"crc645d80431ce5f73f11/StartSnapHelper\00", align 1
@.str.849 = private unnamed_addr constant [44 x i8] c"crc645d80431ce5f73f11/SpacingItemDecoration\00", align 1
@.str.850 = private unnamed_addr constant [46 x i8] c"crc645d80431ce5f73f11/TemplatedItemViewHolder\00", align 1
@.str.851 = private unnamed_addr constant [37 x i8] c"crc645d80431ce5f73f11/TextViewHolder\00", align 1
@.str.852 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/FrameRenderer\00", align 1
@.str.853 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/ViewRenderer\00", align 1
@.str.854 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/ViewRenderer_2\00", align 1
@.str.855 = private unnamed_addr constant [46 x i8] c"crc64e1fb321c08285b90/VisualElementRenderer_1\00", align 1
@.str.856 = private unnamed_addr constant [35 x i8] c"crc64e1fb321c08285b90/BaseCellView\00", align 1
@.str.857 = private unnamed_addr constant [34 x i8] c"crc64e1fb321c08285b90/CellAdapter\00", align 1
@.str.858 = private unnamed_addr constant [50 x i8] c"crc64e1fb321c08285b90/CellRenderer_RendererHolder\00", align 1
@.str.859 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/ConditionalFocusLayout\00", align 1
@.str.860 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/EntryCellEditText\00", align 1
@.str.861 = private unnamed_addr constant [36 x i8] c"crc64e1fb321c08285b90/EntryCellView\00", align 1
@.str.862 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/GroupedListViewAdapter\00", align 1
@.str.863 = private unnamed_addr constant [38 x i8] c"crc64e1fb321c08285b90/ListViewAdapter\00", align 1
@.str.864 = private unnamed_addr constant [39 x i8] c"crc64e1fb321c08285b90/ListViewRenderer\00", align 1
@.str.865 = private unnamed_addr constant [49 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_Container\00", align 1
@.str.866 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_SwipeRefreshLayoutWithFixedNestedScrolling\00", align 1
@.str.867 = private unnamed_addr constant [74 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewSwipeRefreshLayoutListener\00", align 1
@.str.868 = private unnamed_addr constant [62 x i8] c"crc64e1fb321c08285b90/ListViewRenderer_ListViewScrollDetector\00", align 1
@.str.869 = private unnamed_addr constant [37 x i8] c"crc64e1fb321c08285b90/SwitchCellView\00", align 1
@.str.870 = private unnamed_addr constant [52 x i8] c"crc64e1fb321c08285b90/TextCellRenderer_TextCellView\00", align 1
@.str.871 = private unnamed_addr constant [57 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer\00", align 1
@.str.872 = private unnamed_addr constant [76 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_TapGestureListener\00", align 1
@.str.873 = private unnamed_addr constant [82 x i8] c"crc64e1fb321c08285b90/ViewCellRenderer_ViewCellContainer_LongPressGestureListener\00", align 1
@.str.874 = private unnamed_addr constant [45 x i8] c"crc64e1fb321c08285b90/TableViewModelRenderer\00", align 1
@.str.875 = private unnamed_addr constant [40 x i8] c"crc64e1fb321c08285b90/TableViewRenderer\00", align 1
@.str.876 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/CoroutineScope\00", align 1
@.str.877 = private unnamed_addr constant [29 x i8] c"kotlinx/coroutines/flow/Flow\00", align 1
@.str.878 = private unnamed_addr constant [38 x i8] c"kotlinx/coroutines/flow/FlowCollector\00", align 1
@.str.879 = private unnamed_addr constant [35 x i8] c"kotlinx/coroutines/flow/SharedFlow\00", align 1
@.str.880 = private unnamed_addr constant [34 x i8] c"kotlinx/coroutines/flow/StateFlow\00", align 1
@.str.881 = private unnamed_addr constant [59 x i8] c"crc6468b6408a11370c2f/WebAuthenticatorIntermediateActivity\00", align 1
@.str.882 = private unnamed_addr constant [39 x i8] c"microsoft/maui/essentials/fileProvider\00", align 1
@.str.883 = private unnamed_addr constant [52 x i8] c"crc64e53d2f592022988e/ConnectivityBroadcastReceiver\00", align 1
@.str.884 = private unnamed_addr constant [55 x i8] c"crc64ba438d8f48cf7e75/ActivityLifecycleContextListener\00", align 1
@.str.885 = private unnamed_addr constant [43 x i8] c"crc64ba438d8f48cf7e75/IntermediateActivity\00", align 1
@.str.886 = private unnamed_addr constant [59 x i8] c"crc640a8d9a12ddbf2cf2/DeviceDisplayImplementation_Listener\00", align 1
@.str.887 = private unnamed_addr constant [47 x i8] c"crc640a8d9a12ddbf2cf2/BatteryBroadcastReceiver\00", align 1
@.str.888 = private unnamed_addr constant [51 x i8] c"crc640a8d9a12ddbf2cf2/EnergySaverBroadcastReceiver\00", align 1
@.str.889 = private unnamed_addr constant [42 x i8] c"androidx/drawerlayout/widget/DrawerLayout\00", align 1
@.str.890 = private unnamed_addr constant [57 x i8] c"androidx/drawerlayout/widget/DrawerLayout$DrawerListener\00", align 1
@.str.891 = private unnamed_addr constant [73 x i8] c"mono/androidx/drawerlayout/widget/DrawerLayout_DrawerListenerImplementor\00", align 1
@.str.892 = private unnamed_addr constant [55 x i8] c"androidx/drawerlayout/widget/DrawerLayout$LayoutParams\00", align 1
@.str.893 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/graphics/drawable/DrawerArrowDrawable\00", align 1
@.str.894 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/app/AlertDialog\00", align 1
@.str.895 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/app/AlertDialog$Builder\00", align 1
@.str.896 = private unnamed_addr constant [78 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnClickListenerImplementor\00", align 1
@.str.897 = private unnamed_addr constant [79 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnCancelListenerImplementor\00", align 1
@.str.898 = private unnamed_addr constant [89 x i8] c"androidx/appcompat/app/AlertDialog_IDialogInterfaceOnMultiChoiceClickListenerImplementor\00", align 1
@.str.899 = private unnamed_addr constant [33 x i8] c"androidx/appcompat/app/ActionBar\00", align 1
@.str.900 = private unnamed_addr constant [46 x i8] c"androidx/appcompat/app/ActionBar$LayoutParams\00", align 1
@.str.901 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/app/ActionBar$OnMenuVisibilityListener\00", align 1
@.str.902 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/app/ActionBar_OnMenuVisibilityListenerImplementor\00", align 1
@.str.903 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBar$OnNavigationListener\00", align 1
@.str.904 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/app/ActionBar$Tab\00", align 1
@.str.905 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBar$TabListener\00", align 1
@.str.906 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle\00", align 1
@.str.907 = private unnamed_addr constant [54 x i8] c"androidx/appcompat/app/ActionBarDrawerToggle$Delegate\00", align 1
@.str.908 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatActivity\00", align 1
@.str.909 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatDelegate\00", align 1
@.str.910 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/app/AppCompatDialog\00", align 1
@.str.911 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/app/AppCompatCallback\00", align 1
@.str.912 = private unnamed_addr constant [34 x i8] c"androidx/appcompat/widget/Toolbar\00", align 1
@.str.913 = private unnamed_addr constant [67 x i8] c"androidx/appcompat/widget/Toolbar_NavigationOnClickEventDispatcher\00", align 1
@.str.914 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/Toolbar$LayoutParams\00", align 1
@.str.915 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/Toolbar$OnMenuItemClickListener\00", align 1
@.str.916 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/Toolbar_OnMenuItemClickListenerImplementor\00", align 1
@.str.917 = private unnamed_addr constant [56 x i8] c"androidx/appcompat/widget/AppCompatAutoCompleteTextView\00", align 1
@.str.918 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/widget/AppCompatButton\00", align 1
@.str.919 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatCheckBox\00", align 1
@.str.920 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatEditText\00", align 1
@.str.921 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatImageButton\00", align 1
@.str.922 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/AppCompatImageView\00", align 1
@.str.923 = private unnamed_addr constant [47 x i8] c"androidx/appcompat/widget/AppCompatRadioButton\00", align 1
@.str.924 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/widget/AppCompatTextView\00", align 1
@.str.925 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/DecorToolbar\00", align 1
@.str.926 = private unnamed_addr constant [45 x i8] c"androidx/appcompat/widget/LinearLayoutCompat\00", align 1
@.str.927 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/LinearLayoutCompat$LayoutParams\00", align 1
@.str.928 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView\00", align 1
@.str.929 = private unnamed_addr constant [75 x i8] c"androidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener\00", align 1
@.str.930 = private unnamed_addr constant [37 x i8] c"androidx/appcompat/widget/SearchView\00", align 1
@.str.931 = private unnamed_addr constant [53 x i8] c"androidx/appcompat/widget/SearchView$OnCloseListener\00", align 1
@.str.932 = private unnamed_addr constant [69 x i8] c"mono/androidx/appcompat/widget/SearchView_OnCloseListenerImplementor\00", align 1
@.str.933 = private unnamed_addr constant [57 x i8] c"androidx/appcompat/widget/SearchView$OnQueryTextListener\00", align 1
@.str.934 = private unnamed_addr constant [73 x i8] c"mono/androidx/appcompat/widget/SearchView_OnQueryTextListenerImplementor\00", align 1
@.str.935 = private unnamed_addr constant [58 x i8] c"androidx/appcompat/widget/SearchView$OnSuggestionListener\00", align 1
@.str.936 = private unnamed_addr constant [74 x i8] c"mono/androidx/appcompat/widget/SearchView_OnSuggestionListenerImplementor\00", align 1
@.str.937 = private unnamed_addr constant [39 x i8] c"androidx/appcompat/widget/SwitchCompat\00", align 1
@.str.938 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/widget/TintTypedArray\00", align 1
@.str.939 = private unnamed_addr constant [40 x i8] c"androidx/appcompat/widget/TooltipCompat\00", align 1
@.str.940 = private unnamed_addr constant [35 x i8] c"androidx/appcompat/view/ActionMode\00", align 1
@.str.941 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/ActionMode$Callback\00", align 1
@.str.942 = private unnamed_addr constant [41 x i8] c"androidx/appcompat/view/menu/MenuBuilder\00", align 1
@.str.943 = private unnamed_addr constant [50 x i8] c"androidx/appcompat/view/menu/MenuBuilder$Callback\00", align 1
@.str.944 = private unnamed_addr constant [52 x i8] c"androidx/appcompat/view/menu/MenuPresenter$Callback\00", align 1
@.str.945 = private unnamed_addr constant [43 x i8] c"androidx/appcompat/view/menu/MenuPresenter\00", align 1
@.str.946 = private unnamed_addr constant [38 x i8] c"androidx/appcompat/view/menu/MenuView\00", align 1
@.str.947 = private unnamed_addr constant [42 x i8] c"androidx/appcompat/view/menu/MenuItemImpl\00", align 1
@.str.948 = private unnamed_addr constant [44 x i8] c"androidx/appcompat/view/menu/SubMenuBuilder\00", align 1
@.str.949 = private unnamed_addr constant [39 x i8] c"androidx/fragment/app/FragmentActivity\00", align 1
@.str.950 = private unnamed_addr constant [37 x i8] c"androidx/fragment/app/DialogFragment\00", align 1
@.str.951 = private unnamed_addr constant [31 x i8] c"androidx/fragment/app/Fragment\00", align 1
@.str.952 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/Fragment$SavedState\00", align 1
@.str.953 = private unnamed_addr constant [40 x i8] c"androidx/fragment/app/FragmentContainer\00", align 1
@.str.954 = private unnamed_addr constant [44 x i8] c"androidx/fragment/app/FragmentContainerView\00", align 1
@.str.955 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentFactory\00", align 1
@.str.956 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/FragmentHostCallback\00", align 1
@.str.957 = private unnamed_addr constant [38 x i8] c"androidx/fragment/app/FragmentManager\00", align 1
@.str.958 = private unnamed_addr constant [53 x i8] c"androidx/fragment/app/FragmentManager$BackStackEntry\00", align 1
@.str.959 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks\00", align 1
@.str.960 = private unnamed_addr constant [65 x i8] c"androidx/fragment/app/FragmentManager$OnBackStackChangedListener\00", align 1
@.str.961 = private unnamed_addr constant [81 x i8] c"mono/androidx/fragment/app/FragmentManager_OnBackStackChangedListenerImplementor\00", align 1
@.str.962 = private unnamed_addr constant [42 x i8] c"androidx/fragment/app/FragmentTransaction\00", align 1
@.str.963 = private unnamed_addr constant [47 x i8] c"androidx/fragment/app/FragmentOnAttachListener\00", align 1
@.str.964 = private unnamed_addr constant [63 x i8] c"mono/androidx/fragment/app/FragmentOnAttachListenerImplementor\00", align 1
@.str.965 = private unnamed_addr constant [45 x i8] c"androidx/fragment/app/FragmentResultListener\00", align 1
@.str.966 = private unnamed_addr constant [52 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode\00", align 1
@.str.967 = private unnamed_addr constant [59 x i8] c"androidx/fragment/app/strictmode/FragmentStrictMode$Policy\00", align 1
@.str.968 = private unnamed_addr constant [43 x i8] c"androidx/fragment/app/strictmode/Violation\00", align 1
@.str.969 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/Observer\00", align 1
@.str.970 = private unnamed_addr constant [28 x i8] c"androidx/lifecycle/LiveData\00", align 1
@.str.971 = private unnamed_addr constant [35 x i8] c"androidx/lifecycle/MutableLiveData\00", align 1
@.str.972 = private unnamed_addr constant [46 x i8] c"kotlinx/serialization/DeserializationStrategy\00", align 1
@.str.973 = private unnamed_addr constant [34 x i8] c"kotlinx/serialization/KSerializer\00", align 1
@.str.974 = private unnamed_addr constant [44 x i8] c"kotlinx/serialization/SerializationStrategy\00", align 1
@.str.975 = private unnamed_addr constant [58 x i8] c"kotlinx/serialization/encoding/CompositeDecoder$Companion\00", align 1
@.str.976 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeDecoder\00", align 1
@.str.977 = private unnamed_addr constant [48 x i8] c"kotlinx/serialization/encoding/CompositeEncoder\00", align 1
@.str.978 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Decoder\00", align 1
@.str.979 = private unnamed_addr constant [39 x i8] c"kotlinx/serialization/encoding/Encoder\00", align 1
@.str.980 = private unnamed_addr constant [51 x i8] c"kotlinx/serialization/descriptors/SerialDescriptor\00", align 1
@.str.981 = private unnamed_addr constant [45 x i8] c"kotlinx/serialization/descriptors/SerialKind\00", align 1
@.str.982 = private unnamed_addr constant [43 x i8] c"crc643f2b18b2570eaa5a/PlatformGraphicsView\00", align 1
@.str.983 = private unnamed_addr constant [34 x i8] c"androidx/cardview/widget/CardView\00", align 1
@.str.984 = private unnamed_addr constant [39 x i8] c"androidx/savedstate/SavedStateRegistry\00", align 1
@.str.985 = private unnamed_addr constant [58 x i8] c"androidx/savedstate/SavedStateRegistry$SavedStateProvider\00", align 1
@.str.986 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderResultCallback\00", align 1
@.str.987 = private unnamed_addr constant [42 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallback\00", align 1
@.str.988 = private unnamed_addr constant [48 x i8] c"crc6488302ad6e9e4df1a/ImageLoaderCallbackBase_1\00", align 1
@.str.989 = private unnamed_addr constant [44 x i8] c"crc6488302ad6e9e4df1a/MauiAppCompatActivity\00", align 1
@.str.990 = private unnamed_addr constant [38 x i8] c"crc6488302ad6e9e4df1a/MauiApplication\00", align 1
@.str.991 = private unnamed_addr constant [65 x i8] c"crc6488302ad6e9e4df1a/MauiApplication_ActivityLifecycleCallbacks\00", align 1
@.str.992 = private unnamed_addr constant [31 x i8] c"com/microsoft/maui/BuildConfig\00", align 1
@.str.993 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/HybridJavaScriptInterface\00", align 1
@.str.994 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/ImageLoaderCallback\00", align 1
@.str.995 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformShadowDrawable\00", align 1
@.str.996 = private unnamed_addr constant [33 x i8] c"com/microsoft/maui/MauiViewGroup\00", align 1
@.str.997 = private unnamed_addr constant [45 x i8] c"com/microsoft/maui/PlatformAppCompatTextView\00", align 1
@.str.998 = private unnamed_addr constant [44 x i8] c"com/microsoft/maui/PlatformContentViewGroup\00", align 1
@.str.999 = private unnamed_addr constant [38 x i8] c"com/microsoft/maui/PlatformDispatcher\00", align 1
@.str.1000 = private unnamed_addr constant [36 x i8] c"com/microsoft/maui/PlatformFontSpan\00", align 1
@.str.1001 = private unnamed_addr constant [35 x i8] c"com/microsoft/maui/PlatformInterop\00", align 1
@.str.1002 = private unnamed_addr constant [42 x i8] c"com/microsoft/maui/PlatformLineHeightSpan\00", align 1
@.str.1003 = private unnamed_addr constant [34 x i8] c"com/microsoft/maui/PlatformLogger\00", align 1
@.str.1004 = private unnamed_addr constant [49 x i8] c"com/microsoft/maui/PlatformMauiAppCompatActivity\00", align 1
@.str.1005 = private unnamed_addr constant [37 x i8] c"com/microsoft/maui/PlatformPaintType\00", align 1
@.str.1006 = private unnamed_addr constant [39 x i8] c"com/microsoft/maui/PlatformWrapperView\00", align 1
@.str.1007 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/AccessibilityDelegateCompatWrapper\00", align 1
@.str.1008 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/BorderDrawable\00", align 1
@.str.1009 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/ContainerView\00", align 1
@.str.1010 = private unnamed_addr constant [39 x i8] c"crc6452ffdc5b34af3a0f/ContentViewGroup\00", align 1
@.str.1011 = private unnamed_addr constant [58 x i8] c"crc6452ffdc5b34af3a0f/FragmentManagerExtensions_CallBacks\00", align 1
@.str.1012 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/LayoutViewGroup\00", align 1
@.str.1013 = private unnamed_addr constant [49 x i8] c"crc6452ffdc5b34af3a0f/LocalizedDigitsKeyListener\00", align 1
@.str.1014 = private unnamed_addr constant [54 x i8] c"crc6452ffdc5b34af3a0f/MauiAccessibilityDelegateCompat\00", align 1
@.str.1015 = private unnamed_addr constant [44 x i8] c"crc6452ffdc5b34af3a0f/MauiAppCompatEditText\00", align 1
@.str.1016 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiBoxView\00", align 1
@.str.1017 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiDatePicker\00", align 1
@.str.1018 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebView\00", align 1
@.str.1019 = private unnamed_addr constant [46 x i8] c"crc6452ffdc5b34af3a0f/MauiHybridWebViewClient\00", align 1
@.str.1020 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiLayerDrawable\00", align 1
@.str.1021 = private unnamed_addr constant [41 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton\00", align 1
@.str.1022 = private unnamed_addr constant [63 x i8] c"crc6452ffdc5b34af3a0f/MauiMaterialButton_MauiResizableDrawable\00", align 1
@.str.1023 = private unnamed_addr constant [38 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl\00", align 1
@.str.1024 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/MauiPageControl_TEditClickListener\00", align 1
@.str.1025 = private unnamed_addr constant [33 x i8] c"crc6452ffdc5b34af3a0f/MauiPicker\00", align 1
@.str.1026 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiPickerBase\00", align 1
@.str.1027 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiScrollView\00", align 1
@.str.1028 = private unnamed_addr constant [47 x i8] c"crc6452ffdc5b34af3a0f/MauiHorizontalScrollView\00", align 1
@.str.1029 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiSearchView\00", align 1
@.str.1030 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiShapeView\00", align 1
@.str.1031 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiStepper\00", align 1
@.str.1032 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeRefreshLayout\00", align 1
@.str.1033 = private unnamed_addr constant [36 x i8] c"crc6452ffdc5b34af3a0f/MauiSwipeView\00", align 1
@.str.1034 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/MauiTextView\00", align 1
@.str.1035 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/MauiTimePicker\00", align 1
@.str.1036 = private unnamed_addr constant [42 x i8] c"crc6452ffdc5b34af3a0f/MauiWebChromeClient\00", align 1
@.str.1037 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/MauiWebView\00", align 1
@.str.1038 = private unnamed_addr constant [40 x i8] c"crc6452ffdc5b34af3a0f/MauiWebViewClient\00", align 1
@.str.1039 = private unnamed_addr constant [44 x i8] c"microsoft/maui/platform/MauiNavHostFragment\00", align 1
@.str.1040 = private unnamed_addr constant [65 x i8] c"crc6452ffdc5b34af3a0f/NavigationRootManager_ElementBasedFragment\00", align 1
@.str.1041 = private unnamed_addr constant [45 x i8] c"crc6452ffdc5b34af3a0f/NavigationViewFragment\00", align 1
@.str.1042 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/ScopedFragment\00", align 1
@.str.1043 = private unnamed_addr constant [55 x i8] c"crc6452ffdc5b34af3a0f/StackNavigationManager_Callbacks\00", align 1
@.str.1044 = private unnamed_addr constant [35 x i8] c"crc6452ffdc5b34af3a0f/ViewFragment\00", align 1
@.str.1045 = private unnamed_addr constant [48 x i8] c"crc6452ffdc5b34af3a0f/PlatformTouchGraphicsView\00", align 1
@.str.1046 = private unnamed_addr constant [43 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerHolder\00", align 1
@.str.1047 = private unnamed_addr constant [60 x i8] c"crc6452ffdc5b34af3a0f/StepperHandlerManager_StepperListener\00", align 1
@.str.1048 = private unnamed_addr constant [37 x i8] c"crc6452ffdc5b34af3a0f/SwipeViewPager\00", align 1
@.str.1049 = private unnamed_addr constant [57 x i8] c"crc6452ffdc5b34af3a0f/WebViewExtensions_JavascriptResult\00", align 1
@.str.1050 = private unnamed_addr constant [34 x i8] c"crc6452ffdc5b34af3a0f/WrapperView\00", align 1
@.str.1051 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonClickListener\00", align 1
@.str.1052 = private unnamed_addr constant [56 x i8] c"crc64fcf28c0e24b4cc31/ButtonHandler_ButtonTouchListener\00", align 1
@.str.1053 = private unnamed_addr constant [76 x i8] c"crc64fcf28c0e24b4cc31/HybridWebViewHandler_HybridWebViewJavaScriptInterface\00", align 1
@.str.1054 = private unnamed_addr constant [59 x i8] c"crc64fcf28c0e24b4cc31/SearchBarHandler_FocusChangeListener\00", align 1
@.str.1055 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SliderHandler_SeekBarChangeListener\00", align 1
@.str.1056 = private unnamed_addr constant [58 x i8] c"crc64fcf28c0e24b4cc31/SwitchHandler_CheckedChangeListener\00", align 1
@.str.1057 = private unnamed_addr constant [54 x i8] c"crc64fcf28c0e24b4cc31/ToolbarHandler_ProcessBackClick\00", align 1
@.str.1058 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/LinearGradientShaderFactory\00", align 1
@.str.1059 = private unnamed_addr constant [50 x i8] c"crc64b5e713d400f589b7/RadialGradientShaderFactory\00", align 1
@.str.1060 = private unnamed_addr constant [35 x i8] c"crc64b5e713d400f589b7/MauiDrawable\00", align 1
@.str.1061 = private unnamed_addr constant [59 x i8] c"crc64a096dc44ad241142/PlatformTicker_DurationScaleListener\00", align 1
@.str.1062 = private unnamed_addr constant [44 x i8] c"androidx/cursoradapter/widget/CursorAdapter\00", align 1
@.str.1063 = private unnamed_addr constant [54 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout\00", align 1
@.str.1064 = private unnamed_addr constant [78 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnChildScrollUpCallback\00", align 1
@.str.1065 = private unnamed_addr constant [72 x i8] c"androidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener\00", align 1
@.str.1066 = private unnamed_addr constant [88 x i8] c"mono/androidx/swiperefreshlayout/widget/SwipeRefreshLayout_OnRefreshListenerImplementor\00", align 1
@.str.1067 = private unnamed_addr constant [34 x i8] c"androidx/navigation/NavController\00", align 1
@.str.1068 = private unnamed_addr constant [63 x i8] c"androidx/navigation/NavController$OnDestinationChangedListener\00", align 1
@.str.1069 = private unnamed_addr constant [79 x i8] c"mono/androidx/navigation/NavController_OnDestinationChangedListenerImplementor\00", align 1
@.str.1070 = private unnamed_addr constant [39 x i8] c"androidx/navigation/NavDeepLinkBuilder\00", align 1
@.str.1071 = private unnamed_addr constant [38 x i8] c"androidx/navigation/NavHostController\00", align 1
@.str.1072 = private unnamed_addr constant [32 x i8] c"androidx/navigation/NavInflater\00", align 1

;TypeMapModule
@.TypeMapModule.0_assembly_name = private unnamed_addr constant [47 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModelSavedState\00", align 1
@.TypeMapModule.1_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.Navigation.Common\00", align 1
@.TypeMapModule.2_assembly_name = private unnamed_addr constant [38 x i8] c"Xamarin.AndroidX.Lifecycle.Common.Jvm\00", align 1
@.TypeMapModule.3_assembly_name = private unnamed_addr constant [17 x i8] c"AppNumeroDaSorte\00", align 1
@.TypeMapModule.4_assembly_name = private unnamed_addr constant [46 x i8] c"Xamarin.AndroidX.AppCompat.AppCompatResources\00", align 1
@.TypeMapModule.5_assembly_name = private unnamed_addr constant [37 x i8] c"Xamarin.AndroidX.Navigation.Fragment\00", align 1
@.TypeMapModule.6_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.Kotlin.StdLib\00", align 1
@.TypeMapModule.7_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.CustomView\00", align 1
@.TypeMapModule.8_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.Navigation.UI\00", align 1
@.TypeMapModule.9_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.ViewPager2\00", align 1
@.TypeMapModule.10_assembly_name = private unnamed_addr constant [45 x i8] c"Xamarin.AndroidX.Lifecycle.ViewModel.Android\00", align 1
@.TypeMapModule.11_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.Google.Android.Material\00", align 1
@.TypeMapModule.12_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.RecyclerView\00", align 1
@.TypeMapModule.13_assembly_name = private unnamed_addr constant [32 x i8] c"Xamarin.AndroidX.Collection.Jvm\00", align 1
@.TypeMapModule.14_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.ViewPager\00", align 1
@.TypeMapModule.15_assembly_name = private unnamed_addr constant [35 x i8] c"Xamarin.AndroidX.CoordinatorLayout\00", align 1
@.TypeMapModule.16_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Activity\00", align 1
@.TypeMapModule.17_assembly_name = private unnamed_addr constant [22 x i8] c"Xamarin.AndroidX.Core\00", align 1
@.TypeMapModule.18_assembly_name = private unnamed_addr constant [24 x i8] c"Xamarin.AndroidX.Loader\00", align 1
@.TypeMapModule.19_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Controls\00", align 1
@.TypeMapModule.20_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.KotlinX.Coroutines.Core.Jvm\00", align 1
@.TypeMapModule.21_assembly_name = private unnamed_addr constant [26 x i8] c"Microsoft.Maui.Essentials\00", align 1
@.TypeMapModule.22_assembly_name = private unnamed_addr constant [30 x i8] c"Xamarin.AndroidX.DrawerLayout\00", align 1
@.TypeMapModule.23_assembly_name = private unnamed_addr constant [27 x i8] c"Xamarin.AndroidX.AppCompat\00", align 1
@.TypeMapModule.24_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.Fragment\00", align 1
@.TypeMapModule.25_assembly_name = private unnamed_addr constant [41 x i8] c"Xamarin.AndroidX.Lifecycle.LiveData.Core\00", align 1
@.TypeMapModule.26_assembly_name = private unnamed_addr constant [13 x i8] c"Mono.Android\00", align 1
@.TypeMapModule.27_assembly_name = private unnamed_addr constant [39 x i8] c"Xamarin.KotlinX.Serialization.Core.Jvm\00", align 1
@.TypeMapModule.28_assembly_name = private unnamed_addr constant [24 x i8] c"Microsoft.Maui.Graphics\00", align 1
@.TypeMapModule.29_assembly_name = private unnamed_addr constant [26 x i8] c"Xamarin.AndroidX.CardView\00", align 1
@.TypeMapModule.30_assembly_name = private unnamed_addr constant [28 x i8] c"Xamarin.AndroidX.SavedState\00", align 1
@.TypeMapModule.31_assembly_name = private unnamed_addr constant [15 x i8] c"Microsoft.Maui\00", align 1
@.TypeMapModule.32_assembly_name = private unnamed_addr constant [31 x i8] c"Xamarin.AndroidX.CursorAdapter\00", align 1
@.TypeMapModule.33_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.SwipeRefreshLayout\00", align 1
@.TypeMapModule.34_assembly_name = private unnamed_addr constant [36 x i8] c"Xamarin.AndroidX.Navigation.Runtime\00", align 1

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
