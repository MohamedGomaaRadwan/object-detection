import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.path,
    this.isRemote = true,
    this.boxFit,
    this.height,
    this.width,
    this.placeholder,
  });
  final String? path;
  final bool isRemote;
  final BoxFit? boxFit;
  final double? width;
  final double? height;
  final String? placeholder;
  @override
  Widget build(BuildContext context) {
    if (placeholder != null && path == null) return _buildAssetImage(placeholder!);
    return isRemote ? _buildRemoteImage() : _buildAssetImage(path);
  }

  Image _buildAssetImage(String? path) {
    return Image.asset(
      path ?? '',
      fit: boxFit,
      width: width,
      height: height,
      errorBuilder: (_, __, ___) => _errorImageLoad(),
    );
  }

  CachedNetworkImage _buildRemoteImage() {
    return CachedNetworkImage(
      imageUrl: path ?? '',
      width: width,
      height: height,
      fit: boxFit,
      errorWidget: (_, __, ___) => _errorImageLoad(),
    );
  }

  Center _errorImageLoad() => const Center(child: Icon(Icons.error));
}
