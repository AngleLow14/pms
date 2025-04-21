import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pms/forms/medical.dart';
import 'package:pms/dashboard.dart';

class Treatment extends StatefulWidget {
  const Treatment({super.key});
  @override
  _TreatmState createState() => _TreatmState();
}

class _TreatmState extends State<Treatment> {
  bool isCheckedYes = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    
    double responsiveSpacing = 20.0;
    double responsiveRunSpacing = 10.0;
    TableRow buildHeaderRow() {
      return TableRow(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Prescription',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Quantity',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Frequency',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      );
    }

    TableRow buildDataRow() {
      return TableRow(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Benzathine Penicillin(100mg)',
                style: TextStyle(fontSize: 15)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('21 tablets', style: TextStyle(fontSize: 15.sp)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('3x a day', style: TextStyle(fontSize: 15.sp)),
          ),
        ],
      );
    }

    TableRow sndDataRow() {
      return TableRow(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Doxycyline(100mg)', style: TextStyle(fontSize: 15.sp)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('7 tablets', style: TextStyle(fontSize: 15.sp)),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('1 in the Evening', style: TextStyle(fontSize: 15.sp)),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                width: screenWidth,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Prescription Treatment',
                    style: TextStyle(
                      fontFamily: 'OpenSansEB',
                      fontSize: 30.sp,
                      color: const Color.fromARGB(255, 182, 8, 37),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.07,
                width: screenWidth,
                child:  Center(
                  child: Text(
                    '2 OUT OF 2',
                    style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: screenWidth,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text(
                            'III. TREATMENT AND FOLLOW UP PLAN',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.02),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Table(
                                border: TableBorder.all(),
                                columnWidths: {
                                  0: FixedColumnWidth(screenWidth * 0.2),
                                  1: FixedColumnWidth(screenWidth * 0.15),
                                  2: FixedColumnWidth(screenWidth * 0.2),
                                },
                                children: [
                                  buildHeaderRow(),
                                  buildDataRow(),
                                  sndDataRow(),
                                ],
                              ),
                              SizedBox(width: screenWidth * 0.05),
                              Expanded(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                           Text(
                                            'For Referral',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: SizedBox(
                                                  height: 30.h,
                                                  child: TextField(
                                                    enabled: !isCheckedYes,
                                                    style: TextStyle(
                                                      fontSize: 15.sp,
                                                      color: Colors.black,
                                                    ),
                                                    decoration: InputDecoration(
                                                      filled: true,
                                                      fillColor: Colors.white,
                                                      border: OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                5.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Checkbox(
                                                value: isCheckedYes,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    isCheckedYes = value ?? false;
                                                  });
                                                },
                                              ),
                                               Text(
                                                'No',
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Follow up Check up',
                                            style: TextStyle(
                                              fontSize: 15.sp,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30.h,
                                            child: TextField(
                                              style:  TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                              ),
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5.0,
                                                  ),
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
                          SizedBox(height: screenHeight * 0.02),
                                Wrap(
                                  spacing: responsiveSpacing,
                                  runSpacing: responsiveRunSpacing,
                                  children: [
                                    SizedBox(
                                      width: 120.w,
                                      height: 30.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
						context,
						MaterialPageRoute(builder: (context) => MedicalRecord()),
					);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors
                                                  .transparent, // Transparent background
                                          foregroundColor:
                                              Colors.green, // Text/icon color
                                          elevation: 0, // No shadow
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 12,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            side: BorderSide(
                                              color: Colors.green,
                                              width: 2,
                                            ), // Green border
                                          ),
                                        ),
                                        child: Text(
                                          'Back',
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                      height: 30.h,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
						context,
						MaterialPageRoute(builder: (context) => Dashboard()),
					);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.green,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 12,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            side: BorderSide(
                                              color: Colors.green.shade900,
                                              width: 2,
                                            ), // Border
                                          ),
                                        ),
                                        child: Text(
                                          'Submit',
                                          style: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
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