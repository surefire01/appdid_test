import 'package:appdid_test/models/categories.dart';
import 'package:appdid_test/providers/auth_provider.dart';
import 'package:appdid_test/providers/home_provider.dart';
import 'package:appdid_test/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/category_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvder = Provider.of<AuthProvider>(context, listen: false);
    final homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () async {
                final navigator = Navigator.of(context);
                await authProvder.authService.logout();
                navigator.popAndPushNamed(RouteNames.authStatus);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: FutureBuilder<Categories>(
          future: homeProvider.categoriesRepoService.getCategories(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final categories = snapshot.data!.category;

            return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryTile(
                    category: categories[index],
                  );
                });
          }),
    );
  }
}
