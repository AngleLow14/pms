import 'package:pms/patient.dart';
import 'package:flutter/material.dart';

class ViewDetails extends StatelessWidget {
  const ViewDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 242, 242),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      'assets/icon/shc.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      'San Pablo Social Hygiene Clinic',
                      style: TextStyle(
                        fontFamily: 'OpenSansEB',
                        fontSize: 20,
                        color: Color.fromARGB(255, 182, 8, 37),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      height: 530,
                      width: 600,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
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
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  Text(
                                    'Gene Jerrylene Arnigo Alvarez',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansEB',
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Padding(
                                    padding: EdgeInsets.only(right: 250),
                                    child: Text(
                                      '21 years old',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansSB',
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
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
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Birthday',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 100),
                              Text(
                                'Place of Birth',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 40),
                              Text(
                                'Civil Status',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'February 28, 2004',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 50),
                              Text(
                                'Tiaong, Quezon',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 50),
                              Text(
                                'Married',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Contact Number',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 50),
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                '09123456789',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 95),
                              Text(
                                'genealvarezjerrylene@gmail.com',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'House Number',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 50),
                              Text(
                                'Street',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 90),
                              Text(
                                'Barangay',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                '123',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 160),
                              Text(
                                'Rizal St.',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 85),
                              Text(
                                'Seoul',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Municipality/City',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 40),
                              Text(
                                'Province',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 50),
                              Text(
                                'Zip Code',
                                style: TextStyle(
                                  fontFamily: 'OpenSansSB',
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'San Pablo',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 120),
                              Text(
                                'Laguna',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 75),
                              Text(
                                '4000',
                                style: TextStyle(
                                  fontFamily: 'OpenSansLight',
                                  fontSize: 15,
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
                      height: 530,
                      width: 600,
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          const SizedBox(height: 50),
                          Text(
                            'Medical History',
                            style: TextStyle(
                              fontFamily: 'OpenSansEB',
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: 450,
                            height: 115,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 5),
                                Padding(
                                  padding: EdgeInsets.only(right: 225),
                                  child: Text(
                                    'March 11, 2025',
                                    style: TextStyle(
                                      fontSize: 26,
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
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 295),
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
                                    child: const Text(
                                      'View Record',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansLight',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(255, 235, 49, 49),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Container(
                            width: 450,
                            height: 115,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 5),
                                Padding(
                                  padding: EdgeInsets.only(right: 225),
                                  child: Text(
                                    'March 11, 2025',
                                    style: TextStyle(
                                      fontSize: 26,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 110),
                                  child: Text(
                                    'Diagnosed with Gonorrhea',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 295),
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
                                    child: const Text(
                                      'View Record',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansLight',
                                        fontSize: 20,
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
              const SizedBox(height: 15),
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
                  child: const Text(
                    'Go Back',
                    style: TextStyle(
                      fontFamily: 'OpenSansLight',
                      fontSize: 20,
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
