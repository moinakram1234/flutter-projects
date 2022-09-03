
import 'package:flutter/material.dart';

class Buckets extends StatefulWidget {
  const Buckets({Key? key}) : super(key: key);

  @override
  State<Buckets> createState() => _BucketsState();
}

class _BucketsState extends State<Buckets> {
  @override
  var count=0;
  
  var colorn='green';
  List<bool> _isShow=[false,false,false];
  bool tick=true;
Widget build(BuildContext context) {
  var mediaq=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick  Bucket Assignment"),
        backgroundColor: Colors.grey,
        leading: BackButton(
          color: Colors.white,
        ),
      
      ),
      body: Container(
        
    margin: EdgeInsets.only(left: 20, top:0, right: 0, bottom:0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select Buckets', style: TextStyle(fontSize: 25),),
        SizedBox(height: 40,),
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
            width: mediaq.size.width*0.9,
            height: mediaq.size.height*0.5,
            child: ListView(
              children: [Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                      children: [
                    Column(
                      children: [
                            Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.10,
                     ),
                     Text('Bucket:pendding',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 11)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 11)),
                    
                     ),
              ElevatedButton(
       style: ElevatedButton.styleFrom(
              
              primary: Colors.white,
             ///// HERE
            ),
            onPressed: () {
                setState(
                () {
                 _isShow[0] = true;
                },
              );
              showDialog(context: context, builder:(context)=>AlertDialog(title: Text('Scan a Bucket Barcode'),
             
              actions: [
                
                  Center(
                    child: new IconButton(
        icon: const Icon(Icons.qr_code_sharp,size: 50.0,),
        highlightColor: Colors.pink,
        onPressed: (){},
      ),
                  ),
                  SizedBox(height:20),
                 Center(
                   child: Container(
                    height: 40,
                    width: 200,
                   decoration: BoxDecoration(
                   border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )
                   ),
                   ),
                 ),
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [  Container(
                  child: TextButton(
                    child: Text('accept'),onPressed: (() => Navigator.pop(context)),
                  ),
                ),
                 Container(
                   child: TextButton(
                    child: Text('cancel'),onPressed: (() => Navigator.pop(context)),
                ),
                 )],
                  )
              
              ],
              ));
            },
              child: Column(
                children: [
               
         
                  Icon(Icons.qr_code_scanner,  color: Colors.black,),

                        Visibility(
            visible: _isShow[0],
     child: Checkbox(  
                        value: tick,
                        onChanged:(value) {
                        setState(() =>tick=value!);
                      }),
          ),
                ],
              )
          )
            
                      ],
                    ),
                  )
                ],
              ),
                SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                  
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(
                      children: [
                            Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.10,
                     ),
                     Text('Bucket:pendding',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 11)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 11)),
                    
                     ),     ElevatedButton(
       style: ElevatedButton.styleFrom(
              
              primary: Colors.white,
             ///// HERE
            ),
            onPressed: () {
                setState(
                () {
                 _isShow[1] = true;
                },
              );
              showDialog(context: context, builder:(context)=>AlertDialog(title: Text('Scan a Bucket Barcode'),
              
              actions: [
                  Center(
                    child: new IconButton(
        icon: const Icon(Icons.qr_code_sharp,size: 50.0,),
        highlightColor: Colors.pink,
        onPressed: (){},
      ),
                  ),
                  SizedBox(height:20),
                 Center(
                   child: Container(
                    height: 40,
                    width: 200,
                   decoration: BoxDecoration(
                   border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )
                   ),
                   ),
                 ),
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [  Container(
                  child: TextButton(
                    child: Text('accept'),onPressed: (() => Navigator.pop(context)),
                  ),
                ),
                 Container(
                   child: TextButton(
                    child: Text('cancel'),onPressed: (() => Navigator.pop(context)),
                ),
                 )],
                  )
              
              ],
              ));
            }, child: Column(
                children: [
               
         
                  Icon(Icons.qr_code_scanner,  color: Colors.black,),
                  
                        Visibility(
            visible: _isShow[1],
     child: Checkbox(  
                        value: tick,
                        onChanged:(value) {
                        setState(() =>tick=value!);
                      }),
          ),
                ],
              )
          )

                      ],
                    ),
                  )
                ],
              )
          ,  SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                     decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Column(
                      children: [
                            Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.10,
                     ),
                     Text('Bucket:pendding',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                      ],
                    ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 11)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 11)),
                    
                     ), 
                         ElevatedButton(
       style: ElevatedButton.styleFrom(
              
              primary: Colors.white,
             ///// HERE
            ),
            onPressed: () {
                setState(
                () {
                 _isShow[2] = true;
                },
              );
              showDialog(context: context, builder:(context)=>AlertDialog(title: Text('Scan a Bucket Barcode'),
              
              actions: [
                  Center(
                    child: new IconButton(
        icon: const Icon(Icons.qr_code_sharp,size: 50.0,),
        highlightColor: Colors.pink,
        onPressed: (){},
      ),
                  ),
                  SizedBox(height:20),
                 Center(
                   child: Container(
                    height: 40,
                    width: 200,
                   decoration: BoxDecoration(
                   border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )
                   ),
                   ),
                 ),
                  Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [  Container(
                  child: TextButton(
                    child: Text('accept'),onPressed: (() => Navigator.pop(context)),
                  ),
                ),
                 Container(
                   child: TextButton(
                    child: Text('cancel'),onPressed: (() => Navigator.pop(context)),
                ),
                 )],
                  )
              
              ],
              ));
            },
               child: Column(
                children: [
               
         
                  Icon(Icons.qr_code_scanner,  color: Colors.black,),
                  
                        Visibility(
            visible: _isShow[2],
     child: Checkbox(  
                        value: tick,
                        onChanged:(value) {
                        setState(() =>tick=value!);
                      }),
          ),
                ],
              )
          )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
        Container(
          child: SizedBox( 
     height:50, //height of button
     width:double.infinity, //width of button equal to parent widget
     child:ElevatedButton(
       style: ElevatedButton.styleFrom(
              
              primary: Colors.blue,
             ///// HERE
            ),
            onPressed: () {},
            child: Text('Start Pick',style: TextStyle(fontSize: 20),),
          )
           //parameters of Button class
     
),
          
        )
              ],
            ),
          ),
          
      
        ],
        ),
      ),
    );
  }
}