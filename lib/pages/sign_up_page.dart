import 'package:firebase/pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Firebase',
            style: TextStyle(
                color: Colors.orange,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 56,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.grey)),
            child: TextField(
              decoration:
                  InputDecoration(hintText: "Name", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 56,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.grey)),
            child: TextField(
              decoration:
                  InputDecoration(hintText: "Email", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 56,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2, color: Colors.grey)),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return SignInPage();
                      }));
                    },
                    child: Text("Sign In"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
