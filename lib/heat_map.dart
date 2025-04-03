import 'package:flutter/material.dart';
import 'package:pms/dashboard.dart';
import 'package:pms/appointment.dart';
import 'package:pms/patient.dart';
import 'package:pms/main.dart';

class HeatMap extends StatelessWidget {
  const HeatMap({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 255, 251, 251),
                        height: MediaQuery.of(context).size.height,
                        width: 300,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Container(
                              height: 150,
                              width: 150,
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
                            const SizedBox(height: 30),
                            Text(
                              'San Pablo Social Hygiene Clinic',
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'OpenSansEB',
                                color: Color.fromARGB(255, 182, 8, 37),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: EdgeInsets.only(right: 0, bottom: 10),
                              child: SizedBox(
                                height: 35,
                                width: 130,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Dashboard(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Dashboard',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansLight',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 43, 43, 43),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 35,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Patients(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Patients',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 43, 43, 43),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 35,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Appointment(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Appointment',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansLight',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 43, 43, 43),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 135),
                            SizedBox(
                              height: 35,
                              width: 150,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Log Out',
                                  style: TextStyle(
                                    fontFamily: 'OpenSansLight',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 43, 43, 43),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 255, 245, 245),
                        height: MediaQuery.of(context).size.height,
                        width: 1010,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 30,
                                    bottom: 45,
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dashboard(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Dashboard',
                                      style: TextStyle(
                                        fontFamily: 'OpenSansEB',
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 182, 8, 37),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 30,
                                    bottom: 45,
                                  ),
                                  child: Text(
                                    '>',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansEB',
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 182, 8, 37),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 30,
                                    bottom: 45,
                                  ),
                                  child: Text(
                                    'Heat Map',
                                    style: TextStyle(
                                      fontFamily: 'OpenSansEB',
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 182, 8, 37),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Padding(
                                  padding: EdgeInsets.only(left: 165, top: 15),
                                  child: SizedBox(
                                    height: 100,
                                    width: 300,
                                    child: TextField(
                                      style: TextStyle(fontSize: 15),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            50.0,
                                          ),
                                        ),
                                        hintText: 'Search...',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 45),
                                      child: Container(
                                        height: 400,
                                        width: 600,
                                        color: Colors.white,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => HeatMap(),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.asset(
                                                'assets/map/spc.png',
                                                height: 400,
                                                width: 400,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Container(
                                    color: Colors.white,
                                    width: 250,
                                    height: 400,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 15),
                                          child: Text(
                                            'Infection Cases',
                                            style: TextStyle(
                                              fontFamily: 'OpenSansEB',
                                              fontSize: 25,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                padding: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: const Color.fromARGB(
                                                    255,
                                                    255,
                                                    51,
                                                    51,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Severe',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                padding: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: const Color.fromARGB(
                                                    255,
                                                    255,
                                                    183,
                                                    50,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'High',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                padding: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: const Color.fromARGB(
                                                    255,
                                                    255,
                                                    251,
                                                    41,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Moderate',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        Padding(
                                          padding: EdgeInsets.only(left: 50),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 15,
                                                width: 15,
                                                padding: EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: const Color.fromARGB(
                                                    255,
                                                    62,
                                                    255,
                                                    62,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 30,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 20,
                                                ),
                                                child: Text(
                                                  'Low',
                                                  style: TextStyle(
                                                    fontFamily: 'OpenSansLight',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
