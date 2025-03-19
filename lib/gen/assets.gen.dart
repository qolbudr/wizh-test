/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/banner-1.jpg
  AssetGenImage get banner1 =>
      const AssetGenImage('assets/images/banner-1.jpg');

  /// File path: assets/images/banner-2.jpg
  AssetGenImage get banner2 =>
      const AssetGenImage('assets/images/banner-2.jpg');

  /// File path: assets/images/banner-3.png
  AssetGenImage get banner3 =>
      const AssetGenImage('assets/images/banner-3.png');

  /// File path: assets/images/beach.png
  AssetGenImage get beach => const AssetGenImage('assets/images/beach.png');

  /// File path: assets/images/bus.png
  AssetGenImage get bus => const AssetGenImage('assets/images/bus.png');

  /// File path: assets/images/hotel.png
  AssetGenImage get hotel => const AssetGenImage('assets/images/hotel.png');

  /// File path: assets/images/maps.png
  AssetGenImage get maps => const AssetGenImage('assets/images/maps.png');

  /// File path: assets/images/nature.png
  AssetGenImage get nature => const AssetGenImage('assets/images/nature.png');

  /// File path: assets/images/open_trip.png
  AssetGenImage get openTrip =>
      const AssetGenImage('assets/images/open_trip.png');

  /// File path: assets/images/photo.png
  AssetGenImage get photo => const AssetGenImage('assets/images/photo.png');

  /// File path: assets/images/sillhouette.png
  AssetGenImage get sillhouette =>
      const AssetGenImage('assets/images/sillhouette.png');

  /// File path: assets/images/vacation.png
  AssetGenImage get vacation =>
      const AssetGenImage('assets/images/vacation.png');

  /// File path: assets/images/villa-1.jpeg
  AssetGenImage get villa1 => const AssetGenImage('assets/images/villa-1.jpeg');

  /// File path: assets/images/villa-2.png
  AssetGenImage get villa2 => const AssetGenImage('assets/images/villa-2.png');

  /// File path: assets/images/villa-3.png
  AssetGenImage get villa3 => const AssetGenImage('assets/images/villa-3.png');

  /// File path: assets/images/villa-4.png
  AssetGenImage get villa4 => const AssetGenImage('assets/images/villa-4.png');

  /// File path: assets/images/villa-5.png
  AssetGenImage get villa5 => const AssetGenImage('assets/images/villa-5.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        banner1,
        banner2,
        banner3,
        beach,
        bus,
        hotel,
        maps,
        nature,
        openTrip,
        photo,
        sillhouette,
        vacation,
        villa1,
        villa2,
        villa3,
        villa4,
        villa5
      ];
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  /// File path: assets/json/trip-detail.json
  String get tripDetail => 'assets/json/trip-detail.json';

  /// File path: assets/json/trip.json
  String get trip => 'assets/json/trip.json';

  /// List of all assets
  List<String> get values => [tripDetail, trip];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const AssetGenImage logo = AssetGenImage('assets/logo.png');

  /// List of all assets
  static List<AssetGenImage> get values => [logo];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
