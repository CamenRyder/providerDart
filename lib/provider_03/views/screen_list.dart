import 'package:flutter/material.dart';
import 'package:provider_tutoi01/provider_02/drawer_menu.dart';
import 'package:provider_tutoi01/provider_03/model/shoe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ListShoesScreen extends StatefulWidget {
  const ListShoesScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ListShoesScreen();
  }
}

class _ListShoesScreen extends State<ListShoesScreen> {
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  List<Shoes> listShoes = <Shoes>[
    Shoes(
        name: "Jordan Red",
        color: const Color.fromARGB(255, 186, 45, 35),
        image: "assets/image01.png"),
    Shoes(
        name: "Jordan Fiber ",
        color: const Color.fromARGB(255, 107, 106, 80),
        image: "assets/image2.jpeg"),
    Shoes(
        name: "Jordan Black",
        color: const Color.fromARGB(255, 0, 0, 0),
        image: "assets/image03.jpeg"),
    Shoes(
        name: "Jordan Green",
        color: const Color.fromARGB(255, 3, 77, 14),
        image: "assets/image4.jpeg"),
    Shoes(
        name: "Jordan Pink",
        color: const Color.fromARGB(255, 252, 198, 242),
        image: "assets/image5.jpeg"),
    Shoes(
        name: "Jordan Blue",
        color: const Color.fromARGB(255, 45, 125, 186),
        image: "assets/image06.jpeg"),
  ];
  int currentPages = 0;
  late PageController _pageController;
  @override
  Widget build(BuildContext context) {
    _pageController = PageController();
    return Scaffold(
      key: _scaffoldKey ,
      // appBar: AppBar(

      //   title: const Text("Some Shoe"),
      // ),
       extendBodyBehindAppBar: true,
      drawer: const DrawerMenu(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(0),
              child: PageView.builder(
                onPageChanged: (value) {
                  currentPages = value;
                  print(value);
                },
                itemCount: listShoes.length,
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 20,
                          child: SizedBox(
                            height: 350,
                            width: 350,
                            child: Image.asset(listShoes[index].image),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            listShoes[index].name,
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[500]),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(30, 40, 30, 40),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.blue[500]
                                ), 
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 23, 15),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                  )),
                              child: const Padding(
                                  padding: EdgeInsets.fromLTRB(25, 5, 0, 6),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Text(
                                            'Get It',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontFamily: 'Nunito',
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          )),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ]);
                },
                controller: _pageController,
              )),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(flex: 3, child: Container()),
                Expanded(
                  flex: 8,
                  child: Center(
                    child: SmoothPageIndicator(
                        controller: _pageController, // PageController
                        count: listShoes.length,
                        effect: const WormEffect(
                            activeDotColor: Colors.black,
                            dotHeight: 12,
                            dotWidth: 12), // your preferred effect
                        onDotClicked: (index) {
                          if (index < currentPages) {
                            _pageController.previousPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          } else {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          }
                        }),
                  ),
                )
              ],
            ),
          ),
            Positioned(child: Container(
            margin: const EdgeInsets.fromLTRB(10, 60, 0, 0),
            child:  
                InkWell(
                  child: const Icon(Icons.menu_rounded, size: 38 , color: Colors.blue,),
                  onTap:() {
                  _scaffoldKey.currentState?.openDrawer() ;  
                  },
                ) ,  
               

            )
            ) , 
        ],
      ),
    );
  }
}
