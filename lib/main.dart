import 'package:flutter/material.dart';
import 'package:jobby/pages/splash_page.dart';
import 'package:jobby/providers/favorite_job_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(JobbyApp());

class JobbyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavoriteJobProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {"/": (context) => SplashPage()},
      ),
    );
  }
}
