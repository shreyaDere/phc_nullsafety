import 'dart:async';
import 'package:basic_utils/basic_utils.dart';
import 'package:chopper/chopper.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/locator/locator.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/logger/logger.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/router/router.gr.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_request.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/adddeliveryaddress/add_delivery_address_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/editprofile/edit_profile_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/reactive_services/address/add_address_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/shared_pref/storage_service_shared_pref.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/address/address.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/user/user_service.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/ui/views/network_sensitive/network_sensitive_view_model.dart';
import 'package:get/get.dart' as GetPackage;
import 'package:stacked_services/stacked_services.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/app/localization/localization_helper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_cities_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_countries_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/model/nation/build_state_list_response.dart';
import 'package:quickstart_flutter_ecom_code_02_20_1/services/web_api/nations_api/nations_service.dart';

class AddDeliveryAddressViewModel extends ConnectivityAwareViewModel {
  AddDeliveryAddressViewModel() {
    _stateList = new BuiltList<StatesListObject>();
    _citiesList = new BuiltList<CitiesListObject>();
  }
  NavigationService _navigationService = locator<NavigationService>();
  Logger logger = getLogger("deliver prescription");
  final formKey = GlobalKey<FormState>();
  AddressService _addDeliveryAddressService = AddressService.create();
  StorageServiceSharedPreferences _storageServiceSharedPreferences =
      locator<StorageServiceSharedPreferences>();
  AddAddressTService _addAddressTService = locator<AddAddressTService>();
  UniversalResponseAddress _address;
  List<String> cityArray = new List<String>();
  List<String> stateArray = new List<String>();
  List<String> countryArray = new List<String>();

  BuiltList<CountriesList> _countriesList;
  BuiltList<StatesListObject> _stateList;
  BuiltList<CitiesListObject> _citiesList;

  String _vilaFlat = "";
  String _buildingNo = "";
  String _roadStreetNo = "";
  String _blockNo = "";
  String _area = "";
  String _city = "";
  String _mobileNo = "";
  String _state = "";
  String _zipCode = "";
  String _userName = "";
  bool _enableCurrentLocation = false;
  bool _setDefaultAddress = false;
  String _country = "";
  String _countryCode = '+973';
  String _countryInitial = "BH";
  String get country => _country;
  bool get enableCurrentLocation => _enableCurrentLocation;
  bool get setDefaultAddress => _setDefaultAddress;
  String get userName => _userName;
  String get buildingNo => _buildingNo;
  String get vilaFlat => _vilaFlat;
  String get roadStreetNo => _roadStreetNo;
  String get blockNo => _blockNo;
  String get area => _area;
  String get city => _city;
  String get mobileNo => _mobileNo;
  String get state => _state;
  String get zipCode => _zipCode;
  String get countryCode => _countryCode;
  String get countryInitial => _countryInitial;
  bool _isHomeSelected = false;
  bool _isOfficeSelected = false;
  bool _isOtherSelected = false;
  bool get isHomeSelected => _isHomeSelected;
  bool get isOfficeSelected => _isOfficeSelected;
  bool get isOtherSelected => _isOtherSelected;
  UserService _editProfileService = UserService.create();
  String _cityHint = "City", _stateHint = "State", _countryHint = "Country";
  String get cityHint => _cityHint;
  String get stateHint => _stateHint;
  String get countryHint => _countryHint;
  NationsService _nationsService = NationsService.create();
  var locAddress;

  loadData({UniversalResponseAddress address}) async {
    _address = address;
    if (_address != null) {
      _userName = _address.name;
      // _countryCode =
      //     "+${_address.userAddress.phoneNumber.toString().substring(0, 2)}";
      _countryInitial = _countryCode.contains("+91") ? "IN" : "BH";
      _mobileNo = _address.phoneNumber.toString().substring(4);

      String line1 = _address.address1;
      if (line1.isNotEmpty) {
        var arrLine1 = line1.split(',');
        _vilaFlat = arrLine1.elementAt(0);
        _roadStreetNo = arrLine1.elementAt(1);
        _area = arrLine1.elementAt(2);
      }
      String line2 = _address.address2;
      if (line1.isNotEmpty) {
        var arrLine2 = line2.split(',');
        _blockNo = arrLine2.elementAt(0);
      }

      _city = _address.city;
      _state = _address.state;
      _country = _address.country;
      // _zipCode = _address.zip;
      _isHomeSelected = _address.label == 1 ? true : false;
      _isOfficeSelected = _address.label == 2 ? true : false;
      _isOtherSelected = _address.label == 3 ? true : false;
    } else {
      String no = await _storageServiceSharedPreferences.getContactNumber();
      _mobileNo = no.contains("91") ? no.substring(2) : no.substring(3);
    }
    getUserProfileData();
    updateCountry("Bahrain");
  }

  getCountry() async {
    _countriesList = new BuiltList<CountriesList>();

    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final Response<BuildCountriesListResponse> response =
            await runBusyFuture(_nationsService.getCountries())
                as Response<BuildCountriesListResponse>;
        countryArray.clear();
        if (response != null && response.body.status == 200) {
          _countriesList = (_countriesList.toBuilder()..clear()).build();
          _countriesList = (_countriesList.toBuilder()
                ..addAll(response.body.data.countries))
              .build();
          for (CountriesList country in response.body.data.countries) {
            countryArray.add(country.name);
          }
          notifyListeners();
        }
        break;
    }
  }

  String validateCity({String value}) {
    // getTranslatedValues( "enter_lname");
    if (StringUtils.isNotNullOrEmpty(value) &&
        value != "City" &&
        value != "null") {
      return null;
    } else {
      return getTranslatedValues("enter_city");
    }
  }

  String validateState({String value}) {
    if (StringUtils.isNotNullOrEmpty(value) &&
        value != "State" &&
        value != "null") {
      return null;
    } else {
      return getTranslatedValues("enter_state");
    }
  }

  String validateCountry({String value}) {
    if (StringUtils.isNotNullOrEmpty(value) &&
        value != "Country" &&
        value != "null") {
      return null;
    } else {
      return getTranslatedValues("enter_country");
    }
  }

  requestNextFocus() {
    FocusScope.of(GetPackage.Get.context).nextFocus();
  }

  changeCurrentLocationToggleValue(bool value) {
    _enableCurrentLocation = value;
    _zipCode = locAddress.first.postalCode.toString() != null
        ? locAddress.first.postalCode.toString()
        : "" != null;
    notifyListeners();
  }

  changedefaultAddressToggleValue(bool value) {
    _setDefaultAddress = value;
    notifyListeners();
  }

  onCountryChanged(selectedCountry) {
    _countryCode = selectedCountry.dialCode;
    _countryInitial = selectedCountry.code;
  }

  updatePhoneNumber(String value) {
    _mobileNo = value;
  }

  updateVillaFlat(String value) {
    _vilaFlat = value;
  }

  updateLandBlock(String value) {
    _blockNo = value;
  }

  updateRoadStreetNo(String value) {
    _roadStreetNo = value;
  }

  updateBlockNo(String value) {
    _blockNo = value;
  }

  updateArea(String value) {
    _area = value;
  }

  updateCity(String value) {
    _city = value;
  }

  // updateState(String value) {
  //   _state = value;
  // }

  // updateCountry(String value) {
  //   _country = value;
  // }
  updateCountry(String value) async {
    _state = null;
    _country = value;
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final Response<BuildStateListResponse> response =
            await runBusyFuture(_nationsService.getStates(id: value))
                as Response<BuildStateListResponse>;
        _stateList = (_stateList.toBuilder()..clear()).build();
        _stateList =
            (_stateList.toBuilder()..addAll(response.body.data.states)).build();
        if (response.body.status == 200) {
          stateArray.clear();
          for (StatesListObject state in response.body.data.states) {
            stateArray.add(state.name);
          }
          notifyListeners();
        }
        break;
    }
    notifyListeners();
  }

  updateState(String value) async {
    cityArray.clear();
    _city = null;
    _citiesList = (_citiesList.toBuilder()..clear()).build();

    notifyListeners();
    _state = value;
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        for (StatesListObject state in _stateList) {
          if (state.name == value) {
            final Response<BuildCitiesListResponse> response =
                await runBusyFuture(
              _nationsService.getCities(cid: country, sid: state.id.toString()),
            ) as Response<BuildCitiesListResponse>;
            _citiesList = (_citiesList.toBuilder()
                  ..addAll(response.body.data.cities))
                .build();
            if (response.body.status == 200) {
              cityArray.clear();
              for (CitiesListObject city in response.body.data.cities) {
                cityArray.add(city.name);
              }

              notifyListeners();
            }
          }
        }

        break;
    }
    notifyListeners();
  }

  updateZipCode(String value) {
    _zipCode = value;
  }

  updateHome() {
    _isHomeSelected = true;
    _isOfficeSelected = false;
    _isOtherSelected = false;
    notifyListeners();
  }

  updateOffice() {
    _isOfficeSelected = true;
    _isHomeSelected = false;
    _isOtherSelected = false;
    notifyListeners();
  }

  updateOther() {
    _isOtherSelected = true;
    _isHomeSelected = false;
    _isOfficeSelected = false;
    notifyListeners();
  }

  void updateUserName(String value) {
    _userName = value;
    notifyListeners();
  }

  //Maps
  final Map<String, Marker> _markers = {};
  Map<String, Marker> get markers => _markers;
  String _userAddress;
  String get userAddress => _userAddress;
  GoogleMapController mapController;
  Location _locationTracker = Location();
  StreamSubscription _locationSubscription;

  final LatLng center = const LatLng(20.5937, 78.9629);

  void onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    getCurrentLocation();
  }

  void getCurrentLocation() async {
    try {
      LocationData location = await _locationTracker.getLocation();
      if (mapController != null) {
        mapController.animateCamera(CameraUpdate.newCameraPosition(
            new CameraPosition(
                zoom: 18.00,
                tilt: 0,
                bearing: 360.0,
                target: LatLng(location.latitude, location.longitude))));
        updateAddress(location);
      }
    } catch (e) {
      logger.d(e);
    }
  }

  void updateMaker(LocationData newLocationData) async {
    LatLng latLng = LatLng(newLocationData.latitude, newLocationData.longitude);
    final markers = Marker(
      markerId: MarkerId("current location"),
      position: latLng,
      rotation: newLocationData.heading,
      flat: true,
      anchor: Offset(0.0, 0.0),
    );
    _markers["current_location"] = markers;
  }

  void updateAddress(LocationData event) async {
    final coordinates = new Coordinates(event.latitude, event.longitude);
    var address =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    locAddress = address;
    _userAddress = "${address.first.addressLine}";
    // _country = "${address.first.countryName}";
    notifyListeners();
  }

  validatePhoneNumber({String value}) {
    if (StringUtils.isNullOrEmpty(value)) {
      return "Please Enter valid mobile number";
    }
    return null;
  }

  validateFlatVillaBlockNo({String value}) {
    if (_enableCurrentLocation == false) {
      if (StringUtils.isNullOrEmpty(value)) {
        return "Please Enter Block no";
      }
    }
    return null;
  }

  validateRoadStreet({String value}) {
    if (_enableCurrentLocation == false) {
      if (StringUtils.isNullOrEmpty(value)) {
        return "Please Enter Road name";
      }
    }
    return null;
  }

  validateArea({String value}) {
    if (_enableCurrentLocation == false) {
      if (StringUtils.isNullOrEmpty(value)) {
        return "Please Enter area";
      }
    }
    return null;
  }

  // validateCity({String value}) {
  //   if (StringUtils.isNullOrEmpty(value)) {
  //     return "Please Enter city name";
  //   }
  //   return null;
  // }

  validateZip({String value}) {
    if (StringUtils.isNullOrEmpty(value)) {
      return "Please Enter ZipCode";
    }

    return null;
  }

  onSubmitBtnPressed() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        if (!formKey.currentState.validate()) return;
        final token = await _storageServiceSharedPreferences.getToken();
        AddDeliveryAddressRequest request = AddDeliveryAddressRequest((r) => r
          ..name = _userName.contains("Name Surname") ? "" : _userName
          ..zip = int.parse("000000") //StringUtils.isNullOrEmpty(_zipCode)
          // ? int.parse("")
          // :
          ..city = _city
          ..country = StringUtils.isNullOrEmpty(_country) ? "" : _country
          ..state = StringUtils.isNullOrEmpty(_state) ? "" : _state
          ..defaultAddress = _setDefaultAddress ? 1 : 2
          ..label = _isHomeSelected
              ? 1
              : _isOfficeSelected
                  ? 2
                  : _isOtherSelected
                      ? 3
                      : 0
          ..address1 = _enableCurrentLocation
              ? _userAddress
              : "$_vilaFlat,$_roadStreetNo,$_area"
          ..address2 = _enableCurrentLocation
              ? "$_vilaFlat,$_roadStreetNo,$_area,$_blockNo" //,$_zipCode
              : "$_blockNo" //,$_zipCode
          ..phoneNo = _countryCode + _mobileNo);
        if (_address != null) {
          //TODO: update api
          Response<AddDeliveryAddressResponse> response = await runBusyFuture(
              _addDeliveryAddressService.updateAddress(
                  body: request, token: "Bearer $token", id: _address.id));
          if (response.body.status == 200) {
            logger.d(response.body.message);
            _addAddressTService.callback();
            _navigationService.back();
          } else {}
        } else {
          Response<AddDeliveryAddressResponse> response = await runBusyFuture(
              _addDeliveryAddressService.addDeliveryAddress(
                  body: request, token: "Bearer $token"));
          if (response.body.status == 200) {
            logger.d(response.body.message);
            _addAddressTService.callback();
            _navigationService.back();
          } else {}
        }
    }
  }

  getUserProfileData() async {
    switch (dataConnectionStatus) {
      case DataConnectionStatus.disconnected:
        await _navigationService.navigateTo(Routes.noInternateView);
        break;
      case DataConnectionStatus.connected:
        final token = await _storageServiceSharedPreferences.getToken();
        Response<EditProfileResponse> response = await runBusyFuture(
            _editProfileService.getUserProfile(token: "Bearer $token"));

        if (response.body.status == 200) {
          _userName =
              StringUtils.isNotNullOrEmpty(response.body.data.user.firstName)
                  ? response.body.data.user.firstName
                  : "";

          notifyListeners();
        } else {}
    }
  }
}
