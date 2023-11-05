library flexi_whatsapp_share;

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class flexi_whatsapp_share {

  static share({required String message,required String mobileNumber}) async {
    var whatsappURlAndroid = "whatsapp://send?phone=" + mobileNumber + "&text=$message";
    var whatsappURLIos = "whatsapp://wa.me/$mobileNumber?text=$message";

    if (await launchUrl(Uri.parse(Platform.isIOS ? whatsappURLIos : whatsappURlAndroid),mode: LaunchMode.externalApplication)) {
      await canLaunchUrl(Uri.parse(Platform.isIOS ? whatsappURLIos : whatsappURlAndroid));
    } else {
      Fluttertoast.showToast(
          msg: "Please install whatsapp to share",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.transparent,
          textColor: Colors.black,
          fontSize: 16.0
      );
    }
  }

}