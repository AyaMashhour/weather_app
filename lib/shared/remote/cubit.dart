import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shop_app/shared/network/dio_helper.dart';
import 'package:shop_app/shared/remote/state.dart';



class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(InitialWeatherState());

 static WeatherCubit get(context) => BlocProvider.of(context);

   Position position;

  String apiKey='681ff1cf05d1dd1e0c408c6d26368bc6';

Future <void> getCurrentLocation() async{
  emit(GetCurrentLocationLoading());

    position= await Geolocator.getCurrentPosition();

  emit(GetCurrentLocationSuccess());
  print(position);
  }

  List <dynamic>data=[];
  void getDataFromApi() {

    emit(LoadingGetDataFromApi());
    if(data.length==0) {
      if(position!=null)
        DioHelper.getData(
          url: "/data/2.5/find",
          query:
          {
            'lat': position.latitude  ,
            'lon': position.longitude,
            'cnt': 15,
            'appid': apiKey
          }).then((value) {
        data = value.data["list"];
        // print(data);
        // print(value.data["list"][0]["name"]);

        emit(GetDataSuccessFromApi());
      }).catchError((error) {
        print(error);
        emit(GetDataErrorFromApi(error.toString()));
      });
    }else{

      emit(GetDataSuccessFromApi());
    }
  }
}
