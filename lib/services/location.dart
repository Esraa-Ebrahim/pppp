import 'package:geolocator/geolocator.dart';

Future<void> _determinePosition() async {
  Position position = await Geolocator.getCurrentPosition();

  double distanceInMeters = await Geolocator.distanceBetween(
    position.latitude,
    position.longitude,
    position.latitude,
    position.longitude,
    //collegeLatitude,
    //collegeLongitude,
  );
  if(distanceInMeters <= 500){
    print("attended");
    //_isPresent = true;
  }else{
    //_isPresent = false;
    print("not attended");
    print(position.longitude);
    print(position.latitude);
  }
}