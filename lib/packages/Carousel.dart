import 'package:flutter/material.dart';
import 'Constraint.dart';

class AudiCar {
  AudiCar({this.model, this.image, this.description});

  String model;
  String image;
  String description;
}

var cars = [
  
  AudiCar(
      model: 'Audi A6',
      image: 'https://www.audi.in/content/dam/nemo/in/teaser-new-home-full-width/2019/Banner/A6/gallery/A6_Gallery1.jpg?output-format=webp&downsize=1459px:*',
      description:
          " The Audi A6 Sedan combines these values into an exceptionally sporty and elegant symbiosis. Elegant and progressive at the same time, this versatility and comfort open up a new kind of mobility."),
  AudiCar(
      model: 'Audi RS 7',
      image: 'https://www.audi.in/content/dam/nemo/models/a7/rs-7-sportback/my-2020/1920x1080-inline-media-gallery/1920x1080-ARS7_191005.jpg?output-format=webp&downsize=1459px:*',
      description:
          "With the Audi RS 7 Sportback, you can have both. Coupé-like elegant design lines in tango red meet the brute force of the V8 TFSI engine. Innovative technology meets intuitive dynamism. Experience the fascination of not having to compromise."),
  AudiCar(
      model: 'Audi A8 L',
      image:
          'https://m.economictimes.com/thumb/msid-67161935,width-1200,height-900,resizemode-4,imgsize-525022/audi-a8.jpg',
      description:
          "Configure your own personal space in the back, more flexible and comfortable than ever before, and experience even greater luxury in the new Audi A8 L."),
  AudiCar(
      model: 'Audi Q2',
      image:
          'https://www.audi.in/content/dam/nemo/models/q2/q2/my-2019/1920x1080-mtc-xl-16-9/1920x1020_AQ2_161022.jpg?output-format=webp&downsize=1459px:*',
      description:
          "The Audi Q2 is a real all-rounder. Youthfully styled and with lots of high-tech on board, it combines progressive design, great driving pleasure and high functionality. "),
  AudiCar(
      model: 'Audi Q8',
      image: 'https://www.audi.in/content/dam/nemo/models/q8/q8/my-2019/1920x1080-inline-media-gallery/1920x1080_InlineMediaGallery_AQ8_181002.jpg?output-format=webp&downsize=1459px:*',
      description:
          "The Audi Q8 combines the elegance of a four-door luxury coupé with the practical versatility of a large SUV. Richly equipped, comprehensively connected and tough enough for off-road duty, it is a confident companion for business and leisure."),
  AudiCar(
      model: 'Audi A4',
      image: 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201608/audi-a4_647_082316053727.jpg',
      description:
          'The Audi A4 Sedan comes across more than ever before: a premium and functional interior, innovative technologies in the realms of digitalisation, infotainment and driver assist systems, and a new 2.0L TFSI Engine completes the package..'),
];

class CarouselCard extends StatelessWidget {
  CarouselCard({this.car});
  AudiCar car;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 32, left: 8.0, right: 8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 20),
                  blurRadius: 0.0,
                ),
              ],
              image: DecorationImage(
                  image: NetworkImage(car.image), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 44,
                  height: 44,
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Spacer(),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(car.model, style: kCardTitleStyle),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(
                              car.description,
                              style: kCardDescriptionTextStyle,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 5,
                            ),
                          )
                        ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselList extends StatefulWidget {
  _CarouselListState createState() => _CarouselListState();
}

class _CarouselListState extends State<CarouselList> {
  int currentPage = 0;

  Widget updateIndicatos() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: cars.map((car) {
        var index = cars.indexOf(car);
        return Container(
          width: 7.0,
          height: 7.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Colors.red : Color(0xFFA6AEBD),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text(
            'Carousel',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Spacer(),
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: double.infinity,
                child: PageView.builder(
                    itemBuilder: (context, index) {
                      return Opacity(
                        opacity: currentPage == index ? 1.0 : 0.8,
                        child: CarouselCard(
                          car: cars[index],
                        ),
                      );
                    },
                    itemCount: cars.length,
                    controller: PageController(
                      viewportFraction: 0.75,
                      initialPage: 0,
                    ),
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    })),
            updateIndicatos(),
            Spacer(),
            Column(
              children: [
                Text(
                  'Flutter UI Component Library',
                  style: kHeadlineLabelStyle,
                ),
                Text(
                  '@imsachinshah',
                  style: kSubtitleStyle,
                )
              ],
            ),
            Spacer()
          ],
        ));
  }
}
