// import 'package:bugsnag_flutter/bugsnag_flutter.dart';
// import 'package:cashkar_client/network/repository.dart';
// import 'package:cashkar_client/podo/ErrorPodo/ErrorResponse.dart';
// import 'package:cashkar_client/podo/GetBrandsPodo/GetAllBrandsResponse.dart';
// import 'package:cashkar_client/podo/GetBrandsPodo/GetAllLaptopBrandsResponse.dart';
// import 'package:cashkar_client/utility/urls.dart';
// import 'package:flutter/foundation.dart';

// class GetBrandsProvider with ChangeNotifier {
//   bool isloading = false;
//   String errorMessage = '';

//   late GetAllBrandsResponse _getAllBrandsResponse;
//   late GetAllLaptopBrandsResponse _getAllLaptopBrandsResponse;

//   setIsLoading(bool value) {
//     isloading = value;
//     notifyListeners();
//   }

//   GetAllBrandsResponse get getAllBrandsResponse => _getAllBrandsResponse;
//   GetAllLaptopBrandsResponse get getAllLaptopBrandsResponse =>
//       _getAllLaptopBrandsResponse;

//   Future<void> setGetAllLaptopBrandsResponse(
//       GetAllLaptopBrandsResponse response) {
//     _getAllLaptopBrandsResponse = response;
//     return Future.value(null);
//   }

//   Future<void> setGetAllBrandsResponse(GetAllBrandsResponse response) {
//     _getAllBrandsResponse = response;
//     return Future.value(null);
//   }

//   Future<void> setErrorResponse(ErrorResponse response) {
//     errorMessage = response.message.toString();
//     return Future.value(null);
//   }

//   Future<String> getAllBrandsHandler() async {
//     print('Provider:Started getAllBrandsHandler');
//     setIsLoading(true);

//     await Repository(url: GETALLBRANDS_URL).getAllBrands().then((value) async {
//       setIsLoading(false);
//       if (value != null) {
//         try {
//           await setGetAllBrandsResponse(value as GetAllBrandsResponse);
//           errorMessage = '';
//         } catch (e, s) {
//           if (kReleaseMode) {
//             bugsnag.notify(e, s);
//           }
//           await setErrorResponse(value);
//         }
//       } else {
//         errorMessage = 'Some Error Occurred';
//       }
//     });
//     notifyListeners();
//     return errorMessage;
//   }

//   Future<String> getAllTabletsBrandsHandler() async {
//     print('Provider:Started getAllTabletsBrandsHandler');
//     setIsLoading(true);

//     await Repository(url: GETALLTABLETBRANDS_URL)
//         .getAllTabletBrands()
//         .then((value) async {
//       setIsLoading(false);
//       if (value != null) {
//         try {
//           await setGetAllBrandsResponse(value as GetAllBrandsResponse);
//           errorMessage = '';
//         } catch (e, s) {
//           if (kReleaseMode) {
//             bugsnag.notify(e, s);
//           }
//           await setErrorResponse(value);
//         }
//       } else {
//         errorMessage = 'Some Error Occurred';
//       }
//     });
//     notifyListeners();
//     return errorMessage;
//   }

//   Future<String> getAllLaptopBrandsHandler() async {
//     print('Provider:Started getAllLaptopBrandsHandler');
//     setIsLoading(true);

//     await Repository(url: GETALLLAPTOPBRANDS_URL)
//         .getAllLaptopBrands()
//         .then((value) async {
//       setIsLoading(false);
//       if (value != null) {
//         try {
//           await setGetAllLaptopBrandsResponse(
//               value as GetAllLaptopBrandsResponse);
//           errorMessage = '';
//         } catch (e, s) {
//           if (kReleaseMode) {
//             bugsnag.notify(e, s);
//           }
//           await setErrorResponse(value);
//         }
//       } else {
//         errorMessage = 'Some Error Occurred';
//       }
//     });
//     notifyListeners();
//     return errorMessage;
//   }

//   void reload() {
//     notifyListeners();
//   }
// }
