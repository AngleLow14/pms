import 'package:pms/patient.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewDetails extends StatelessWidget {
  const ViewDetails({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 242, 242),
          height: screenHeight * 1,
          width: screenWidth * 2,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 60.h,
                    width: 60.w,
                    child: Image.asset(
                      'assets/icon/shc.png',
                      height: 60.h,
                      width: 60.w,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      'San Pablo Social Hygiene Clinic',
                      style: TextStyle(
                        fontFamily: 'OpenSansEB',
                        fontSize: 20.sp,
                        color: Color.fromARGB(255, 182, 8, 37),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.05),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      height: 600.h,
                      width: 600.w,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.03),
                          Row(
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.w,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.02),
                              Column(
                                children: [
                                  Text(
                                    'Gene Jerrylene Arnigo Alvarez',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansEB',
                                      fontSize: 25.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.02),
                                  Padding(
                                    padding: EdgeInsets.only(right: 270),
                                    child: Text(
                                      '21 years old',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansSB',
                                        fontSize: 20.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(),
                                child: Text(
                                  'I. PROFILE',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansEB',
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                'Birthday',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.1),
                              Text(
                                'Place of Birth',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.07),
                              Text(
                                'Civil Status',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                'February 28, 2004',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.06),
                              Text(
                                'Tiaong, Quezon',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                'Married',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                'Contact Number',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.05),
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                '09123456789',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                'genealvarezjerrylene@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                'House Number',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.05),
                              Text(
                                'Street',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.07),
                              Text(
                                'Barangay',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                '123',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.135),
                              Text(
                                'Rizal St.',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                'Seoul',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                'Municipality/City',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.04),
                              Text(
                                'Province',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.05),
                              Text(
                                'Zip Code',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            children: [
                              Text(
                                'San Pablo',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.1),
                              Text(
                                'Laguna',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.08),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 600.h,
                      width: 550.w,
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          SizedBox(height: screenHeight * 0.05),
                          Text(
                            'Medical History',
                            style: TextStyle(
                              fontFamily: 'OpenSansEB',
                              fontSize: 25.sp,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Container(
                            width: 480.h,
                            height: 115.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                Padding(
                                  padding: EdgeInsets.only(right: 225),
                                  child: Text(
                                    'March 11, 2025',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 190),
                                  child: Text(
                                    'Follow up check up',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 270),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ViewDetails(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      textStyle:
                                          MaterialStateProperty.all<TextStyle>(
                                            TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                    ),
                                    child: Text(
                                      'View Record',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansLight',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 235, 49, 49),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.03),
                          Container(
                            width: 480.h,
                            height: 115.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: screenHeight * 0.02),
                                Padding(
                                  padding: EdgeInsets.only(right: 225),
                                  child: Text(
                                    'March 11, 2025',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 125),
                                  child: Text(
                                    'Diagnosed with Gonorrhea',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 270),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ViewDetails(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      textStyle:
                                          MaterialStateProperty.all<TextStyle>(
                                            TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                    ),
                                    child: Text(
                                      'View Record',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansLight',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 235, 49, 49),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Patients()),
                    );
                  },
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                  child: Text(
                    'Go Back',
                    style: TextStyle(
                      fontFamily: 'OpenSansLight',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
