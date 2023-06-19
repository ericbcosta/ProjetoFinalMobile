import 'package:app_associacao/views/user_detail.dart';
import 'package:flutter/material.dart';
import '../provider/users.dart';
import '../routes/app_routes.dart';
import '../views/user_form.dart';
import '../views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.HOME: (_) => const UserList(),
          AppRoutes.USER_FORM: (_) => UserForm(),
          AppRoutes.USER_DETAIL: (_) => UserDetail()
        },
      ),
    );
  }
}
