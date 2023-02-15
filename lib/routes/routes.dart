import 'package:appdid_test/routes/route_names.dart';
import 'package:appdid_test/views/authentication/auth_status.dart';
import 'package:appdid_test/views/home/home.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  final routes = {
    RouteNames.home: (_) => const Home(),
    RouteNames.authStatus: (_) => const AuthStatus(),
  };
}
