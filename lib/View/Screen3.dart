import 'package:flutter/material.dart';
class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
String name='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3C6E),
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: SizedBox(
            width: 50,
            height: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: (){Navigator.pop(context);},
                icon: const Icon(Icons.arrow_back,color: Colors.blue,),
              ),
            ),
          ),
        ),
        actions: [
      Padding(
        padding: const EdgeInsets.all(3.0),
        child: SizedBox(
          width: 50,
          height: 50,
          child: Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
    ),child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add,color: Colors.blue,),
          ),
          ),
        ),
      ),
        ],
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Card(
            elevation: 0,
                color: Colors.white,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius:const BorderRadius.only(topRight: Radius.circular(0),topLeft:Radius.circular(0) ),


                        child: Image.asset(
                          // width: 00,
                            width: MediaQuery.sizeOf(context).width,
                            height:200,
                            // MediaQuery.sizeOf(context).height*0.2 ,
                            fit:BoxFit.fill,
                            'assets/college.jpeg')),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text('GHJK Enginnering college',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                                SizedBox(
                                    width:MediaQuery.sizeOf(context).width * 0.5 ,
                                    child: const Text('Lorem ipsum dolor sit amet, consectetur et dolore magna aliqua. ',style: TextStyle(fontSize: 15,color: Colors.grey))),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                              width: 70,
                              height: 100,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '4.3',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(Icons.star_rate_rounded,color: Colors.white,)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ),
              const TabBar(
                  // labelStyle: TextStyle(
                  //   fontSize:13
                  // ),
                  labelPadding: EdgeInsets.zero,
                  tabs: [
                Tab(text: 'About college',),
                Tab(text: 'Hostel facility',),
                Tab(text: 'Q&A',),
                Tab(text: 'Events',),
              ]),
              SizedBox(height: 500,
                child: TabBarView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Description',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                                style: TextStyle(color: Colors.grey,fontSize: 14),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Location',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              ],
                            ),

                          ),
                          ClipRRect(
                              borderRadius:BorderRadius.circular(10),


                              child: Image.asset(
                                // width: 00,
                                  width: MediaQuery.sizeOf(context).width,
                                  height:200,
                                  // MediaQuery.sizeOf(context).height*0.2 ,
                                  fit:BoxFit.fill,
                                  'assets/map.jpeg')),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text('Student Review',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              ],),
                          ),
                          SizedBox(
                            height: 50,
                            child: ListView(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              physics: const ScrollPhysics(),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        name='Sai';
                                      });
                                    },
                                    child: ClipRRect(
                                        borderRadius:BorderRadius.circular(10),


                                        child: Image.asset(
                                          // width: 00,
                                            width: MediaQuery.sizeOf(context).width*0.1,
                                            height:100,
                                            // MediaQuery.sizeOf(context).height*0.2 ,
                                            fit:BoxFit.fill,
                                            'assets/stu1.jpeg')),
                                  ),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        name='Arnav Sai';
                                      });
                                    },
                                    child: ClipRRect(
                                        borderRadius:BorderRadius.circular(10),


                                        child: Image.asset(
                                          // width: 00,
                                            width: MediaQuery.sizeOf(context).width*0.1,
                                            height:100,
                                            // MediaQuery.sizeOf(context).height*0.2 ,
                                            fit:BoxFit.fill,
                                            'assets/stu2.jpeg')),
                                  ),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        name='faizan ali';
                                      });
                                    },
                                    child: ClipRRect(
                                        borderRadius:BorderRadius.circular(10),


                                        child: Image.asset(
                                          // width: 00,
                                            width: MediaQuery.sizeOf(context).width*0.1,
                                            height:100,
                                            // MediaQuery.sizeOf(context).height*0.2 ,
                                            fit:BoxFit.fill,
                                            'assets/stu3.jpeg')),
                                  ),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        name='Task';
                                      });
                                    },
                                    child: ClipRRect(
                                        borderRadius:BorderRadius.circular(10),


                                        child: Image.asset(
                                          // width: 00,
                                            width: MediaQuery.sizeOf(context).width*0.1,
                                            height:100,
                                            // MediaQuery.sizeOf(context).height*0.2 ,
                                            fit:BoxFit.fill,
                                            'assets/stu1.jpeg')),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),


                                      child: Image.asset(
                                        // width: 00,
                                          width: MediaQuery.sizeOf(context).width*0.1,
                                          height:100,
                                          // MediaQuery.sizeOf(context).height*0.2 ,
                                          fit:BoxFit.fill,
                                          'assets/map.jpeg')),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),


                                      child: Image.asset(
                                        // width: 00,
                                          width: MediaQuery.sizeOf(context).width*0.1,
                                          height:100,
                                          // MediaQuery.sizeOf(context).height*0.2 ,
                                          fit:BoxFit.fill,
                                          'assets/map.jpeg')),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),


                                      child: Image.asset(
                                        // width: 00,
                                          width: MediaQuery.sizeOf(context).width*0.1,
                                          height:100,
                                          // MediaQuery.sizeOf(context).height*0.2 ,
                                          fit:BoxFit.fill,
                                          'assets/map.jpeg')),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),


                                      child: Image.asset(
                                        // width: 00,
                                          width: MediaQuery.sizeOf(context).width*0.1,
                                          height:100,
                                          // MediaQuery.sizeOf(context).height*0.2 ,
                                          fit:BoxFit.fill,
                                          'assets/map.jpeg')),
                                ),Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                      borderRadius:BorderRadius.circular(10),


                                      child: Image.asset(
                                        // width: 00,
                                          width: MediaQuery.sizeOf(context).width*0.1,
                                          height:100,
                                          // MediaQuery.sizeOf(context).height*0.2 ,
                                          fit:BoxFit.fill,
                                          'assets/map.jpeg')),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                     Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 4),
                                    decoration: BoxDecoration(
                                    color: Color(0xff0E3C6E),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color:Colors.black,width: 1)
                                    ),
                                    child:Row(
                                       children: [
                                      Icon(Icons.bed,color: Colors.white,),
                                      SizedBox(width: 10,),
                                         Text('4',style:TextStyle(color: Colors.white,))
                                    ],),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 4),
                                    decoration: BoxDecoration(
                                        // color: Color(0xff0E3C6E),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color:Colors.black,width: 1)
                                    ),
                                    child:Row(
                                      children: [
                                        Icon(Icons.bed,color: Color(0xff0E3C6E), ),
                                        SizedBox(width: 10,),
                                        Text('2',style:TextStyle())
                                      ],),
                                  ),
                                ),Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 4),
                                    decoration: BoxDecoration(
                                        // color: Color(0xff0E3C6E),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color:Colors.black,width: 1)
                                    ),
                                    child:Row(
                                      children: [
                                        Icon(Icons.bed,color:  Color(0xff0E3C6E),),
                                        SizedBox(width: 10,),
                                        Text('2',style:TextStyle())
                                      ],),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.all(8.0),
                                  child: Container(

                                    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 4),
                                    decoration: BoxDecoration(
                                        // color: Color(0xff0E3C6E),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color:Colors.black,width: 1)
                                    ),
                                    child:Row(
                                      children: [
                                        Icon(Icons.bed,color:  Color(0xff0E3C6E),),
                                        SizedBox(width: 10,),
                                        Text('1',style:TextStyle())
                                      ],),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            physics: const ScrollPhysics(),
                            children:[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),


                                    child: Image.asset(
                                      // width: 00,
                                        width: 200,
                                        height:150,
                                        // MediaQuery.sizeOf(context).height*0.2 ,
                                        fit:BoxFit.fill,
                                        'assets/hostel1.jpeg')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),


                                    child: Image.asset(
                                      // width: 00,
                                        width: 200,
                                        height:150,
                                        // MediaQuery.sizeOf(context).height*0.2 ,
                                        fit:BoxFit.fill,
                                        'assets/hostel2.jpeg')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),


                                    child: Image.asset(
                                      // width: 00,
                                        width: 200,
                                        height:150,
                                        // MediaQuery.sizeOf(context).height*0.2 ,
                                        fit:BoxFit.fill,
                                        'assets/hostel3.jpg')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),


                                    child: Image.asset(
                                      // width: 00,
                                        width: 200,
                                        height:150,
                                        // MediaQuery.sizeOf(context).height*0.2 ,
                                        fit:BoxFit.fill,
                                        'assets/hostel1.jpeg')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),


                                    child: Image.asset(
                                      // width: 00,
                                        width: 200,
                                        height:150,
                                        // MediaQuery.sizeOf(context).height*0.2 ,
                                        fit:BoxFit.fill,
                                        'assets/hostel2.jpeg')),
                              ),
                            ]
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'GHJK Enginnering college',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                width: 70,
                                height: 30,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      '4.3',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Icon(Icons.star_rate_rounded,color: Colors.white,)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Facilites',style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.cabin_rounded,color: Colors.orange,),
                              SizedBox(width: 10,),
                              Text('Colleger in 400mtrs')
                            ],
                          ),
                        ),Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.bathroom,color: Colors.lightBlueAccent,),
                              SizedBox(width: 10,),
                              Text('Bedrooms: 2')
                            ],
                          ),
                        ),

                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text('Description'),
                          ],
                        ),
                        SizedBox(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                          ),
                        )
                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          children: [
                            Text('Description'),
                          ],
                        ),
                        SizedBox(
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              name==''?const SizedBox():card(name),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height:60,
                  width: MediaQuery.sizeOf(context).width,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xff0E3C6E),
                      ),
                      onPressed: (){}, child: Text('Apply Now',style: TextStyle(color: Colors.white,fontSize: 17),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget card(String name){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 400,
        child: Card(
          elevation: 5,
          surfaceTintColor: Colors.white,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                  ],
                ),
                const SizedBox(
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                    ),Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                    ),Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                    ),Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.star_rate_rounded,color: Colors.yellow,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
