import 'package:cloud_functions/cloud_functions.dart';

Future<void> subscribeToEarlySignUp(
    String name, String email, double lng, double lat) async {
  final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
    'subscribeEarlySignUp',
  );
  await callable.call(<String, dynamic>{
    'name': name,
    'email': email,
    'longitude': lng,
    'latitude': lat,
    'time': DateTime.now(),
  });
  return;
}
