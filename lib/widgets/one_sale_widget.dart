import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterecommerce/widgets/price_widget.dart';

import '../services/utils.dart';

class OneSaleWidget extends StatefulWidget {
  const OneSaleWidget({Key? key}) : super(key: key);

  @override
  State<OneSaleWidget> createState() => _OneSaleWidgetState();
}

class _OneSaleWidgetState extends State<OneSaleWidget> {
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context: context);
    final themeState = utils.getTheme;
    Size size = utils.getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      "https://i.ibb.co/F0s3FHQ/Apricots.png",
                      width: size.width * 0.22,
                      height: size.width * 0.22,
                      fit: BoxFit.fill,
                    ),
                    Column(
                      children: [
                        const Text(
                          "1KG",
                          style: TextStyle(fontSize: 22, color: Colors.red),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                IconlyLight.bag2,
                                size: 22,
                                color: Colors.amber,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                IconlyLight.heart,
                                size: 22,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                PriceWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
