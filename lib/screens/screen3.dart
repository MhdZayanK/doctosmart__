import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machinetest/screens/screen4.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final List<String> items = [
    'JAN',
    'FEB',
    'MAR',
    'APL',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(75.0),
            child: AppBar(
              actions: [
                Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.40)),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white60,
                        // Set your desired background color
                        hintText: 'search for treatment',
                        hintStyle: TextStyle(color: Colors.black26, fontSize: 16),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
      
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Container(
                    height: 47,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[800],
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          // Border color and width
                        ),
                      ),
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                SizedBox(
                  width: 17,
                ),
                Text(
                  'sort by :',
                  style: GoogleFonts.poppins(
                    textStyle:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  width: 130,
                ),
                Container(
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 0.80)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'Date',
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              color: Colors.black45,
              height: 1,
              width: 450,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 180,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            '1.',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 20,),
                          Text('Vikram Singh',
                              style: GoogleFonts.poppins(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
      
                        ],
                      ),
                      SizedBox(height: 2,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Text(
                            'Couple combo Package',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w300,color: Colors.green[800]),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Icon(Icons.calendar_today_outlined,color: Colors.red,size: 16,),
                          SizedBox(width: 5,),
                          Text('31/01/2024',style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                          ),),
                          SizedBox(width: 33,),
                          Icon(Icons.perm_identity,color: Colors.red,size: 16,),
                          Text('Jithesh',style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,color:Colors.grey[600]
                          ),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 1,
                        width: 450,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Text('View Booking Details',style: GoogleFonts.poppins(
                              fontWeight:FontWeight.w300,color:Colors.black,fontSize:15
                          ),),
                          SizedBox(width: 110,),
      
                          Icon(Icons.arrow_forward_ios,size: 16,color: Colors.green[700],)
                        ],
                      ),
      
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 24,),
            Container(
              height: 180,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            '1.',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 20,),
                          Text('Vikram Singh',
                              style: GoogleFonts.poppins(
                                  fontSize: 19, fontWeight: FontWeight.w500)),
      
                        ],
                      ),
                      SizedBox(height: 2,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Text(
                            'Couple combo Package',
                            style: GoogleFonts.poppins(
                                fontSize: 18, fontWeight: FontWeight.w300,color: Colors.green[800]),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Icon(Icons.calendar_today_outlined,color: Colors.red,size: 16,),
                          SizedBox(width: 5,),
                          Text('31/01/2024',style: GoogleFonts.poppins(
                            fontWeight:FontWeight.w400,
                          ),),
                          SizedBox(width: 33,),
                          Icon(Icons.perm_identity,color: Colors.red,size: 16,),
                          Text('Jithesh',style: GoogleFonts.poppins(
                              fontWeight:FontWeight.w400,color:Colors.grey[600]
                          ),),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 1,
                        width: 450,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 50,),
                          Text('View Booking Details',style: GoogleFonts.poppins(
                              fontWeight:FontWeight.w300,color:Colors.black,fontSize:15
                          ),),
                          SizedBox(width: 110,),
      
                          Icon(Icons.arrow_forward_ios,size: 16,color: Colors.green[700],)
                        ],
                      ),
      
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 70,),
            Container(
            width: 352,
            height: 48,
      child: ElevatedButton(
      onPressed: () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => register()));
      },
      style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green[800],
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
      // Border color and width
      ),
      ),
      child: Text(
      'Register Now',
      style: TextStyle(color: Colors.white, fontSize: 15),
      )),),
      
      
      
      
      
      
      
      
      
          ])),
    );
  }
}
