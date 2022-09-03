
import 'package:flutter/material.dart';

class PickComp extends StatefulWidget {
  const PickComp({Key? key}) : super(key: key);

  @override
  State<PickComp> createState() => _PickCompState();
}

class _PickCompState extends State<PickComp> {
  @override
Widget build(BuildContext context) {
  var mediaq=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick"),
        backgroundColor: Colors.grey,
        leading: BackButton(
          color: Colors.white,
        ),
      
      ),
      body: Container(
        
    margin: EdgeInsets.only(left: 20, top:10, right: 0, bottom:0),
        child: Column(
        children: [
          Text('Pick Completed\nOverview', style: TextStyle(fontSize: 25),),
        SizedBox(height: 40,),
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
            width: mediaq.size.width*0.9,
            height: mediaq.size.height*0.45,
            child: Container(color: Color.fromARGB(251, 212, 211, 211),
              child: ListView(
                children: [Column(
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,)
                        ,Center(
                          child: Container(child: Transform.scale(
                            scale: 2,
                            child: Icon(Icons.check_circle_outline)
                          ),),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top:30.0,left: 30),
                         child: Text('Bucket:676838648623',style: TextStyle(fontSize: 18),),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(top:8.0,left: 30),
                         child: Text('3:UKUS',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(top:5.0,left: 30),
                         child: Text('6:item picked',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),

                        Padding(
                         padding: const EdgeInsets.only(top:25.0,left: 30),
                         child: Text('Bucket:676838648623',style: TextStyle(fontSize: 18),),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(top:8.0,left: 30),
                         child: Text('3:UKUS',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(top:5.0,left: 30),
                         child: Text('6:item picked',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),

                        Padding(
                         padding: const EdgeInsets.only(top:25.0,left: 30),
                         child: Text('Bucket:676838648623',style: TextStyle(fontSize: 18),),
                       ),
                        Padding(
                         padding: const EdgeInsets.only(top:8.0,left: 30),
                         child: Text('3:UKUS',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),
                        Row(
                          children: [
                            Padding(
                             padding: const EdgeInsets.only(top:5.0,left: 30),
                             child: Text('6:item picked',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),
                          Padding(
                         padding: const EdgeInsets.only(top:0,left: 150),
                         child: Text('pick time\n6 mins 32 sec',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                       ),
                          ],
                        ),
                        
                        
                     ],
                    )
                  ],
                ),
                  SizedBox(height: 100),
        
       
                ],
              ),
            ),
            
          ),
          SizedBox(height: 30,),
       Container(
          child: SizedBox( 
     height:50, //height of button
     width:mediaq.size.width*0.9, //width of button equal to parent widget
     child:ElevatedButton(
       style: ElevatedButton.styleFrom(
              
              primary: Color.fromARGB(240, 42, 18, 145),
             ///// HERE
            ),
            onPressed: () {},
            child: Text('Complete',style: TextStyle(fontSize: 20),),
          )
           //parameters of Button class
     
),
          
        )
        ],
        ),
      ),
    );
  }
}