import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'login_view.dart';
import 'channel_list_view.dart';
import 'create_channel_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sendbird Demo',
      initialRoute: "/login",
      routes: <String, WidgetBuilder>{
        '/login': (context) => const LoginView(),
        '/channel_list': (context) => const ChannelListView(),
        '/create_channel': (context) => const CreateChannelView(),
      },
      theme: ThemeData(
        fontFamily: "Gellix",
        primaryColor: const Color(0xff742DDD),
        // buttonColor: Color(0xff742DDD),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xff732cdd),
          selectionHandleColor: Color(0xff732cdd),
          selectionColor: Color(0xffD1BAF4),
        ),
      ),
    );
  }
}
