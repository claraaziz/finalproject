import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  int selectedItem =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5E9DD),
      drawer: Drawer(
        child: Column(),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffF5E9DD),
        elevation: 0.0,
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
    child: BottomNavigationBar(
              currentIndex: selectedItem,
              onTap: (index){
                setState(() {
                  selectedItem = index;
                });
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              fixedColor: Color(0xffCF9775),
              type: BottomNavigationBarType.fixed,
              items:[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined, size: 30, color: Color(0x5acf9775)),
                    label: 'Home',
                  activeIcon: Icon(Icons.home_outlined, size: 30)
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.location_on_outlined, size: 30, color: Color(0x5acf9775)),
                  label: 'Location',
                  activeIcon: Icon(Icons.location_on_outlined, size: 30)
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.coffee_outlined, size: 30, color: Color(0x5acf9775)),
                  label: 'buy',
                  activeIcon: Icon(Icons.coffee_outlined, size: 30)
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline, size: 30, color: Color(0x5acf9775)),
                  label: 'Profile',
                  activeIcon: Icon(Icons.person_outlined, size: 30),
                  backgroundColor: Color(0xffCF9775)
                ),
              ]
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
          child: ListView(
            children: [
              Row(
                children: [
                  Text(
                    "It's Great ",
                    style: TextStyle(
                        fontSize: 35
                    ),
                  ),
                  Text(
                    "Day For",
                    style: TextStyle(
                        color: Color(0xffB98875),
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      fontFamily: 'Sen-Bold'
                    ),
                  )
                ],
              ),
              Text(
                "Coffee.",
                style: TextStyle(
                    color: Color(0xffB98875),
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: 'Sen-Bold'
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                child: Column(
                  children: [
                    ListTile(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text(
                            "Espresso",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                        ),]
                      ),
                      leading: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 5),
                        child: Image.asset('assets/images/Espresso.png'),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right, color: Color(0xffCF9775)),
                      onTap: (){},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                child: Column(
                  children: [
                    ListTile(
                        title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text(
                              "Cappuccino",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),]
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: Image.asset('assets/images/Cappuccino.png'),
                        ),
                        onTap: (){},
                        trailing: Icon(Icons.keyboard_arrow_right, color: Color(0xffCF9775))
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                child: Column(
                  children: [
                    ListTile(
                        title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text(
                              "Macciato",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),]
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 25, 5),
                          child: Image.asset('assets/images/macciato.png'),
                        ),
                        onTap: (){},
                        trailing: Icon(Icons.keyboard_arrow_right, color: Color(0xffCF9775))
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                child: Column(
                  children: [
                    ListTile(
                        title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text(
                              "Mocha",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),]
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 25, 5),
                          child: Image.asset('assets/images/Mocha.png'),
                        ),
                        onTap: (){},
                        trailing: Icon(Icons.keyboard_arrow_right, color: Color(0xffCF9775))
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 10),
                child: Column(
                  children: [
                    ListTile(
                        title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [Text(
                              "Latte",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),]
                        ),
                        leading: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 5),
                          child: Image.asset('assets/images/latte.png'),
                        ),
                        onTap: (){},
                        trailing: Icon(Icons.keyboard_arrow_right, color: Color(0xffCF9775))
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
  Widget CoffeeItem(){
    return Row(
      children: [

      ],
    );
  }
}

