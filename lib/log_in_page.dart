import 'package:flutter/material.dart';

import 'register_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Flipkart',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('images/ekart.png'),
                          )),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person_outline,
                  color: Colors.white70,
                  size: 30,
                ),
                title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    hintText: 'Email Id / Mobile Number',
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 15),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.lock_outline,
                    color: Colors.white70,
                    size: 30,
                  ),
                  title: TextField(
                    obscureText: passView,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white70, fontSize: 15),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            view();
                            // print(count);
                          },
                          child: condition
                              ? Icon(
                            Icons.remove_red_eye,
                            color: Colors.white70,
                          )
                              : Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.white70,
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 15, top: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue[700]),
                    child: Center(
                        child: Text(
                          'LogIn',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Flipkart?',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool passView = true;
  int count = 0;
  bool condition = true;
  void view() {
    setState(() {
      count++;
      if (count % 2 == 0) {
        passView = true;
        condition = true;
      } else {
        passView = false;
        condition = false;
      }
    });
  }
}