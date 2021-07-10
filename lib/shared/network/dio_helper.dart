import 'package:dio/dio.dart';




class DioHelper {
static late   Dio dio;

  static init()
  {
    dio = Dio(
        BaseOptions(
          baseUrl: 'https://api.openweathermap.org',
          receiveDataWhenStatusError: true,
        ));

  }

  static Future<Response> getData(
      {
      required  String url,
        Map<String,dynamic>?query
      }
      )async
  {
   return await  dio.get(
       url,
       queryParameters: query,
     options: Options(
         followRedirects: false,
         validateStatus: (status) { return status !< 500; }
     ),
   );
  }
//https://api.openweathermap.org
}
