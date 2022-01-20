import 'package:sendbird_sdk/sendbird_sdk.dart';

Future<User> connect(String appId, String userId) async {
  try {
    final sendbird = SendbirdSdk(appId: appId);
    final user = await sendbird.connect(userId);
    return user;
  } catch (e) {
    print('connect: ERROR: $e');
    throw e;
  }
}
