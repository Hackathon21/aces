import 'package:covid_tracker/components/main_button.dart';
import 'package:covid_tracker/components/skip_button.dart';
import 'package:covid_tracker/components/slider_content.dart';
import 'package:covid_tracker/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int selectedSlider = 0;
  // Slider Data
  Map data={};
  List<Map<String, String>> sliders = [
    {
      "title": "Meeting Online",
      "text": "Stay home and complete all of your important work and meeting for keeping safe you and your family member",
      "image": "assets/images/slider1.svg"
    },
    {
      "title": "Wear a Mask",
      "text": "Always wear a mask while going out of your house. Keep yourself and your family safe",
      "image": "assets/images/slider2.svg"
    },
    {
      "title": "Social Distance",
      "text": "Always maintain social distancing while meeting to someone. ",
      "image": "assets/images/slider3.svg"
    },
  ];

  PageController sliderController = PageController(initialPage: 0, keepPage: false);

  @override
  Widget build(BuildContext context) {
    data=data.isNotEmpty?data:ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      selectedSlider = index;
                    });
                  },
                  controller: sliderController,
                  itemCount: sliders.length,
                  itemBuilder: (context, index) => SliderContent(
                    image: sliders[index]['image'],
                    title: sliders[index]['title'],
                    text: sliders[index]['text'],
                  )
                ),
              ),

              SizedBox(height: kDefaultPadding),

              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        sliders.length,
                        (index) => buildSliderNav(index: index),
                      ),
                    ),

                    Spacer(),

                    Padding(
                      padding: EdgeInsets.all(kDefaultPadding),
                      child: Row(
                        children: [
                          SkipButton(
                            tapEvent: () async {
                              await Navigator.pushNamed(context, "/dashboard",arguments: data);
                            }
                          ),

                          Spacer(),

                          MainButton(
                            tapEvent: () {
                              if (selectedSlider != (sliders.length - 1)) {
                                sliderController.animateToPage(selectedSlider + 1, duration: Duration(milliseconds: 400), curve: Curves.linear);
                              }
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildSliderNav({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: selectedSlider == index ? kPrimaryColor : Color(0xFFD7D7D7),
        borderRadius: BorderRadius.circular(5)
      ),
    );
  }
}