import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class ScanProducts extends StatefulWidget {
  const ScanProducts({Key? key}) : super(key: key);

  @override
  State<ScanProducts> createState() => _ScanProductsState();
}

// bool _isDesktop(BuildContext context) =>
//     MediaQuery.of(context).size.width >= 600;

// bool _isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

bool valuefirst = false;
bool valuesecond = false;

bool valuethird = false;
var isChecked = false;
var isChecked2 = false;
var isChecked3 = false;
var isChecked4 = false;
var isChecked5 = false;
var isChecked6 = false;
var newBool = false;

var textshow;

class _ScanProductsState extends State<ScanProducts> {
  //bool valuefourth = false;

  String newValue = "";

  String dropdownvalue = 'ProductA';
  var items = [
    'ProductA',
  ];

  var items2 = [
    'ProductB',
  ];

  var items3 = [
    'ProductC',
  ];

  bool _firstValue = true;

  var _chosenValue;

  @override
  void initState() {
    super.initState();

    // isChecked = false;
    textshow = "";
  }

  @override
  Widget build(BuildContext context) {
    bool _isShow = false;

    final List<DropdownMenuItem<String>> list = [
      DropdownMenuItem(
          value: "value3",
          child: Container(
              child: Row(children: [
            Icon(
              Icons.portrait_outlined,
              size: 70,
            ),
            Column(
              children: [
                Text(
                  "SKU:ABC-123",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                Text(
                  "         UPC:2345678945678",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Serge Basics",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
          ]))),
      DropdownMenuItem(
          value: "value3",
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Column(
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Bucket: 098765432-678",
                      style: TextStyle(color: Colors.black, fontSize: 8),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text(
                          "Scan Bucket",
                          style: TextStyle(color: Colors.black, fontSize: 8),
                        ),
                        Icon(
                          TablerIcons.barcode,
                          color: Colors.black,
                          size: 13,
                        ),
                      ],
                    ),
                  ],
                ),

                Checkbox(
                    value: isChecked2,
                    onChanged: (value) {
                      setState(() => isChecked = value!);
                    }),
                SizedBox(
                  width: 12,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    // Barcode Icon
                    DialogExample(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Required Quantity:2",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 5,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  Picked Quantity:0",
                          style: TextStyle(color: Colors.red, fontSize: 8),
                        )
                      ],
                    ),
                  ],
                ),

                Checkbox(
                    value: isChecked3,
                    onChanged: (value) {
                      setState(() => isChecked3 = value!);
                    }),
                // Row complete
              ]),
              //new row
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ))),

      DropdownMenuItem(
          value: "value5",
          child: Container(
              child: Column(
            children: [
              Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Bucket: 098765432-678",
                      style: TextStyle(color: Colors.black, fontSize: 8),
                    ),
                    // SizedBox(
                    //   height: 2,
                    // ),

                    Row(
                      children: [
                        Text(
                          "Scan Bucket",
                          style: TextStyle(color: Colors.black, fontSize: 8),
                        ),
                        Container(height: 16, width: 24, child: smallscan()),
                      ],
                    ),
                  ],
                ),

                Checkbox(
                    value: isChecked4,
                    onChanged: (value) {
                      setState(() => isChecked4 = value!);
                    }),
                SizedBox(
                  width: 12,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    DialogExample(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Required Quantity:2",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 5,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "  Picked Quantity:0",
                          style: TextStyle(color: Colors.red, fontSize: 8),
                        )
                      ],
                    ),
                  ],
                ),

                Checkbox(
                    value: isChecked5,
                    onChanged: (value) {
                      setState() => isChecked5 = value!;
                    }),
                //Row complete
              ]),
              //new row
              // SizedBox(
              //   height: 10,
              // ),
            ],
          ))),

      //////////////////////////

      //////////////////////////
      DropdownMenuItem(
          value: "value4",
          child: Container(
              child: Column(children: [
            Row(children: [
              SizedBox(
                width: 100,
              ),
            ]),
            SizedBox(
              width: 90,
            ),
          ]))),
      DropdownMenuItem(
          value: "",
          child: Container(
              child: Row(
            children: [
              Text("ProductA", style: TextStyle(color: Colors.black)),
              SizedBox(width: 93),
              Checkbox(
                  value: isChecked6,
                  onChanged: (value) {
                    setState(() => isChecked6 = value!);
                  }),
            ],
          ))),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("PICK"),
        ),
        body: ListView(
          children: [
            // if (_isDesktop(context) || _isMobile(context))
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SCAN THE PRODUCTS",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    border: Border.symmetric(),
                    borderRadius: BorderRadius.circular(10)),
                // Headings
                child: Row(
                  children: [
                    Column(children: [
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "P",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "4",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ]),
                    SizedBox(
                      width: 70,
                    ),
                    Column(children: [
                      Text(
                        "N",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "2",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ]),
                    SizedBox(
                      width: 70,
                    ),
                    Column(children: [
                      Text(
                        "B",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "5",
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ]),
                    SizedBox(
                      width: 40,
                    ),
                    Column(children: [
                      SizedBox(
                        width: 100,
                      ),
                      DialogExample(),
                      Text(
                        "Scan Location",
                        style: TextStyle(fontSize: 10.0),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() => isChecked = value!);
                          }),
                    ]),
                  ],
                )),
            SizedBox(
              height: 7,
            ),

            // 1
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton<String>(
                focusColor: Colors.white,
                value: "",
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: list,

                onChanged: (value) {
                  setState(() {
                    _chosenValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 0.5,
            ),
            //2
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton<String>(
                focusColor: Colors.white,
                value: "",
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: list,

                onChanged: (value) {
                  setState(() {
                    _chosenValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 0.5,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12)),
              child: DropdownButton<String>(
                focusColor: Colors.white,
                value: "",
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: list,

                onChanged: (value) {
                  setState(() {
                    _chosenValue = value;
                  });
                },
              ),
            ),

            SizedBox(
              height: 50,
            ),

            ElevatedButton(
              child: Text('Continue'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 61, 109, 222),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("1/4"),
              ],
            ),
          ],
        ));
  }
}

//////////////////////////////

mixin T {}

// GM //
class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 40,
      child: TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Scan a Bucket Barcode'),
            actions: <Widget>[
              Center(
                child: new IconButton(
                  icon: const Icon(
                    Icons.qr_code_sharp,
                    size: 50.0,
                  ),
                  highlightColor: Colors.pink,
                  onPressed: () {
                    textshow = "5673274";
                  },
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  child: Text(
                    textshow,
                    style: TextStyle(color: Colors.black),
                  ),
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: TextButton(
                      child: Text('accept'),
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text('cancel'),
                      onPressed: (() => Navigator.pop(context)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        child: Container(
          child: Icon(
            TablerIcons.barcode,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class smallscan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        padding: EdgeInsets.all(0),
        icon: Icon(
          TablerIcons.barcode,
          color: Colors.black,
          size: 13,
        ),
        color: Colors.white,
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Scan a Bucket Barcode'),
            actions: <Widget>[
              Center(
                child: new IconButton(
                  icon: const Icon(
                    Icons.qr_code_sharp,
                    size: 50.0,
                  ),
                  highlightColor: Colors.pink,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: TextButton(
                      child: Text('accept'),
                      onPressed: (() => Navigator.pop(context)),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      child: Text('cancel'),
                      onPressed: (() => Navigator.pop(context)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
