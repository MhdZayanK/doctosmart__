import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final List<String> _items = ['One', 'Two', 'Three', 'Four'];

  // TextEditingController to manage the text field
  TextEditingController _controller = TextEditingController();
  String _selectedOption = 'Option 1';
  final _formKey = GlobalKey<FormState>();
  DateTime dateTime = DateTime.now();

  get DateFormat => null;

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: dateTime,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null) {
      dateTime = picked;
      //assign the chosen date to the controller
      _textController.text = DateFormat.yMd().format(dateTime);
    }
  }
  TextEditingController _textController = TextEditingController();

  final List<String> items = [
    '1',
    '2',
    '3',
    '4',
  ];
  String? selectedValue;

  final List<String> min = [
    '1',
    '2',
    '3',
    '4',
  ];
  String? select;






  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBar(
          actions: [
            Row(
              children: [
                Icon(
                  Icons.notifications_none_outlined,
                  size: 33,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 33,
                ),
                Text(
                  'Register',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              height: 2,
              width: 420,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 26,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Name',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 62,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
                    hintText: 'Enter Your full name',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Whatsapp Number',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 69,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
                    hintText: 'Enter Your whatsapp number',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Address',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 63,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
                    hintText: 'Enter Your full address',
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Location',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 373,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],

                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      ),
                      hint: Center(
                          child: Text(
                        'choose your location',
                        style: GoogleFonts.poppins(
                          color:Colors.grey,
                          fontSize:14
                        ),
                      )),
                      value: null,
                      onChanged: (newValue) {
                        setState(() {
                          _controller.text = newValue!;
                        });
                      },
                      items: _items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
           SizedBox(
             height: 10,
           ),
        
        
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('branch',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 377,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      ),
                      hint: Center(
                          child: Text(
                            'select your branch',
                            style: GoogleFonts.poppins(
                                color:Colors.grey,
                                fontSize:14
                            ),
                          )),
                      value: null,
                      onChanged: (newValue) {
                        setState(() {
                          _controller.text = newValue!;
                        });
                      },
                      items: _items.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
        
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Total Amount',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 63,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
        
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
        
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Discount Amount',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 63,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color
        
                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),

            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(width: 25,),
                        Text('Payment option', style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(width: 10,),
                        Transform.scale(
                          scale:1.1,
                          child: Radio<String>(
                            value: 'Option 1',
                            groupValue: _selectedOption,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedOption = value!;
                              });
                            },
                          ),
                        ),
                        Text('Cash', style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                        SizedBox(width: 30,),
                        Radio<String>(
                          value: 'Option 2',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                        Text('Card',style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                        SizedBox(width: 30,),
                        Radio<String>(
                          value: 'Option 3',
                          groupValue: _selectedOption,
                          onChanged: (String? value) {
                            setState(() {
                              _selectedOption = value!;
                            });
                          },
                        ),
                        Text('UPI',style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                      ],
                    ),

                  ],
                ),
              ),


            SizedBox(
              height: 10,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Advance Amount',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 63,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color

                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),





            SizedBox(
              height: 10,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('BalanceAmount',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                height: 63,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Set your desired background color

                    hintStyle: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),


            SizedBox(
              height: 10,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Treatment Date',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15))
            ]),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: Container(
                    height: 63,
                    width: 380,
                    child: TextField(

                      controller: _textController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.all(10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),

                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16),
                        // pass the hint text parameter here
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16),
                        suffixIcon: Icon(
                            Icons.calendar_today),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),


            SizedBox(
              height: 10,
            ),
            Row(children: [
              SizedBox(
                width: 24,
              ),
              Text('Treatment Time',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 15)),
            ]),
            SizedBox(height: 10,),

            Row(
              children: [
                SizedBox(width: 18,),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'Hour',
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
                SizedBox(width: 20,),

                Container(
                  height: 49,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'Min',
                        style: TextStyle(
                          fontSize: 15,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: min
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
                      value: select,
                      onChanged: (String? value) {
                        setState(() {
                          select = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 17),
                        height: 40,
                        width: 140,
                        decoration:  BoxDecoration(





                      ),),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 50,
                      ),
                    ),
                  ),
                ),









              ],
            ),
            SizedBox(height: 50,),


            Container(
              width: 350,
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
                    'Save',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )),),

SizedBox(height: 20,),
















          ],
        ),
      ),
    ));
  }




}
