import 'package:flutter/material.dart';
import 'package:taskapp/feature/presentation/ui/auth/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    nextPage();
  }

  void nextPage(){
    Future.delayed(const Duration(seconds: 3)).then((value){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("TesT App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
