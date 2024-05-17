import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fwms_rm_app/utils/constants/colors.dart';
import 'package:fwms_rm_app/utils/constants/image_strings.dart';
import 'package:fwms_rm_app/utils/constants/sizes.dart';

class CustomCircleImage extends StatelessWidget {
  const CustomCircleImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overplayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = AppSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overplayColor;
  final Color? backgroundColor;
  final double? width, height, padding;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: width,
    //   height: height,
    //   padding: EdgeInsets.all(padding!),
    //   child: CircleAvatar(
    //     radius: 100,
    //     backgroundColor: backgroundColor ?? AppColors.white,
    //     child: Image(
    //       fit: fit,
    //       image: isNetworkImage
    //           ? NetworkImage(image)
    //           : AssetImage(image) as ImageProvider,
    //       color: overplayColor,
    //     ),
    //   ),
    // );
    return CircleAvatar(
      radius: 46,
      backgroundColor: backgroundColor ?? AppColors.white,
      backgroundImage: CachedNetworkImageProvider(image),
    );
  }
}
