// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

import '../../model/adddeliveryaddress/add_delivery_address_response.dart';
import '../../model/addpickupaddress/pickup_address_request.dart';
import '../../model/cart/cart_tot_response.dart';
import '../../model/onBoarding/on_bording_response.dart';
import '../../model/payment/payment_response.dart';
import '../../model/prescription/prescription_response.dart';
import '../../model/productdetails/product_detail_response.dart';
import '../../model/productgridlist/productgridlist_response.dart';
import '../../ui/views/add_address/add_delivery_address_view.dart';
import '../../ui/views/add_comments/add_comments_view.dart';
import '../../ui/views/all_comments/all_comments_view.dart';
import '../../ui/views/best_seller_product_list/best_sellere_product_view.dart';
import '../../ui/views/billing_address/billing_address_view.dart';
import '../../ui/views/brandGridList/Brand_grid_list_view.dart';
import '../../ui/views/cart/cart_view.dart';
import '../../ui/views/category_no_bnav/category_view.dart';
import '../../ui/views/coupon/coupon_view.dart';
import '../../ui/views/dashboard/dashboard_view.dart';
import '../../ui/views/edit_profile/edit_profile_view.dart';
import '../../ui/views/filters/filters_view.dart';
import '../../ui/views/home/home_view.dart';
import '../../ui/views/language_screen/language_view.dart';
import '../../ui/views/login/login_view.dart';
import '../../ui/views/no_internet/no_internet_view.dart';
import '../../ui/views/notification/notification_view.dart';
import '../../ui/views/on_boarding_three/on_boarding_three_view.dart';
import '../../ui/views/on_bording/onbording_view.dart';
import '../../ui/views/on_bording_second/on_boarding_second_view.dart';
import '../../ui/views/order_status/order_status_view.dart';
import '../../ui/views/order_summary/order_summary_view.dart';
import '../../ui/views/orders_list/order_list_view.dart';
import '../../ui/views/otpverifictionscreen/otp_verification_view.dart';
import '../../ui/views/payment/payment_view.dart';
import '../../ui/views/payment_successful/payment_successful_view.dart';
import '../../ui/views/pickup_address/pickup_address_view.dart';
import '../../ui/views/prescription_bnav/prescription_bnav_view.dart';
import '../../ui/views/prescription_status_detail/prescription_staus_detail_view.dart';
import '../../ui/views/proceed_to_pay/proceed_to_pay_view.dart';
import '../../ui/views/product_detail/product_detail_view.dart';
import '../../ui/views/product_grid_list/product_grid_list_view.dart';
import '../../ui/views/search_bar/search_bar_view.dart';
import '../../ui/views/select_address/select_address_view.dart';
import '../../ui/views/settings/settings_view.dart';
import '../../ui/views/signup_custome_webview/signup_custome_webview_view.dart';
import '../../ui/views/signup_screen/signup_screen_view.dart';
import '../../ui/views/splash_screen/splash_screen_view.dart';
import '../../ui/views/track_order/track_order_view.dart';
import '../../ui/views/upload_prescription/upload_prescription_view.dart';
import '../../ui/views/wishlist_grid/wishlist_grid_view.dart';

class Routes {
  static const String splashScreenView = '/';
  static const String loginView = '/login-view';
  static const String otpVerificationView = '/otp-verification-view';
  static const String homeView = '/home-view';
  static const String dashboardView = '/dashboard-view';
  static const String languageScreenView = '/language-screen-view';
  static const String categoryView = '/category-view';
  static const String productGridListView = '/product-grid-list-view';
  static const String filtersView = '/filters-view';
  static const String editProfileView = '/edit-profile-view';
  static const String billingAddressView = '/billing-address-view';
  static const String signUpView = '/sign-up-view';
  static const String productDetailView = '/product-detail-view';
  static const String notificationView = '/notification-view';
  static const String settingsView = '/settings-view';
  static const String addCommentsView = '/add-comments-view';
  static const String allCommentsView = '/all-comments-view';
  static const String searchBarView = '/search-bar-view';
  static const String wishListGridView = '/wish-list-grid-view';
  static const String noInternateView = '/no-internate-view';
  static const String selectAddressView = '/select-address-view';
  static const String orderStatusView = '/order-status-view';
  static const String paymentSuccessfulView = '/payment-successful-view';
  static const String trackOrderView = '/track-order-view';
  static const String onBordingFirstView = '/on-bording-first-view';
  static const String onBordingSecondView = '/on-bording-second-view';
  static const String onBordingThreeView = '/on-bording-three-view';
  static const String uploadPrescriptionView = '/upload-prescription-view';
  static const String prescriptionView = '/prescription-view';
  static const String prescriptionStatusDetailView =
      '/prescription-status-detail-view';
  static const String couponView = '/coupon-view';
  static const String cartView = '/cart-view';
  static const String orderSummeryView = '/order-summery-view';
  static const String proceedToPayView = '/proceed-to-pay-view';
  static const String paymentView = '/payment-view';
  static const String pickupAddressView = '/pickup-address-view';
  static const String addDeliveryAddressView = '/add-delivery-address-view';
  static const String signUpCustomWebView = '/sign-up-custom-web-view';
  static const String bestsellerGridListView = '/bestseller-grid-list-view';
  static const String brandGridListView = '/brand-grid-list-view';
  static const String orderListView = '/order-list-view';
  static const all = <String>{
    splashScreenView,
    loginView,
    otpVerificationView,
    homeView,
    dashboardView,
    languageScreenView,
    categoryView,
    productGridListView,
    filtersView,
    editProfileView,
    billingAddressView,
    signUpView,
    productDetailView,
    notificationView,
    settingsView,
    addCommentsView,
    allCommentsView,
    searchBarView,
    wishListGridView,
    noInternateView,
    selectAddressView,
    orderStatusView,
    paymentSuccessfulView,
    trackOrderView,
    onBordingFirstView,
    onBordingSecondView,
    onBordingThreeView,
    uploadPrescriptionView,
    prescriptionView,
    prescriptionStatusDetailView,
    couponView,
    cartView,
    orderSummeryView,
    proceedToPayView,
    paymentView,
    pickupAddressView,
    addDeliveryAddressView,
    signUpCustomWebView,
    bestsellerGridListView,
    brandGridListView,
    orderListView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreenView, page: SplashScreenView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.otpVerificationView, page: OtpVerificationView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.dashboardView, page: DashboardView),
    RouteDef(Routes.languageScreenView, page: LanguageScreenView),
    RouteDef(Routes.categoryView, page: CategoryView),
    RouteDef(Routes.productGridListView, page: ProductGridListView),
    RouteDef(Routes.filtersView, page: FiltersView),
    RouteDef(Routes.editProfileView, page: EditProfileView),
    RouteDef(Routes.billingAddressView, page: BillingAddressView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.productDetailView, page: ProductDetailView),
    RouteDef(Routes.notificationView, page: NotificationView),
    RouteDef(Routes.settingsView, page: SettingsView),
    RouteDef(Routes.addCommentsView, page: AddCommentsView),
    RouteDef(Routes.allCommentsView, page: AllCommentsView),
    RouteDef(Routes.searchBarView, page: SearchBarView),
    RouteDef(Routes.wishListGridView, page: WishListGridView),
    RouteDef(Routes.noInternateView, page: NoInternateView),
    RouteDef(Routes.selectAddressView, page: SelectAddressView),
    RouteDef(Routes.orderStatusView, page: OrderStatusView),
    RouteDef(Routes.paymentSuccessfulView, page: PaymentSuccessfulView),
    RouteDef(Routes.trackOrderView, page: TrackOrderView),
    RouteDef(Routes.onBordingFirstView, page: OnBordingFirstView),
    RouteDef(Routes.onBordingSecondView, page: OnBordingSecondView),
    RouteDef(Routes.onBordingThreeView, page: OnBordingThreeView),
    RouteDef(Routes.uploadPrescriptionView, page: UploadPrescriptionView),
    RouteDef(Routes.prescriptionView, page: PrescriptionView),
    RouteDef(Routes.prescriptionStatusDetailView,
        page: PrescriptionStatusDetailView),
    RouteDef(Routes.couponView, page: CouponView),
    RouteDef(Routes.cartView, page: CartView),
    RouteDef(Routes.orderSummeryView, page: OrderSummeryView),
    RouteDef(Routes.proceedToPayView, page: ProceedToPayView),
    RouteDef(Routes.paymentView, page: PaymentView),
    RouteDef(Routes.pickupAddressView, page: PickupAddressView),
    RouteDef(Routes.addDeliveryAddressView, page: AddDeliveryAddressView),
    RouteDef(Routes.signUpCustomWebView, page: SignUpCustomWebView),
    RouteDef(Routes.bestsellerGridListView, page: BestsellerGridListView),
    RouteDef(Routes.brandGridListView, page: BrandGridListView),
    RouteDef(Routes.orderListView, page: OrderListView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashScreenView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoginView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OtpVerificationView: (data) {
      final args = data.getArgs<OtpVerificationViewArguments>(
        orElse: () => OtpVerificationViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OtpVerificationView(
          phoneNumber: args.phoneNumber,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    HomeView: (data) {
      final args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => HomeView(
          key: args.key,
          index: args.index,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    DashboardView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const DashboardView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    LanguageScreenView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LanguageScreenView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    CategoryView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CategoryView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    ProductGridListView: (data) {
      final args = data.getArgs<ProductGridListViewArguments>(
        orElse: () => ProductGridListViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ProductGridListView(
          slugId: args.slugId,
          categoryName: args.categoryName,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    FiltersView: (data) {
      final args = data.getArgs<FiltersViewArguments>(
        orElse: () => FiltersViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => FiltersView(
          key: args.key,
          productGridListResponse: args.productGridListResponse,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    EditProfileView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const EditProfileView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    BillingAddressView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const BillingAddressView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SignUpView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SignUpView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    ProductDetailView: (data) {
      final args = data.getArgs<ProductDetailViewArguments>(
        orElse: () => ProductDetailViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ProductDetailView(
          key: args.key,
          slugId: args.slugId,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    NotificationView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const NotificationView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SettingsView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SettingsView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    AddCommentsView: (data) {
      final args = data.getArgs<AddCommentsViewArguments>(
        orElse: () => AddCommentsViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AddCommentsView(
          key: args.key,
          productDetails: args.productDetails,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    AllCommentsView: (data) {
      final args = data.getArgs<AllCommentsViewArguments>(
        orElse: () => AllCommentsViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AllCommentsView(
          key: args.key,
          productDetailResponse: args.productDetailResponse,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SearchBarView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SearchBarView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideTop,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    WishListGridView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const WishListGridView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    NoInternateView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const NoInternateView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SelectAddressView: (data) {
      final args = data.getArgs<SelectAddressViewArguments>(
        orElse: () => SelectAddressViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SelectAddressView(
          key: args.key,
          proceesToPayFalg: args.proceesToPayFalg,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OrderStatusView: (data) {
      final args = data.getArgs<OrderStatusViewArguments>(
        orElse: () => OrderStatusViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OrderStatusView(
          key: args.key,
          orderId: args.orderId,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    PaymentSuccessfulView: (data) {
      final args = data.getArgs<PaymentSuccessfulViewArguments>(
        orElse: () => PaymentSuccessfulViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PaymentSuccessfulView(
          key: args.key,
          response: args.response,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    TrackOrderView: (data) {
      final args = data.getArgs<TrackOrderViewArguments>(
        orElse: () => TrackOrderViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => TrackOrderView(
          key: args.key,
          orderId: args.orderId,
          orderType: args.orderType,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OnBordingFirstView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OnBordingFirstView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OnBordingSecondView: (data) {
      final args = data.getArgs<OnBordingSecondViewArguments>(
        orElse: () => OnBordingSecondViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OnBordingSecondView(
          onBordingResponse: args.onBordingResponse,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OnBordingThreeView: (data) {
      final args = data.getArgs<OnBordingThreeViewArguments>(
        orElse: () => OnBordingThreeViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OnBordingThreeView(
          onBordingResponse: args.onBordingResponse,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    UploadPrescriptionView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const UploadPrescriptionView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    PrescriptionView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const PrescriptionView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    PrescriptionStatusDetailView: (data) {
      final args = data.getArgs<PrescriptionStatusDetailViewArguments>(
        orElse: () => PrescriptionStatusDetailViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PrescriptionStatusDetailView(
          key: args.key,
          presciptionData: args.presciptionData,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    CouponView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CouponView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    CartView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CartView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OrderSummeryView: (data) {
      final args = data.getArgs<OrderSummeryViewArguments>(
        orElse: () => OrderSummeryViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            OrderSummeryView(
          orderId: args.orderId,
          orderType: args.orderType,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideRight,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    ProceedToPayView: (data) {
      final args = data.getArgs<ProceedToPayViewArguments>(
        orElse: () => ProceedToPayViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ProceedToPayView(
          orderType: args.orderType,
          deliveryType: args.deliveryType,
          productList: args.productList,
          cartTotResponse: args.cartTotResponse,
          uniqueCode: args.uniqueCode,
          pickupAddressRequest: args.pickupAddressRequest,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    PaymentView: (data) {
      final args = data.getArgs<PaymentViewArguments>(
        orElse: () => PaymentViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => PaymentView(
          key: args.key,
          checkout: args.checkout,
          date: args.date,
          timeSlot: args.timeSlot,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    PickupAddressView: (data) {
      final args = data.getArgs<PickupAddressViewArguments>(
        orElse: () => PickupAddressViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PickupAddressView(
          orderType: args.orderType,
          deliveryType: args.deliveryType,
          key: args.key,
          productList: args.productList,
          cartTotResponse: args.cartTotResponse,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    AddDeliveryAddressView: (data) {
      final args = data.getArgs<AddDeliveryAddressViewArguments>(
        orElse: () => AddDeliveryAddressViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            AddDeliveryAddressView(
          key: args.key,
          address: args.address,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    SignUpCustomWebView: (data) {
      final args = data.getArgs<SignUpCustomWebViewArguments>(
        orElse: () => SignUpCustomWebViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SignUpCustomWebView(
          key: args.key,
          selectedUrl: args.selectedUrl,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    BestsellerGridListView: (data) {
      final args = data.getArgs<BestsellerGridListViewArguments>(
        orElse: () => BestsellerGridListViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BestsellerGridListView(
          product: args.product,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    BrandGridListView: (data) {
      final args = data.getArgs<BrandGridListViewArguments>(
        orElse: () => BrandGridListViewArguments(),
      );
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            BrandGridListView(
          brandName: args.brandName,
          key: args.key,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
    OrderListView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const OrderListView(),
        settings: data,
        transitionsBuilder: TransitionsBuilders.slideLeft,
        transitionDuration: const Duration(milliseconds: 400),
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OtpVerificationView arguments holder class
class OtpVerificationViewArguments {
  final int phoneNumber;
  final Key key;
  OtpVerificationViewArguments({this.phoneNumber, this.key});
}

/// HomeView arguments holder class
class HomeViewArguments {
  final Key key;
  final int index;
  HomeViewArguments({this.key, this.index = 0});
}

/// ProductGridListView arguments holder class
class ProductGridListViewArguments {
  final String slugId;
  final String categoryName;
  final Key key;
  ProductGridListViewArguments({this.slugId, this.categoryName, this.key});
}

/// FiltersView arguments holder class
class FiltersViewArguments {
  final Key key;
  final ProductGridListResponse productGridListResponse;
  FiltersViewArguments({this.key, this.productGridListResponse});
}

/// ProductDetailView arguments holder class
class ProductDetailViewArguments {
  final Key key;
  final String slugId;
  ProductDetailViewArguments({this.key, this.slugId});
}

/// AddCommentsView arguments holder class
class AddCommentsViewArguments {
  final Key key;
  final ProductDetailResponse productDetails;
  AddCommentsViewArguments({this.key, this.productDetails});
}

/// AllCommentsView arguments holder class
class AllCommentsViewArguments {
  final Key key;
  final ProductDetailResponse productDetailResponse;
  AllCommentsViewArguments({this.key, this.productDetailResponse});
}

/// SelectAddressView arguments holder class
class SelectAddressViewArguments {
  final Key key;
  final bool proceesToPayFalg;
  SelectAddressViewArguments({this.key, this.proceesToPayFalg});
}

/// OrderStatusView arguments holder class
class OrderStatusViewArguments {
  final Key key;
  final int orderId;
  OrderStatusViewArguments({this.key, this.orderId});
}

/// PaymentSuccessfulView arguments holder class
class PaymentSuccessfulViewArguments {
  final Key key;
  final PaymentResponse response;
  PaymentSuccessfulViewArguments({this.key, this.response});
}

/// TrackOrderView arguments holder class
class TrackOrderViewArguments {
  final Key key;
  final int orderId;
  final int orderType;
  TrackOrderViewArguments({this.key, this.orderId, this.orderType});
}

/// OnBordingSecondView arguments holder class
class OnBordingSecondViewArguments {
  final OnBordingResponse onBordingResponse;
  final Key key;
  OnBordingSecondViewArguments({this.onBordingResponse, this.key});
}

/// OnBordingThreeView arguments holder class
class OnBordingThreeViewArguments {
  final OnBordingResponse onBordingResponse;
  final Key key;
  OnBordingThreeViewArguments({this.onBordingResponse, this.key});
}

/// PrescriptionStatusDetailView arguments holder class
class PrescriptionStatusDetailViewArguments {
  final Key key;
  final PrescriptionData presciptionData;
  PrescriptionStatusDetailViewArguments({this.key, this.presciptionData});
}

/// OrderSummeryView arguments holder class
class OrderSummeryViewArguments {
  final int orderId;
  final int orderType;
  final Key key;
  OrderSummeryViewArguments({this.orderId, this.orderType, this.key});
}

/// ProceedToPayView arguments holder class
class ProceedToPayViewArguments {
  final int orderType;
  final int deliveryType;
  final BuiltList<UniversalProduct> productList;
  final CartTotResponse cartTotResponse;
  final int uniqueCode;
  final PickUpAddressRequest pickupAddressRequest;
  final Key key;
  ProceedToPayViewArguments(
      {this.orderType,
      this.deliveryType,
      this.productList,
      this.cartTotResponse,
      this.uniqueCode,
      this.pickupAddressRequest,
      this.key});
}

/// PaymentView arguments holder class
class PaymentViewArguments {
  final Key key;
  final CheckoutCartTot checkout;
  final String date;
  final String timeSlot;
  PaymentViewArguments({this.key, this.checkout, this.date, this.timeSlot});
}

/// PickupAddressView arguments holder class
class PickupAddressViewArguments {
  final int orderType;
  final int deliveryType;
  final Key key;
  final BuiltList<UniversalProduct> productList;
  final CartTotResponse cartTotResponse;
  PickupAddressViewArguments(
      {this.orderType,
      this.deliveryType,
      this.key,
      this.productList,
      this.cartTotResponse});
}

/// AddDeliveryAddressView arguments holder class
class AddDeliveryAddressViewArguments {
  final Key key;
  final UniversalResponseAddress address;
  AddDeliveryAddressViewArguments({this.key, this.address});
}

/// SignUpCustomWebView arguments holder class
class SignUpCustomWebViewArguments {
  final Key key;
  final String selectedUrl;
  SignUpCustomWebViewArguments({this.key, this.selectedUrl});
}

/// BestsellerGridListView arguments holder class
class BestsellerGridListViewArguments {
  final BuiltList<UniversalProduct> product;
  final Key key;
  BestsellerGridListViewArguments({this.product, this.key});
}

/// BrandGridListView arguments holder class
class BrandGridListViewArguments {
  final String brandName;
  final Key key;
  BrandGridListViewArguments({this.brandName, this.key});
}
