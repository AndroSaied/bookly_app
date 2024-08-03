import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

Future<void> launchMyUrl(context, {required String link}) async {
  final Uri url = Uri.parse(link);

  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Could not launch")));
  }
}