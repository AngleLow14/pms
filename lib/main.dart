import 'package:flutter/material.dart';
import 'package:pms/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'PMS Social Hygiene Clinic',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 255, 152, 145),
                        height: MediaQuery.of(context).size.height,
                        width: 500,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height,
                            width: 830,
                            child: Column(
                              children: [
                                const SizedBox(height: 40),
                                const Text(
                                  'San Pablo Social Hygiene Clinic',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansEB',
                                    color: Color.fromARGB(255, 182, 8, 37),
                                    fontSize: 43,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 135),
                                const Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansEB',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 182, 8, 37),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 50),
                                Padding(
                                  padding: EdgeInsets.only(right: 200),
                                  child: const Text(
                                    'Username',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 250,
                                  height: 35,
                                  child: const TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Username',
                                    ),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.only(right: 195),
                                  child: const Text(
                                    'Password',
                                    style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 250,
                                  height: 35,
                                  child: const TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'Password',
                                    ),
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                SizedBox(
                                  width: 80,
                                  height: 30,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        158,
                                        7,
                                        82,
                                      ),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dashboard(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
