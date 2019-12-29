import 'package:flight_app/CustonShapeClipper.dart';
import 'package:flutter/material.dart';

import 'BottonNavigation.dart';

void main() => runApp(MaterialApp(
  title: "flight list mock up",
  home: HomeScreen(),
  theme: appTheme,
));



Color firstColor = Color(0xFFF47D15);
Color secondColor = Color(0xFFEF772C);

List<String> locations = ['Boston (BOS)','New York(JFK)'];

ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFFF3791A),
  fontFamily: 'Oxigen'
);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: btNavigation(),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              HomeScreenTopPart()
            ],
      )
      ),
    );
  }
}

const TextStyle dropDownLableStyle = TextStyle(color: Colors.white,fontSize: 14.0);
const TextStyle dropDownMenuItemStyle = TextStyle(color: Colors.black,fontSize: 14.0);
int selectedItem = 0;

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Stack(
      children: <Widget>[
        ClipPath(clipper: CustonShapeClipper(),
        child: Container(height: 350.0,decoration: BoxDecoration(gradient: LinearGradient(colors: [
          firstColor,
          secondColor
        ])

        ),
          child: Column(

              children: <Widget>[
                SizedBox(height: 30.0,),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(width: 16.0,),
                      PopupMenuButton(

                        onSelected: (index){

                          setState(() {
                            selectedItem = index;
                          });

                        },
                        child: Row(
                          children: <Widget>[
                            Text(locations[selectedItem],style: dropDownLableStyle,),
                            Icon(Icons.arrow_drop_down,color: Colors.white,)
                          ],
                        ),
                        itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                          PopupMenuItem(

                            child: Text(locations[0],style: dropDownMenuItemStyle ,),
                            value: 0,
                          ),
                          PopupMenuItem(
                            child: Text(locations[1],style: dropDownMenuItemStyle ,),
                            value: 1,
                          )
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.settings,color: Colors.white,),

                    ],
                  ),
                ),
                SizedBox(height: 5.0,),
                Text("Where would\n you want go?",style: TextStyle(fontSize: 20.0,color: Colors.white),textAlign: TextAlign.center,),
                SizedBox(height: 30.0),
                Padding(padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius:  BorderRadius.all(Radius.circular(30.0)),
                    child:  TextField(
                      controller: TextEditingController(text: locations[1]),
                      style: dropDownMenuItemStyle,
                      cursorColor: appTheme.primaryColor,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 14.0),
                        suffix: Material(

                          borderRadius: BorderRadius.all(Radius.circular(38.0)),
                          child: IconButton(
                            icon: Icon(Icons.search,color: Colors.black,
                              ),
                            onPressed: (){



                            },
                          ),

                        ),
                        border: InputBorder.none
                      ),
                    ),
                  ),

                ),



              ],
          ),
        )
        ),
        Padding(
          padding: const EdgeInsets.only(top:350.0),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 290.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(

    children: <Widget>[
    ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    child: Stack(
    children: <Widget>[
    Container(
    height: 210,
    width: 160.0,
    child: Image.asset(
    "images/athens.jpg",
    fit: BoxFit.cover
    ,
    ),
    ),
    Positioned(
    left: 0.0,
    bottom: 0.0,
    width: 160,
    height: 60,
    child: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Colors.black,Colors.black.withOpacity(0.1)],
    ),
    ),

    ),
    ),
    Positioned(
    left: 10,
    bottom: 10,
    right: 10,

    child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: <Widget>[
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text("Athens",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 18.0
    ),
    ),
    Text("12/2019",
    style: TextStyle(
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontSize: 14.0
    ),
    ),

    ],
    ),
    Container(
    decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(10),),
    ),
    child: Padding(
    padding: const EdgeInsets.fromLTRB(8,2,8,2),
    child: Text("12%", style: TextStyle(
    fontSize: 14,
    color: Colors.black
    ),),
    ),

    )
    ],
    ),
    ),
    ],
    ),
    ),
    Row(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
    child: Text("\$ 2,250" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    ),
    Text("(R\$ 4500,00)"),
    ],
    ),
    ],

    ),

    ),
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(

                    children: <Widget>[
                      ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 210,
                                  width: 160.0,
                                  child: Image.asset(
                                    "images/lasvegas.jpg",
                                    fit: BoxFit.cover
                                    ,
                                  ),
                                ),
                                Positioned(
                                  left: 0.0,
                                  bottom: 0.0,
                                  width: 160,
                                  height: 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [Colors.black,Colors.black.withOpacity(0.1)],
                                      ),
                                    ),

                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  bottom: 10,
                                  right: 10,

                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Las Vegas",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 14.0
                                            ),
                                          ),
                                          Text("12/2019",
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white,
                                                fontSize: 14.0
                                            ),
                                          ),

                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.all(Radius.circular(10),),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(8,2,8,2),
                                          child: Text("12%", style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black
                                          ),),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                              child: Text("\$ 2,250" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            ),
                            Text("(R\$ 4500,00)"),
                          ],
                        ),
                    ],

                  ),

                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(

                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 210,
                              width: 160.0,
                              child: Image.asset(
                                "images/sydney.jpeg",
                                fit: BoxFit.cover
                                ,
                              ),
                            ),
                            Positioned(
                              left: 0.0,
                              bottom: 0.0,
                              width: 160,
                              height: 60,
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [Colors.black,Colors.black.withOpacity(0.1)],
                                  ),
                                ),

                              ),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 10,
                              right: 10,

                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Sydney",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 18.0
                                        ),
                                      ),
                                      Text("12/2019",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                            fontSize: 14.0
                                        ),
                                      ),

                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.all(Radius.circular(10),),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8,2,8,2),
                                      child: Text("12%", style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black
                                      ),),
                                    ),

                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                            child: Text("\$ 2,250" ,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          ),
                          Text("(R\$ 4500,00)"),
                        ],
                      ),
                    ],

                  ),

                ),

              ],
            ),
          ),
        ),

      ],

    ),

      );
  }
}



