import 'package:flutter/material.dart';
import 'package:gestaodomiciliar/config/router.dart';

import '../config/constants.dart';
import 'Texts.dart';

class CustomDrawer extends StatelessWidget
{

  CustomDrawer();

  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      backgroundColor: gdBlack,
      child: ListView(
        padding: const EdgeInsets.all(0),

        children: <Widget>[
          DrawerHeaderItem(name: "Yuvi Matique", email: "yuvimatique@gmail.com"),
          Divider(color: gdRed_2,),
          DrawerItem(title: "Home", icon: Icons.home, onClicked: () => onTapeMenuItem(context, 0)),
          DrawerItem(title: "Predios", icon: Icons.home_work, onClicked: () => onTapeMenuItem(context, 1)),
          DrawerItem(title: "Apartamentos", icon: Icons.home, onClicked: () => onTapeMenuItem(context, 2)),
          DrawerItem(title: "Inquilinos", icon: Icons.people_alt, onClicked: () => onTapeMenuItem(context, 3)),
          DrawerItem(title: "Receitas", icon: Icons.monetization_on_outlined,onClicked: () => onTapeMenuItem(context, 4)),
          DrawerItem(title: "Perfil", icon: Icons.person_outline_sharp, onClicked: () => onTapeMenuItem(context, 5)),
          DrawerItem(title: "Log out", icon: Icons.logout, onClicked: () => onTapeMenuItem(context, 6))
        ],
      ),
    );
  }
  Widget DrawerItem({
    required String title,
    required IconData icon,
    VoidCallback? onClicked,
  }){

    return ListTile(
      leading:  Icon(icon, color: gdRed_2,),
      title: CustomText(text: title,color: Colors.white,fSize: 14.0,lSpacing: 2.0),
      onTap: onClicked,
    );
  }

  Widget DrawerHeaderItem({
    required String name,
    required String email,
    VoidCallback? onClicked,

  }) =>InkWell(
    onTap: onClicked,
    child: UserAccountsDrawerHeader(
      decoration: BoxDecoration(color: gdBlack),
      accountName: CustomText(text: name, color: Colors.white, fSize: 16.0, lSpacing: 2.0,),
      accountEmail: CustomText(text: email, color: Colors.white, fSize: 14.0,lSpacing: 1.0,),
      currentAccountPictureSize: Size.square(50),
      currentAccountPicture: CircleAvatar(
        backgroundColor: gdRed_2,
        child: CustomText(text: "Y", color: Colors.white, fSize: 30.0,), //Text
      ), //circleAvatar
    ),
    );
}

void onTapeMenuItem(BuildContext context, int index)
{
  switch(index)
  {
    case 0:
      Navigator.of(context).pushNamed(Routers.HOME);
      // print(index+1);
      break;
    case 1:
      Navigator.of(context).pushNamed(Routers.BUILDING);
      // print(index+1);
      break;
    case 2:
      // print(index+1);
      break;
    case 3:
      // print(index+1);
      break;
    case 4:
      // print(index+1);
      break;
    case 5:
      // print(index+1);
      break;
    case 6:
      Navigator.of(context).pushNamed(Routers.LOGIN);
      print(index+1);
      break;
    default:
      print('Error option');
      break;
  }
}