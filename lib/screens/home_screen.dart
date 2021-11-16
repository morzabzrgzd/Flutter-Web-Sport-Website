import 'package:flutter/material.dart';
import 'package:flutter_sport_website/components/build_icon_widget.dart';
import 'package:flutter_sport_website/components/crist_image.dart';
import 'package:flutter_sport_website/components/learn_more.dart';
import 'package:flutter_sport_website/components/right_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List category = ['Home', 'Products', 'Blog', 'About'];

  String textRonaldo =
      '''Most recently the 36-year-old reportedly asked Ferdinand to send him BT's videos of his two goals against Atalanta in the Champions League.On the friendship between the former team-mates, Ferdinand, 42, told The Athletic: "We just have a good relationship right now.We’ve always stayed in contact''';

  String face =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpnbtTfXcpiKkPul9EC7ky1tT6_TpgKHOAw-wyktUBa5ge5rOlGvqy8I3FD6HeT4nEkWg&usqp=CAU';

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                color: const Color(0xFFFFD6A4),
                ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 120, vertical: 90),
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 20,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(face),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 0),
                                  blurRadius: 10,
                                )
                              ]),
                        ),
                        const Spacer(),
                        Row(
                          children: List.generate(
                            category.length,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      category[index],
                                    ),
                                    AnimatedContainer(
                                      duration: const Duration(milliseconds: 600),
                                      curve: Curves.easeInOutQuart,
                                      margin: const EdgeInsets.only(top: 5),
                                      height: 2,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: selectedIndex == index
                                            ? Colors.black
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xff000000),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text('log in'.toUpperCase()),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Row(
                        children: [
                          const LearnMoreWidget(),
                          const CristImage(),
                          RightWidget(textRonaldo: textRonaldo),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
