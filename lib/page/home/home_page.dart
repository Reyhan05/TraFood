import 'package:flutter/material.dart';
import 'package:travell_in/data/data_wisata.dart';
import 'package:travell_in/page/detail/detail_home.dart';
import 'package:travell_in/page/home/home_food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DataWisata> _dataWisata = ListDataWisata;
  double _screenWidthAdjusment = 0;

  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget HomePage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'TraFood',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/media/FLWSQtfacAMp05e.png',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ListView.builder(
                    itemExtent: 190.0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: _dataWisata.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                                fullscreenDialog: true,
                                transitionDuration: Duration(milliseconds: 200),
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return DetailScreen(
                                    dataWisata: _dataWisata[index],
                                  );
                                },
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                }),
                          );
                        },
                        child: Card(
                          margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          clipBehavior: Clip.antiAlias,
                          child: Stack(
                            children: [
                              Hero(
                                tag: 'background' + _dataWisata[index].title,
                                child: Container(
                                  color: _dataWisata[index].materialColor,
                                ),
                              ),
                              Positioned(
                                top: 0.0,
                                left: 0.0,
                                right: 0.0,
                                child: Hero(
                                  tag: 'image' + _dataWisata[index].title,
                                  child: Image.network(
                                    _dataWisata[index].image,
                                    height: 80.0,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 96.0,
                                left: 16.0,
                                width: _screenWidthAdjusment,
                                child: Hero(
                                  tag: 'Text' + _dataWisata[index].title,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      _dataWisata[index].title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16.0,
                                top: 118.0,
                                width: _screenWidthAdjusment,
                                child: Hero(
                                  tag: 'subtitle' + _dataWisata[index].title,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      _dataWisata[index].description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    _screenWidthAdjusment = MediaQuery.of(context).size.width - 48.0 - 64.0;
    super.didChangeDependencies();
  }

  Widget body(int index) {
    switch (index) {
      case 0:
        return HomePage();
        break;
      case 1:
        return HomeFood();
        break;
      default:
        return HomePage();
    }
  }

  Widget BottomNavBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.grey.shade200,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: "Wisata",
              backgroundColor: Colors.lightBlueAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: "Food",
              backgroundColor: Colors.lightBlueAccent),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[800],
        onTap: _onItemTapped);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(), body: body(_selectedIndex));
  }
}
