import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/delete_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/get_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/get_pickup_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/brands/brand_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/brands/brands_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_Cart_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/add_to_cart_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/allcomment/all_comment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/cart_tot_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/cart/get_cart.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/category/categories_detailsbrands_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/category/category_get_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/coupon/coupon_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/filters/filters_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/filters/filters_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/getmultipleaddset/get_multiple_addset_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/getmultipleaddset/get_multiple_adset_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/feedback/feedback_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/feedback/feedback_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/login/built_email_login_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/order_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_cities_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_countries_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_state_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/notification/notification_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/notification/notification_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/onBoarding/on_bording_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/ordersummery/order_summery_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/ordersummery/order_summery_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/otpverification/otp_verification_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/otpverification/otp_verification_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/payment/payment_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/paymentmetod/payment_method.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescription/prescription_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescription/prescription_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/prescriptiondetails/prescription_details_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/proceedtopay/proceed_to_pay_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/proceedtopay/proceed_to_pay_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productdetails/product_detail_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/product_gridlist_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/productgridlist/productgridlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/searchbar/search_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/searchbar/searchbar_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selectaddress/select_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selectaddress/select_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selfpickup/selfpickup_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selfpickup/update_selfpickup_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/selfpickup/update_selfpickup_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/signup/signup_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/signup/signup_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/splash/splash_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/track_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/universalresponse/universal_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/uploadprescription/upload_prescription_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/uploadprescription/upload_prescription_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/userstatus/user_status_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/add_item/add_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/delete_item/delete_item_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/wishlist/get_wishlist/wishlist_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/addpickupaddress/pickup_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/myordernonprescript/my_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/cancel_order_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/trackorder/cancel_order_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/fcm/fcm_response.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  BuiltEmailLoginRequest,
  BuiltEmailLoginResponse,
  OtpVerificationRequest,
  OtpVerificationResponse,
  SignUpResponse,
  SignupRequest,
  FeedBackResponse,
  FeedBackRequest,
  UploadPrescriptionRequest,
  UploadPrescriptionResponse,
  EditProfileResponse,
  PrescriptionRequest,
  PresciptionResponse,
  PrescriptionDetailsResponse,
  ProductGridListResponse,
  AddDeliveryAddressRequest,
  AddDeliveryAddressResponse,
  WishListRequest,
  WishListResponse,
  GetPickUpAddressResponse,
  PickUpAddressResponse,
  PickUpAddressRequest,
  ProceedToPayRequest,
  ProceedToPayResponse,
  PaymentRequest,
  PaymentResponse,
  SelectAddressRequest,
  SelectAddressResponse,
  AllCommentResponse,
  CouponResponse,
  FilterRequest,
  FilterResponse,
  NotificationRequest,
  NotificationResponse,
  OrderSummeryRequest,
  OrderSummeryResponse,
  SearchBarResponse,
  TrackOrderResponse,
  OnBordingResponse,
  SplashResponse,
  GetMultipleAdsetsResponse,
  MultipleAdsetsRequest,
  ProductDetailResponse,
  DeleteItemFromWishListResponse,
  AddItemResponse,
  SelfPichUpResponseGetApi,
  UpdateSelfPickUpRequest,
  UpdateSelfPickupResponse,
  AddToCartResponse,
  AddToCartRequest,
  CategoryGetResponse,
  CategoriesDetailsBrandsResponse,
  GetAddressResponse,
  DeleteAddressResponse,
  GetCartResponse,
  UniversalResponse,
  ProductGridlistRequest,
  CartTotResponse,
  CartTotRequest,
  MyOrderRequest,
  MyOrderResponse,
  CancelOrderResponse,
  CancelOrderRequest,
  OrderDetailResponse,
  FcmResponse,
  FcmRequest,
  UserStatusResponse,
  PaymentMethodResponse,
  BuildCitiesListResponse,
  BuildCountriesListResponse,
  BuildStateListResponse,
  SearchRequest,
  BrandsRequest,
  BrandsResponse
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
