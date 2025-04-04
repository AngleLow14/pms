import 'package:flutter/material.dart';
import 'package:pms/dashboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(1280, 800),
      builder:
          (_, child) => MaterialApp(
            debugShowCheckedModeBanner: true,
            title: 'PMS Social Hygiene Clinic',
            theme: ThemeData(primarySwatch: Colors.red),
            home: const LoginPage(),
          ),
    ),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
                        width: screenWidth * 0.3,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.white,
                            height: MediaQuery.of(context).size.height,
                            width: screenWidth * 0.7,
                            child: Column(
                              children: [
                                SizedBox(height: screenHeight * 0.04),
                                Text(
                                  'San Pablo Social Hygiene Clinic',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansEB',
                                    color: Color.fromARGB(255, 182, 8, 37),
                                    fontSize: 43.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: screenHeight * 0.2),
                                Text(
                                  'Login',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansEB',
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 182, 8, 37),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: screenHeight * 0.05),
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
