import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  singleProduct(){
    return  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 240,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffd9dad9)),
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.network(
                              'https://img.freepik.com/free-photo/mixed-pizza-with-various-ingridients_140725-3790.jpg?w=2000',
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Chicken Spreme",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "2\$ Small",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 77, 76, 76)),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(left: 5),
                                    height: 30,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 77, 76, 76))),
                                                child: Row(children: const[
                                                  Text("Small"),
                                                  Icon(Icons.arrow_drop_down)
                                                

                                                ],),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 5),
                                  height: 25,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 77, 76, 76))),
                                              child: Row(children: const[
                                                Icon(Icons.remove),
                                                Text("1"),
                                                Icon(Icons.add)

                                              ],),
                                ))
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
            ),
          )
        ],
        backgroundColor: const Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("assets/veg.jpg")),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(50),
                                        bottomLeft: Radius.circular(50))),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "Foodies",
                                        style: TextStyle(
                                            color: Colors.white,
                                            shadows: [
                                              BoxShadow(
                                                  color: Colors.green,
                                                  blurRadius: 10,
                                                  offset: Offset(3, 3))
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "30% Off on Eid",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3))
                                  ]),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "On Selected Restaurent",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3))
                                  ]),
                            )
                          ],
                        ),
                      )),
                  Expanded(child: Container())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Restaurent",
                    style: TextStyle(color: Color.fromARGB(255, 77, 76, 76)),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Color.fromARGB(255, 77, 76, 76)),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal ,
              child: Row(
                
                children: [
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                ],
              ),
            ),
           const Padding(
              padding:  EdgeInsets.only(bottom: 5),
              child:  Text("Desi Restaurents",style: TextStyle(fontSize: 18 ,color: Color.fromARGB(255, 77, 76, 76))),
            ),
                        SingleChildScrollView(
              scrollDirection: Axis.horizontal ,
              child: Row(
                
                children: [
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                 singleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
