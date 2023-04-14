import 'package:flutter/material.dart';
import 'dart:async';
import 'login_view.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 20),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => const Login()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Image.asset('images/RIFAZ_logo_web.png'),
          ),
          const Material(
              color: Colors.deepPurpleAccent,
              child: Text('~ A Scientific Computation Experience ~',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,),),
          ),
          const Padding(
            padding:  EdgeInsets.all(30.0),
            child:  CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.yellowAccent,
            ),
          ),
        ],
      ),
    );
  }
}


