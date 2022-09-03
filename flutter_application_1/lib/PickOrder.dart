import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  List<bool> isChecked = [false, false, false,false,false,false,false];
  var count=0;
  var colorn='green';
Widget build(BuildContext context) {
  var mediaq=MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("PICK Order Selection"),
        backgroundColor: Colors.grey,
        leading: BackButton(
          color: Colors.white,
        ),
        actions: [
          Icon(Icons.menu_open),
           Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Icon(Icons.search),
    ),
    Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Select Orders to Pick', style: TextStyle(fontSize: 25),),
        
          Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  )),
    margin: EdgeInsets.only(left: 15, top:0, right: 0, bottom:0),
        
            width: mediaq.size.width*0.9,
            height: mediaq.size.height*0.7,
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ), Container(
                       child: Icon(Icons.info_outline)
                     ),   Container(
                                         child: Checkbox(
                                           value: isChecked[0],
                                           onChanged:(value) {
                                            setState(() {
                                              if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                           setState(() =>isChecked[0]=value!);
                                         }),
                                         
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ),    
                      Container(
                       child: Icon(Icons.info_outline)
                     ), 
                   Container(
                                       child: Checkbox(
                                         value: isChecked[1],
                                         onChanged:(value) {
                                           setState(() {
                                              if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                         setState(() =>isChecked[1]=value!);
                                       }),
                                       
                                     ) 
                  

                    
                      ],
                    ),
                  )
                ],
              )
          ,
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ), Container(
                       child: Icon(Icons.info_outline)
                     ),    
                   Container(
                                       child: Checkbox(
                                         value: isChecked[2],
                                         onChanged:(value) {setState(() {
                                              if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                         setState(() =>isChecked[2]=value!);
                                       }),
                                       
                                     ) 
                  

                      ],
                    ),
                  )
                ],
              )
          ,
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ), Container(
                       child: Icon(Icons.info_outline)
                     ),    
                   Container(
                                       child: Checkbox(
                                         value: isChecked[3],
                                         onChanged:(value) {
                                          setState(() {
                                              if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                         setState(() =>isChecked[3]=value!);
                                       }),
                                       
                                     ) 
                  

                      ],
                    ),
                  )
                ],
              )
          ,
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ), Container(
                       child: Icon(Icons.info_outline)
                     ),    
                   Container(
                                       child: Checkbox(
                                         value: isChecked[4],
                                         onChanged:(value) {
                                          setState(() {
                                              if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                         setState(() =>isChecked[4]=value!);
                                       }),
                                       
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ), Container(
                       child: Icon(Icons.info_outline)
                     ),    
                   Container(
                                       child: Checkbox(
                                         value: isChecked[5],
                                         onChanged:(value) {setState(() {
                                              if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                         setState(() =>isChecked[5]=value!);
                                       }),
                                       
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
                        Container(child: Transform.scale(
                          scale: 1.5,
                          child: Icon(Icons.person)
                        ),
                        height: mediaq.size.height*0.15,
                     ),
                     Container(
                      child: Text('Express \nCustomer 1',style: TextStyle(fontSize: 13)),
                      
                     )
                     ,  Container(
                      child: Text('creation date: \n2020-04-08\n item: 2',style: TextStyle(fontSize: 13)),
                    
                     ), Container(
                       child: Icon(Icons.info_outline)
                     ),    
                   Container(
                                       child: Checkbox(
                                         value: isChecked[6],
                                         onChanged:(value) {setState(() {
                                          if(value==true)
                                              count+=1;
                                              else
                                              count-=1;
                                            });
                                         setState(() =>isChecked[6]=value!);
                                       }),
                                       
                                     ) 
                  

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,)
          ,  ElevatedButton(
            
              onPressed: () {
                // Respond to button press
              },
            
               style: ElevatedButton.styleFrom(
                
                primary: count>=3?Colors.green:Colors.blue,
                textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold)),
              child: Text("CONTAINED BUTTON"),
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