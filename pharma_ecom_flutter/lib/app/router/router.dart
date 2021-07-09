import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/add_address/add_delivery_address_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/add_comments/add_comments_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/all_comments/all_comments_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/best_seller_product_list/best_sellere_product_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/billing_address/billing_address_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/brandGridList/Brand_grid_list_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/cart/cart_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/category_no_bnav/category_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/coupon/coupon_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/dashboard/dashboard_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/edit_profile/edit_profile_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/filters/filters_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/home/home_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/language_screen/language_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/login/login_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/no_internet/no_internet_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/notification/notification_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/on_boarding_three/on_boarding_three_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/on_bording/onbording_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/on_bording_second/on_boarding_second_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/order_status/order_status_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/order_summary/order_summary_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/orders_list/order_list_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/otpverifictionscreen/otp_verification_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/payment/payment_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/payment_successful/payment_successful_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/pickup_address/pickup_address_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/prescription_status_detail/prescription_staus_detail_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/proceed_to_pay/proceed_to_pay_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/product_detail/product_detail_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/product_grid_list/product_grid_list_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/search_bar/search_bar_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/select_address/select_address_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/settings/settings_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/signup_custome_webview/signup_custome_webview_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/signup_screen/signup_screen_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/splash_screen/splash_screen_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/track_order/track_order_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/upload_prescription/upload_prescription_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/wishlist_grid/wishlist_grid_view.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/prescription_bnav/prescription_bnav_view.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashScreenView, initial: true),
  CustomRoute(
      page: LoginView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OtpVerificationView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: HomeView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: DashboardView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: LanguageScreenView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: CategoryView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: ProductGridListView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: FiltersView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: EditProfileView,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: BillingAddressView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: SignUpView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: ProductDetailView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: NotificationView,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: SettingsView,
      transitionsBuilder: TransitionsBuilders.slideRightWithFade,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: AddCommentsView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: AllCommentsView,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: SearchBarView,
      transitionsBuilder: TransitionsBuilders.slideTop,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: WishListGridView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: NoInternateView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: SelectAddressView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OrderStatusView,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: PaymentSuccessfulView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: TrackOrderView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OnBordingFirstView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OnBordingSecondView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OnBordingThreeView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: UploadPrescriptionView,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: PrescriptionView,
      transitionsBuilder: TransitionsBuilders.slideBottom,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: PrescriptionStatusDetailView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: CouponView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: CartView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OrderSummeryView,
      transitionsBuilder: TransitionsBuilders.slideRight,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: ProceedToPayView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: PaymentView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: PickupAddressView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: AddDeliveryAddressView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: SignUpCustomWebView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: BestsellerGridListView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: BrandGridListView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  CustomRoute(
      page: OrderListView,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      initial: false,
      durationInMilliseconds: 400),
  // MaterialRoute(page: HomeView, initial: false),
  // MaterialRoute(page: LoginView, initial: false),
  // MaterialRoute(page: DashboardView, initial: false),
  // MaterialRoute(page: LanguageScreenView, initial: false),
  // MaterialRoute(page: OtpVerificationView, initial: false),
  // MaterialRoute(page: CategoryView, initial: false),
  // MaterialRoute(page: ProductGridListView, initial: false),
  // MaterialRoute(page: FiltersView, initial: false),
  // MaterialRoute(page: EditProfileView, initial: false),
  // MaterialRoute(page: BillingAddressView, initial: false),
  // MaterialRoute(page: SignUpView, initial: false),
  // MaterialRoute(page: ProductDetailView, initial: false),
  // MaterialRoute(page: NotificationView, initial: false),
  // MaterialRoute(page: SettingsView, initial: false),
  // MaterialRoute(page: AddCommentsView, initial: false),
  // MaterialRoute(page: AllCommentsView, initial: false),
  // MaterialRoute(page: SearchBarView, initial: false),
  // MaterialRoute(page: WishListGridView, initial: false),
  // MaterialRoute(page: NoInternateView, initial: false),
  // MaterialRoute(page: SelectAddressView, initial: false),
  // MaterialRoute(page: OrderStatusView, initial: false),
  // MaterialRoute(page: PaymentSuccessfulView, initial: false),
  // MaterialRoute(page: TrackOrderView, initial: false),
  // MaterialRoute(page: OnBordingFirstView, initial: false),
  // MaterialRoute(page: OnBordingSecondView, initial: false),
  // MaterialRoute(page: OnBordingThreeView, initial: false),
  // MaterialRoute(page: UploadPrescriptionView, initial: false),
  // MaterialRoute(page: PrescriptionStatusDetailView, initial: false),
  // MaterialRoute(page: CouponView, initial: false),
  // MaterialRoute(page: CartView, initial: false),
  // MaterialRoute(page: OrderSummeryView, initial: false),
  // MaterialRoute(page: ProceedToPayView, initial: false),
  // MaterialRoute(page: PaymentView, initial: false),
  // MaterialRoute(page: AddPickupAddressView, initial: false),
  // MaterialRoute(page: AddDeliveryAddressView, initial: false),
  // MaterialRoute(page: SignUpCustomWebView, initial: false),
])
class $Router {}
