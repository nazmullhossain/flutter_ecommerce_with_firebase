import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CustomListTileWidget extends StatelessWidget {
   CustomListTileWidget({Key? key,
    required this.leadingIcon,
     this.subtileText,
    required this.titleText,
    required this.trailingIcon,
  required this.onPressed})
      : super(key: key);
  final String? subtileText;
  final String titleText;
  final IconData leadingIcon;
  final IconData trailingIcon;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return   ListTile(
      onTap: onPressed,
      title: Text(titleText,
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
        ),),
      subtitle: Text(subtileText!),
      leading: Icon(leadingIcon),
      trailing: Icon(trailingIcon),
    );
  }
}
