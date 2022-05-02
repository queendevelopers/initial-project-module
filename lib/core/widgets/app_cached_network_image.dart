import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:initialproject/core/injection/injection.dart';
import 'package:super_module/super_module.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final bool isAuthRequired;
  final double height;
  final double width;

  const AppCachedNetworkImage(
      {Key? key,
      required this.imageUrl,
      required this.isAuthRequired,
      this.height = 100,
      this.width = 150})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt<ISessionManager>().getToken(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final token = snapshot.data as String;
            debugPrint(token);
            return CachedNetworkImage(
                placeholder: (context, url) => const SizedBox(
                    width: 40, height: 40, child: CupertinoActivityIndicator()),
                imageUrl: imageUrl,
                width: width,
                height: height,
                fit: BoxFit.cover,
                httpHeaders: isAuthRequired
                    ? {
                        'Authorization': 'Bearer $token',
                      }
                    : {});
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
