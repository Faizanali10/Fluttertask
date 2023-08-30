
import 'package:flutter/material.dart';
import 'package:task/View/Screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          toolbarHeight: 120,
          // elevation: 0,
          backgroundColor: const Color(0xff0E3C6E),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 30,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 250,
                      child: Card(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle:
                                  const TextStyle(fontSize: 14, color: Colors.grey),
                              hintText: 'Search for colleges,school....',
                              prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 30,),
                  Card(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.black,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:Colors.black,width: 1)
                    ),
                    child: const Center(child: Text('MVSH Enginnering College')),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:Colors.black,width: 1)
                    ),
                    child: const Center(child: Text('MVSH Enginnering College')),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:Colors.black,width: 1)
                    ),
                    child: const Center(child: Text('MVSH Enginnering College')),
                  ),
                ),Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:Colors.black,width: 1)
                    ),
                    child: const Center(child: Text('MVSH Enginnering College')),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
           onTap: (){
Navigator.pop(context);
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));
           },
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width ,
              height: 390,
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(

                      children: [

                        ClipRRect(
                            borderRadius:const BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10) ),


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
                              Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(onPressed:(){}, icon: const Icon(Icons.share))),
                              Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(onPressed:(){}, icon: const Icon(Icons.add)))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  child: const Text(
                                      'Lorem ipsum dolor sit amet, consectetur et dolore magna aliqua. ')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: const Color(0xff0E3C6E),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Apply Now',
                                      style: TextStyle(color: Colors.white)))
                            ],
                          ),
                        ),
                        const Divider(
                          height:1,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                Icon(Icons.thumb_up,color: Colors.grey,),
                                  Text('More than 1000+ student have been placed',style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.visibility,color: Colors.grey,),
                                  Text('468+d',style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        )
                          ],
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen3()));
            },
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width ,
              height: 390,
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Column(
                  children: [
                    Stack(

                      children: [

                        ClipRRect(
                            borderRadius:const BorderRadius.only(topRight: Radius.circular(10),topLeft:Radius.circular(10) ),

                            // width: MediaQuery.sizeOf(context).width*4,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20) )
                            // ),
                            // width:MediaQuery.sizeOf(context).width,
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
                              Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(onPressed:(){}, icon: const Icon(Icons.share))),
                              Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(onPressed:(){}, icon: const Icon(Icons.add)))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'XYZ Enginnering college',
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  child: const Text(
                                      'Lorem ipsum dolor sit amet, consectetur et dolore magna aliqua. ')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: const Color(0xff0E3C6E),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Apply Now',
                                      style: TextStyle(color: Colors.white)))
                            ],
                          ),
                        ),
                        const Divider(
                          height:1,
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Colors.grey,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.thumb_up,color: Colors.grey,),
                                  Text('More than 1000+ student have been placed',style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.visibility,color: Colors.grey,),
                                  Text('468+d',style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
