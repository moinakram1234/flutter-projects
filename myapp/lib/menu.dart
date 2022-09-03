import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool _isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;

  bool _isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    bool _loading;
    double _progressValue;

    @override
    void initState() {
      super.initState();
      _loading = false;
      _progressValue = 0.0;
    }

    new LinearPercentIndicator(
      width: 140.0,
      lineHeight: 14.0,
      percent: 0.5,
      backgroundColor: Colors.grey,
      progressColor: Colors.blue,
    );

    return Scaffold(
      key: _scaffoldKey,
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text(""),
        actions: [
          Spacer(flex: 10),
          SizedBox(
            width: 190,
          ),
          Icon(
            TablerIcons.building_warehouse,
            color: Colors.black,
            size: 30,
          ),
          Spacer(flex: 1),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Almacen Anzures ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.edit,
            color: Colors.black,
            size: 18,
          ),
          Spacer(flex: 5),
        ],
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            color: Color.fromARGB(255, 218, 200, 39),
            iconSize: 42,
            icon: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: const Text('AH'),
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          if (_isDesktop(context) || _isMobile(context))
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
                // Headings
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Column(children: [
                          Text(
                            "Fulfillments    ",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "8 Picks ",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const Text(
                            "3 Packs",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const Text(
                            "1 Ready to Go",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ]),
                        SizedBox(
                          width: 150,
                        ),
                        Column(children: <Widget>[
                          Text(
                            "Average Time",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "3 min 18 sec",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const Text(
                            "1 min 31, sec",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          const Text(
                            "3 min 18 sec",
                            style: TextStyle(fontSize: 16.0),
                          ),

                          //
                        ])
                      ],
                    ),

                    ///////////////////////////

                    SizedBox(
                      height: 10,
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Stack(children: [
                        SizedBox(
                          height: 25,
                          width: 350,
                          child: LinearProgressIndicator(
                            value: 0.7,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff00ff00)),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0, top: 3),
                          child: Text("Fulfilments"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 278.0, top: 3),
                          child: Text("12"),
                        ),
                      ]),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Stack(children: [
                        SizedBox(
                          height: 25,
                          width: 350,
                          child: LinearProgressIndicator(
                            value: 0.6,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff00ff00)),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0, top: 3),
                          child: Text("Average Time"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 260.0, top: 3),
                          child: Text("5 min 12 sec"),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(
            height: 50,
          ),
          //

          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      TablerIcons.shopping_cart,
                      color: Colors.black,
                      size: 42,
                    ),
                    SizedBox(width: 30),
                    SizedBox(
                      width: 125,
                      height: 50,
                      child: ElevatedButton(
                        child: Text('PICK'),
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 12),
                            textStyle: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                TablerIcons.box,
                color: Colors.black,
                size: 42,
              ),
              SizedBox(width: 30),
              SizedBox(
                width: 125,
                height: 50,
                child: ElevatedButton(
                  child: Text('PACK'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                TablerIcons.truck,
                color: Colors.black,
                size: 42,
              ),
              SizedBox(width: 30),
              SizedBox(
                width: 125,
                height: 50,
                child: ElevatedButton(
                  child: Text('READY TO GO'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                TablerIcons.barcode,
                color: Colors.black,
                size: 42,
              ),
              SizedBox(width: 30),
              SizedBox(
                width: 125,
                height: 50,
                child: ElevatedButton(
                  child: Text('MANAGEMENT'),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      textStyle:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 58, 80, 87),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 41, 66, 74),
              ),
              child: Column(
                children: [
                  Text(
                    'Andres Velasco',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Almacen Anzures',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            ListTile(
              title:
                  const Text('History', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Warehouse',
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              title:
                  const Text('Support', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title:
                  const Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title:
                  const Text('Sign Out', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
