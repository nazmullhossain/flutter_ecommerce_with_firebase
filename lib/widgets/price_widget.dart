import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
        child: FittedBox(
          child: Row(
            children: [
              Text("1.59 \$",style: TextStyle(
                color: Colors.green,
                fontSize: 22
              ),),
              SizedBox(width: 8,),
              Text("5.59 \$",style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                decoration: TextDecoration.lineThrough
              ),),
            ],
          ),
        ));
  }
}
