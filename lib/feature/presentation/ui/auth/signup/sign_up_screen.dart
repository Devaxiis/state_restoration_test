import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
                    child: Center(
                      child: const Text("Log In",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      )),
    );
  }
}
