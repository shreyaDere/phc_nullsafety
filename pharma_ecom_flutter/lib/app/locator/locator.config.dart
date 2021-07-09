// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../services/reactive_services/address/add_address_service.dart';
import '../../services/reactive_services/app_drawer/app_drawer_Service.dart';
import '../../services/reactive_services/coupon_code/coupon_code_service.dart';
import '../../services/filter/apply_filters_service.dart';
import '../../services/reactive_services/filters/apply_filters_service.dart';
import '../../services/reactive_services/bestseller/best_seller_service.dart';
import '../../services/reactive_services/my_order/my_order_cancel_btn_status.dart';
import '../../services/reactive_services/cart/cart_refresh.dart';
import '../../services/reactive_services/categor/category_service.dart';
import '../../services/network/connectivity_service.dart';
import '../../services/reactive_services/dasahboard/dashboard_refresh.dart';
import '../../services/reactive_services/product_detail/product_details_refresh.dart';
import '../../services/reactive_services/product_grid/product_grid_service.dart';
import '../../services/push_notification/push_notification_service.dart';
import '../../services/reactive_services/address/select_address_sercive.dart';
import '../../services/reactive_services/social_login/social_media_reactive_service.dart';
import '../../services/social_media_sign_in/social_media_sign_in.dart';
import '../../services/shared_pref/storage_service_shared_pref.dart';
import '../../services/third_party_services.dart';
import '../../services/reactive_services/upload_prescription/upload_prescription_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<AddAddressTService>(() => AddAddressTService());
  gh.lazySingleton<AppDrawerTService>(() => AppDrawerTService());
  gh.lazySingleton<ApplyCouponCodeService>(() => ApplyCouponCodeService());
  gh.lazySingleton<ApplyFiltersList>(() => ApplyFiltersList());
  gh.lazySingleton<ApplyFiltersService>(() => ApplyFiltersService());
  gh.lazySingleton<BestSellService>(() => BestSellService());
  gh.lazySingleton<CancelBtnService>(() => CancelBtnService());
  gh.lazySingleton<CartRefreshService>(() => CartRefreshService());
  gh.lazySingleton<CategoryService>(() => CategoryService());
  gh.lazySingleton<ConnectivityService>(
      () => thirdPartyServicesModule.connectivityService);
  gh.lazySingleton<DashboardRefreshService>(() => DashboardRefreshService());
  gh.lazySingleton<DialogService>(() => thirdPartyServicesModule.dialogService);
  gh.lazySingleton<NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.lazySingleton<ProductDetailsRefreshService>(
      () => ProductDetailsRefreshService());
  gh.lazySingleton<ProductGridService>(() => ProductGridService());
  gh.lazySingleton<PushNotificationService>(
      () => thirdPartyServicesModule.pushNotificationService);
  gh.lazySingleton<SelectAddressTService>(() => SelectAddressTService());
  gh.lazySingleton<SnackbarService>(
      () => thirdPartyServicesModule.snackBarService);
  gh.lazySingleton<SocialMediaReactiveService>(
      () => SocialMediaReactiveService());
  gh.lazySingleton<SocialMediaSignIn>(
      () => thirdPartyServicesModule.socialMediaSignIn);
  gh.lazySingleton<StorageServiceSharedPreferences>(
      () => thirdPartyServicesModule.storageServiceSharedPreferences);
  gh.lazySingleton<UploadPrescriptionReactiveService>(
      () => UploadPrescriptionReactiveService());
  return get;
}

class _$ThirdPartyServicesModule extends ThirdPartyServicesModule {
  @override
  ConnectivityService get connectivityService => ConnectivityService();
  @override
  DialogService get dialogService => DialogService();
  @override
  NavigationService get navigationService => NavigationService();
  @override
  PushNotificationService get pushNotificationService =>
      PushNotificationService();
  @override
  SnackbarService get snackBarService => SnackbarService();
  @override
  SocialMediaSignIn get socialMediaSignIn => SocialMediaSignIn();
  @override
  StorageServiceSharedPreferences get storageServiceSharedPreferences =>
      StorageServiceSharedPreferences();
}
