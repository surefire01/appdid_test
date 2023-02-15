import 'package:appdid_test/providers/auth_provider.dart';
import 'package:appdid_test/views/authentication/login.dart';
import 'package:appdid_test/views/home/home.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

// to check if the user is logged in
class AuthStatus extends StatelessWidget {
  const AuthStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvder = Provider.of<AuthProvider>(context);
    return authProvder.authService.getLoginStatus() ? const Home() : Login();
  }
}
