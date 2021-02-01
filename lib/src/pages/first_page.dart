
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {


  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Buscar',
      style: optionStyle,
    ),
    Text(
      'Index 2: Lista',
      style: optionStyle,
    ),
    Text(
      'Index 3: Libros',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: <Widget>[

               Text('Bienvenido a'),
               Text('Formación'),
                
              ]
            ),
            Row(
              Card(
                  child: Center(
                  child: Column(
                    children: <Widget>[
                      Text("Frases valurdes"),
                      IconButton(
                        icon: Icon(Icons.access_alarms),
                        tooltip: "Mensaje",
                      ),
                    ],
                  ),
                  ),
                ),
            )

          ],
        ),



        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Lista',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Libros',
            ),
          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black26,
          selectedItemColor: Colors.amber[800],
          onTap:(_selectedIndex){
            switch(_selectedIndex){
              case 0:
                Navigator.pushNamed(context, "/");
                break;
              case 1:
                Navigator.pushNamed(context, "search");
                break;
              case 2:
                Navigator.pushNamed(context, "lista_cursos");
                break;
               case 3:
                Navigator.pushNamed(context, "notas");
                break;
            }
          },
        ),
      ),
    );
  }
}