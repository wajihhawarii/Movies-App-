import 'package:movietrain/services/myservices.dart';
import 'package:movietrain/views/screens/home/homepage.dart';
import 'package:movietrain/views/screens/onbord1.dart';

checkPage() {
  if (MyServices.sharedPreferences.getString("key") == "1") {
    return const HomePage();
  } else {
    return const OnBordingOne();
  }
}
