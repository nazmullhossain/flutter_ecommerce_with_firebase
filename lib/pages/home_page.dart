import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutterecommerce/services/utils.dart';
import 'package:provider/provider.dart';

import '../provider/dart_theme_provider.dart';
import '../widgets/one_sale_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String>_offerImages=[
    "images/offer1.jpg",
    "images/offer2.jpg",
    "images/offer3.jpg",
    "images/offer4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Utils utils=Utils(context: context);
    final themeState=utils.getTheme;
    Size size=utils.getScreenSize;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height:size.height*0.33,
            child: Swiper(
              itemBuilder: (BuildContext context,int index){
                return Image.asset(_offerImages[index],fit: BoxFit.fill,);
              },
              autoplay: true,
              itemCount: _offerImages.length,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                  color: Colors.white,
                  activeColor: Colors.red
                )
              ),
              control: SwiperControl(
                color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 8,),
          TextButton(onPressed: (){}, child: Text("View All",style: TextStyle(
            fontSize: 15
          ),)),
          SizedBox(
            height: size.height*0.24,
            child: ListView.builder(
              itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return OneSaleWidget();
            }),
          )
          
        ],
      )
      );

  }
}
