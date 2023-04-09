import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:peermatching/src/features/authentication/screens/login/login_screen.dart';
import 'package:peermatching/src/features/authentication/screens/main/mainpage.dart';
import 'package:peermatching/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:peermatching/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:peermatching/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:peermatching/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:peermatching/src/utils/theme/theme.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}

class Deneme extends StatelessWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(".appable/")),
      body: const Center(child: Text("Home Page")),
    );
  }
}

class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.add_alarm)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Heading"),
            const Text("Sub-Heading"),
            const Text("Paragraph"),
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            OutlinedButton(
                onPressed: () {}, child: const Text("Outlined Button")),
            const Padding(
              padding: EdgeInsets.all(20.0),
            ),
          ],
        ),
      ),
    );
  }
}
