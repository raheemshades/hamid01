import 'package:flutter/material.dart';

import 'package:salamgram/askmuslim.dart';
import 'package:salamgram/widgets/custombotton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: height * 0.1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "Ask muslim",
                        style: TextStyle(
                            color: select == 0 ? Colors.blue : Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: select == 0 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      select = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        "Pray for me",
                        style: TextStyle(
                            color: select == 1 ? Colors.blue : Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: select == 1 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            select == 0
                ? Column(
                    children: [
                      submitButton(
                          height: 50,
                          width: 240,
                          title: "Ask a Muslim +",
                          onPress: () {
                            print("10");
                            // bottomsheet(context);
                            Navigator.of(context).push(_createRoute());
                          }),
                      ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: const AssetImage(
                                            "assets/person.png"),
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                                right: 0,
                                                bottom: 0,
                                                child: Icon(Icons.flag_circle))
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Theresa webb",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: height * 0.003,
                                          ),
                                          const Text(
                                            "5 minutes ago",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 300,
                                        child: Text(
                                          "Any dua to have a child? ",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/msg.png",
                                          width: width * 0.05),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Answer",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "1",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Divider()
                                ],
                              ),
                            );
                          })
                    ],
                  )
                : Column(
                    children: [
                      submitButton(
                          height: 50,
                          width: 240,
                          title: "Post Dua +",
                          onPress: () {
                            print("10");
                            bottomsheet(context);
                          }),
                      ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: const AssetImage(
                                            "assets/person.png"),
                                        child: Stack(
                                          children: const [
                                            Positioned(
                                                right: 0,
                                                bottom: 0,
                                                child: Icon(Icons.flag_circle))
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Theresa webb",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: height * 0.003,
                                          ),
                                          const Text(
                                            "5 minutes ago",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Row(
                                    children: const [
                                      SizedBox(
                                        width: 300,
                                        child: Text(
                                          "I hope my startup platform can be success",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset("assets/ameen.png",
                                          width: width * 0.12),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Ameen",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "25",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Divider()
                                ],
                              ),
                            );
                          })
                    ],
                  ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: ((context, animation, secondaryAnimation) =>
          const Askmuslim()),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;

        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  Future<dynamic> bottomsheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      barrierColor: Colors.grey.withOpacity(0.7),
      backgroundColor: Colors.grey.withOpacity(0.7),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (BuildContext context) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
        return Container(
          height: height * 0.9,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 0.1,
                  ),
                  const Text(
                    "Create Duas",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: SizedBox(
                  // height: height * 0.25,
                  width: width * 0.85,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/boy.png"),
                              ),
                            ),
                            Text(
                              "Me",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.055,
                              width: width * 0.7,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.3),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    hintText: "Type duas..."),
                              ),
                            ),
                            const Icon(
                              Icons.send,
                              size: 35,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.45,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/close.png",
                  height: 60,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
