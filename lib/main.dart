import 'package:flight_app/CustonShapeClipper.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: <Widget>[
          HomeScreenTopPart()
        ],
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
    return Stack(
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
                          child: Icon(Icons.search,color: Colors.black,),

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
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 160,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image:DecorationImage(
                        image: AssetImage("images/athens.jpg"),
                    fit:BoxFit.cover),
                  ),

                  child: Row(
                    children: <Widget>[
                      Text("teste", style: TextStyle(
                      ),
                        
                      ),

                    ],
                  ),

                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset("images/lasvegas.jpg" , height: 160, width: 160.0,
                    fit: BoxFit.cover,),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset("images/sydney.jpeg" , height: 160, width: 160.0,
                    fit: BoxFit.cover,),
                ),

              ],
            ),
          ),
        ),
      ],

    );
  }
}



