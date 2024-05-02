import 'package:crafty_bay/presentation/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class MainAppBar {
  static PreferredSizeWidget get appBar{
    return AppBar(
      automaticallyImplyLeading:false,
     title: Row(
       children: [
         SvgPicture.asset(AssetsPath.appNavLogoSvg,width:120,),
         const Spacer(),
         IconButton(onPressed:(){}, icon:const Icon(Icons.person_2_outlined)),
         IconButton(onPressed:(){}, icon:const Icon(Icons.phone_outlined)),
         IconButton(onPressed:(){}, icon:const Icon(Icons.notifications_active_outlined)),
       ],
     ),
    );
  }
}
