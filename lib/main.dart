import 'package:appdid_test/data/helper/shared_preferences_manager.dart';
import 'package:appdid_test/providers/auth_provider.dart';
import 'package:appdid_test/providers/home_provider.dart';
import 'package:appdid_test/routes/routes.dart';
import 'package:appdid_test/services/auth_service.dart';
import 'package:appdid_test/services/categories_repo_service.dart';
import 'package:appdid_test/views/authentication/auth_status.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // to load sharedPreference instance
  await SharedPreferencesManger.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => AuthProvider(AuthService())),
        Provider(create: (_) => HomeProvider(CategoriesRepoService())),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Appdid Test',
          routes: AppRoutes().routes,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const AuthStatus(),
        );
      },
    );
  }
}
