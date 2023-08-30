import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task/View/screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedOption='';
  Future dialog (BuildContext context) async{
    return await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (BuildContext context,StateSetter setState){
          return SizedBox(
            height: 400,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Sort by',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      IconButton(onPressed: () {Navigator.pop(context);}, icon: const Icon(Icons.close,color: Colors.grey,))

                    ],),

                ),
                const Divider(
                  height:1,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey,
                ),
                Column(
                  children: <Widget>[
                    RadioListTile(

                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text('Bachelor of Technology'),
                      value: '1',
                      groupValue: _selectedOption,
                      activeColor: Colors.lightBlue,
                      // selected:
                      // _selectedOption==1.toString()?true:false,
                      onChanged: (value) {
                        print('work');
                        setState(() {
                          print('value $value');
                          _selectedOption = value.toString();
                          print('_selectoption $_selectedOption');
                        });
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.lightBlue,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text('Bachelor of Architecture'),
                      value: '2',
                      groupValue: _selectedOption,
                      // selected: _selectedOption==2.toString()?true:false,

                      onChanged: (value) {
                        setState(() {
                          print('value $value');
                          _selectedOption = value.toString();
                          print('_selectoption $_selectedOption');
                        });
                        Navigator.pop(context);

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.lightBlue,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text('Pharmacy'),
                      value: '3',
                      groupValue: _selectedOption,
                      // selected: _selectedOption==3.toString()?true:false,
                      onChanged: (value) {
                        setState(() {
                          print('value $value');
                          _selectedOption = value.toString();
                          print('_selectoption $_selectedOption');
                        });
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));

                      },
                    ),RadioListTile(
                      activeColor: Colors.lightBlue,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text('Law'),
                      value: '4',
                      groupValue: _selectedOption,
                      // selected: _selectedOption==3.toString()?true:false,
                      onChanged: (value) {
                        setState(() {
                          print('value $value');
                          _selectedOption = value.toString();
                          print('_selectoption $_selectedOption');
                        });
                        Navigator.pop(context);
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                      },
                    ),RadioListTile(
                      activeColor: Colors.lightBlue,
                      controlAffinity: ListTileControlAffinity.trailing,
                      title: const Text('Management'),
                      value: '5',
                      groupValue: _selectedOption,
                      // selected: _selectedOption==3.toString()?true:false,
                      onChanged: (value) {
                        setState(() {
                          print('value $value');
                          _selectedOption = value.toString();
                          print('_selectoption $_selectedOption');
                        });
                        Navigator.pop(context);

                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
      },
    );

  }
  int bottomValue=0;

  List<Widget> screens=[];
  @override
  Widget build(BuildContext context) {
    screens.add(Card1());screens.add(Card2());screens.add(Card3());screens.add(Card4());

    return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(190),
            child: AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              toolbarHeight: 190,
              // elevation: 0,
              backgroundColor: const Color(0xff0E3C6E),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(

                          children: [
                            Text('Find your own way',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                            Text('Search in 600 colleges around!',style: TextStyle(color: Colors.white,fontSize: 13),)
                          ],
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.notifications,color: Colors.white,))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 270,
                          child: Card(
                            child: TextField(

                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey
                                ),
                                hintText: 'Search for colleges,school....',
                                prefixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.grey,))
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 30,),
                      Card(
                          child:IconButton(onPressed: () {}, icon: const Icon(Icons.mic,color: Colors.black,))
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      // appBar: AppBar(
      //   backgroundColor: Color(0xff0E3C6E),
      //   toolbarHeight: 200,
      //   title: PreferredSize(
      //     preferredSize: Size.fromHeight(200.0),
      //     child: Column(
      //       children: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Column(
      //               children: [
      //                 Text('Find your own way'),
      //                 Text('Search in 600 colleges around!')
      //               ],
      //             ),
      //             IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             Card(
      //               color: Colors.white,
      //               child: TextField(
      //                 decoration: InputDecoration(
      //                   prefixIcon: IconButton(
      //                       onPressed: () {}, icon: Icon(Icons.search)),
      //                   hintText: 'Search for colleges,school...',
      //                 ),
      //               ),
      //             ),
      //             Card(
      //                 child:
      //                     IconButton(onPressed: () {}, icon: Icon(Icons.mic)))
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      body:screens[bottomValue],
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: bottomValue,
        onTap: (value) {

           setState(() {
             bottomValue=value;
             print('$bottomValue');
           });
        },
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.home_filled,),label: 'Search'),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.search),label:'Saved'),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.save),label:'Save'),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff0E3C6E),
              icon: Icon(Icons.person),label:'Account'),

        ],
      ),
    ));
  }
  Widget Card1(){
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
                onTap:(){
                  dialog(context);
                },

                child: Container(
                  margin: EdgeInsets.all(20),
                // frame8RV1 (1:547)
                padding:  EdgeInsets.fromLTRB(21, 16, 3, 0),
          width:  double.infinity,
          decoration:  BoxDecoration (
            borderRadius: BorderRadius.circular(20),
          image:  DecorationImage (
          fit:  BoxFit.fill,
          image:  AssetImage (
          'assets/stu1.jpeg'
          ),
          ),
          boxShadow:  [
          BoxShadow(
          color:  Color(0x3f000000),
          offset:  Offset(0, 4),
          blurRadius:  2,
          ),
          ],
          ),
          child:
          Stack(
            children: [
                Column(
                crossAxisAlignment:  CrossAxisAlignment.center,
                children:  [
                Container(
                  padding: EdgeInsets.zero,
                // topschoolsVDy (1:549)
                margin:  EdgeInsets.fromLTRB(0, 0, 225, 6),
                child:
                Text(
                'Top Schools',
                style:  TextStyle (
                // 'Lato',
                fontSize:  20,
                fontWeight:  FontWeight.w800,
                height:  1.375,
                color:  Color(0xffffffff),
                ),
                ),
                ),
                Container(
                // searchingforthebestschoolforyo (1:550)
                margin:  EdgeInsets.fromLTRB(0, 0, 113, 10),
                constraints:  BoxConstraints (
                maxWidth:  217,
                ),
                child:
                Text(
                'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                style:  TextStyle (
                // 'Lato',
                fontSize:  12,
                fontWeight:  FontWeight.w700,
                height:  1.4583333333,
                color:  Color(0xffffffff),
                ),
                ),
                ),
                ],
                ),
                Positioned(
                  left: 269,
                  top: 62,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
          //               .vertical(
          // top: Radius.elliptical(150, 30),
          // ),
                      // BorderRadius.all(Radius.circular(20))
                    ),
                    elevation:0,
                    color: Colors.white,
                    // schoolsS2j (1:551)
                    // margin:  EdgeInsets.fromLTRB(265, 0, 0, 0),
                    child:
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: RichText(
                          text:
                          TextSpan(
                            style:  TextStyle (
                              // 'Lato',
                              fontSize:  10,
                              fontWeight:  FontWeight.w800,
                              height:  2.75,
                              color:  Color(0xff000000),
                            ),
                            children:  [
                              TextSpan(
                                text:  '+106',
                                style:  TextStyle (
                                  // 'Lato',
                                  fontSize:  12,
                                  fontWeight:  FontWeight.w800,
                                  height:  2.2916666667,
                                  color:  Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text:  ' ',
                                style:  TextStyle (
                                  // 'Lato',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w800,
                                  height:  2.75,
                                  color:  Color(0xff000000),
                                ),
                              ),
                              TextSpan(
                                text:  'Schools',
                                style:  TextStyle (
                                  // 'Lato',
                                  fontSize:  10,
                                  fontWeight:  FontWeight.w800,
                                  height:  2.75,
                                  color:  Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

            ],
          ),),
              ),
          GestureDetector(
            onTap:(){
              dialog(context);
            },

            child: Container(
              margin: EdgeInsets.all(20),
              // frame8RV1 (1:547)
              padding:  EdgeInsets.fromLTRB(21, 16, 3, 0),
              width:  double.infinity,
              decoration:  BoxDecoration (
                borderRadius: BorderRadius.circular(20),
                image:  DecorationImage (
                  fit:  BoxFit.fill,
                  image:  AssetImage (
                      'assets/stu1.jpeg'
                  ),
                ),
                boxShadow:  [
                  BoxShadow(
                    color:  Color(0x3f000000),
                    offset:  Offset(0, 4),
                    blurRadius:  2,
                  ),
                ],
              ),
              child:
              Stack(
                children: [
                  Column(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children:  [
                      Container(
                        padding: EdgeInsets.zero,
                        // topschoolsVDy (1:549)
                        margin:  EdgeInsets.fromLTRB(0, 0, 225, 6),
                        child:
                        Text(
                          'Top Schools',
                          style:  TextStyle (
                            // 'Lato',
                            fontSize:  20,
                            fontWeight:  FontWeight.w800,
                            height:  1.375,
                            color:  Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // searchingforthebestschoolforyo (1:550)
                        margin:  EdgeInsets.fromLTRB(0, 0, 113, 10),
                        constraints:  BoxConstraints (
                          maxWidth:  217,
                        ),
                        child:
                        Text(
                          'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                          style:  TextStyle (
                            // 'Lato',
                            fontSize:  12,
                            fontWeight:  FontWeight.w700,
                            height:  1.4583333333,
                            color:  Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 269,
                    top: 62,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        //               .vertical(
                        // top: Radius.elliptical(150, 30),
                        // ),
                        // BorderRadius.all(Radius.circular(20))
                      ),
                      elevation:0,
                      color: Colors.white,
                      // schoolsS2j (1:551)
                      // margin:  EdgeInsets.fromLTRB(265, 0, 0, 0),
                      child:
                      SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: RichText(
                            text:
                            TextSpan(
                              style:  TextStyle (
                                // 'Lato',
                                fontSize:  10,
                                fontWeight:  FontWeight.w800,
                                height:  2.75,
                                color:  Color(0xff000000),
                              ),
                              children:  [
                                TextSpan(
                                  text:  '+106',
                                  style:  TextStyle (
                                    // 'Lato',
                                    fontSize:  12,
                                    fontWeight:  FontWeight.w800,
                                    height:  2.2916666667,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text:  ' ',
                                  style:  TextStyle (
                                    // 'Lato',
                                    fontSize:  10,
                                    fontWeight:  FontWeight.w800,
                                    height:  2.75,
                                    color:  Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text:  'Schools',
                                  style:  TextStyle (
                                    // 'Lato',
                                    fontSize:  10,
                                    fontWeight:  FontWeight.w800,
                                    height:  2.75,
                                    color:  Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),),
          ),

        ],
      ),
    );
  }
  Widget Card2(){
    return Container(
      child: Center(child: Text('Screen2')),
    );
  }Widget Card3(){
    return Container(
      child: Center(child: Text('Screen3')),
    );
  }Widget Card4(){
    return Container(
      child: Center(child: Text('Screen4')),
    );
  }


}

class Costom extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;
    // ..image=Image.asset('assets/map.jpeg');


    Path path_0 = Path();
    path_0.moveTo(size.width*0.2202222,size.height*0.3044000);
    path_0.lineTo(size.width*0.2213333,size.height*0.5044000);
    path_0.lineTo(size.width*0.4997778,size.height*0.5032000);
    path_0.lineTo(size.width*0.4995556,size.height*0.4296000);
    path_0.lineTo(size.width*0.5895556,size.height*0.4304000);
    path_0.lineTo(size.width*0.5900000,size.height*0.3048000);

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
