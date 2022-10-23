import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

import '../provider/dart_theme_provider.dart';
import '../widgets/custom_list_widget.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextEditingController _addressTextController=TextEditingController(text: "");
  @override
  void dispose() {
    // TODO: implement
    _addressTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "HI I am Nazmul hossain",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomListTileWidget(
                  onPressed: () async {
                    await showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Update"),
                        content: TextField(
                          onChanged: (value){

                          },
                          controller: _addressTextController,
                          // maxLines: 5,
                          decoration: InputDecoration(
                            hintText: "your address"
                          ),
                        ),
                      actions: [
                        ElevatedButton(onPressed: (){}, child: Text('Update'))
                      ],
                      );
                    });
                  },
                  leadingIcon: IconlyLight.profile,
                  subtileText: "Subtitle here",
                  titleText: "Address",
                  trailingIcon: IconlyLight.arrowRight2),
              CustomListTileWidget(
                  onPressed: () {},
                  leadingIcon: IconlyLight.bag,
                  subtileText: "Subtitle here",
                  titleText: "Orders",
                  trailingIcon: IconlyLight.arrowRight2),
              CustomListTileWidget(
                  onPressed: () {},
                  leadingIcon: IconlyLight.heart,
                  subtileText: "Subtitle here",
                  titleText: "Wishlist",
                  trailingIcon: IconlyLight.arrowRight2),
              CustomListTileWidget(
                  onPressed: () {},
                  leadingIcon: IconlyLight.unlock,
                  subtileText: "Subtitle here",
                  titleText: "Forget Password",
                  trailingIcon: IconlyLight.arrowRight2),
              CustomListTileWidget(
                  onPressed: () {},
                  leadingIcon: IconlyLight.show,
                  subtileText: "Subtitle here",
                  titleText: "Viewed",
                  trailingIcon: IconlyLight.arrowRight2),
              SwitchListTile(
                title: Text("Theme"),
                secondary: Icon(themeState.getDarkTheme
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined),
                onChanged: (bool value) {
                  themeState.setDarkTheme = value;
                },
                value: themeState.getDarkTheme,
              ),
              CustomListTileWidget(
                  onPressed: ()async {
                    await showDialog(
                      barrierDismissible: false,
                        context: context, builder: (context){
                      return AlertDialog(

                        title: Row(
                          children: [
                            Image.asset("images/warning-sign.png",height: 20,width: 20,fit: BoxFit.cover,),
                            SizedBox(width: 8,),
                            Text("Singout")
                          ],
                        ),
                        content: Text("Are you wanna to singout?"),
                        actions: [
                          ElevatedButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Cancel")),
                          ElevatedButton(onPressed: (){}, child: Text("Ok")),
                        ],
                      );
                    });
                  },
                  leadingIcon: IconlyLight.lock,
                  subtileText: "Subtitle here",
                  titleText: "Logout",
                  trailingIcon: IconlyLight.arrowRight2),
            ],
          ),
        ),
      ),
    ));
  }
}
