abstract class WeatherState {}

class InitialWeatherState extends WeatherState {}

class GetCurrentLocationLoading extends WeatherState {}

class GetCurrentLocationSuccess extends WeatherState {}

class GetCurrentLocationError extends WeatherState {}

class LoadingGetDataFromApi extends WeatherState {}

class GetDataSuccessFromApi extends WeatherState {}

class GetDataErrorFromApi extends WeatherState {
  final String error;

  GetDataErrorFromApi(this.error);
}

class GetDataFromApi extends WeatherState {}
