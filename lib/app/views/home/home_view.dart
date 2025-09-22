import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _MainScreenState();
}

class _MainScreenState extends State<HomeView> {
  // Контроллер для текстового поля поиска
  final TextEditingController _searchController = TextEditingController();

  // Переменная для хранения текста поиска
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            hintText: 'Искать здеcь...',
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(120.0),
            ),
          ),
        ),
        // backgroundColor: Colors.grey.shade300,
        // foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xFFE7DDD6),
              image: DecorationImage(
                image: AssetImage('assets/images/ashan_thing/yellow_man.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(top: 30),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFE7DDD6),
                      ),
                      child: Center(
                        child: Text(
                          "Товар",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(top: 30),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFE7DDD6),
                      ),
                      child: Center(
                        child: Text(
                          "Товар",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(top: 10),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFE7DDD6),
                      ),
                      child: Center(
                        child: Text(
                          "Товар",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          "Товар",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 23,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.only(top: 10),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFE7DDD6),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
