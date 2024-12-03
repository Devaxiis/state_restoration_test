import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskapp/feature/presentation/ui/auth/signup/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: SafeArea(child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controllerEmail,
              keyboardType: TextInputType.emailAddress,
              textInputAction:TextInputAction.next,
              decoration: InputDecoration(
                  hintText: "JohnDoe@gmail.com",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(18)
                )
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              onChanged: (done){
                print("done");
                print(done);
              },
              keyboardType: TextInputType.text,
              textInputAction:TextInputAction.done,
              controller: controllerPassword,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "**********",
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(18)
                  )
              ),
            ),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){

              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: ColoredBox(
                  color: Colors.blueAccent.withOpacity(0.7),
                  child: SizedBox(
                    height: 55,
                    width: MediaQuery.sizeOf(context).width,
                    child: const Center(
                      child: Text("Log In",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20,),
            RichText(text:  TextSpan(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400
              ),
              children: [
                const TextSpan(text: "Already have Account? "),
                TextSpan(text: "Sign Up",style: const TextStyle(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()..onTap=(){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SignUpScreen()));
                    }
                ),
              ]
            ))

            
          ],
        ),
      )),
    );
  }
}
