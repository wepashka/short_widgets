import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:short_widgets/ui_widgets/loading.dart';

class Sli extends SliverToBoxAdapter {
  const Sli({super.key, required Widget ch}) : super(child: ch);
}

class Inw extends InkWell {
  Inw({
    super.key,
    double radius = 0,
    Function()? onTap,
    required Widget ch,
    bool isCirle = false,
  }) : super(
          onTap: onTap,
          borderRadius: BorderRadius.all(
            isCirle ? const Radius.circular(180) : Radius.circular(radius),
          ),
          child: ch,
        );
}

class Svvg extends SvgPicture {
  Svvg.asset(String assetName,
      {super.key, double? h, double? w, Color? col, BoxFit? fit})
      : super.asset('assets/icons/$assetName.svg',
            height: h, width: w, fit: fit ?? BoxFit.contain, color: col);
}

class Ro extends Row {
  Ro({
    super.key,
    required List<Widget> ch,
    CrossAxisAlignment cros = CrossAxisAlignment.center,
    MainAxisAlignment main = MainAxisAlignment.start,
    MainAxisSize mAxSiz = MainAxisSize.max,
  }) : super(
          children: ch,
          crossAxisAlignment: cros,
          mainAxisAlignment: main,
          mainAxisSize: mAxSiz,
        );
}

class Colmn extends Column {
  Colmn({
    super.key,
    required List<Widget> ch,
    CrossAxisAlignment cros = CrossAxisAlignment.center,
    MainAxisAlignment main = MainAxisAlignment.start,
    MainAxisSize mAxSize = MainAxisSize.max,
  }) : super(
          children: ch,
          crossAxisAlignment: cros,
          mainAxisAlignment: main,
          mainAxisSize: mAxSize,
        );
}

class Padd extends Padding {
  Padd(
      {super.key,
      double? pad,
      double? hor,
      double? ver,
      double? top,
      double? bot,
      double? left,
      double? right,
      Widget? ch})
      : super(
            padding: hor != null || ver != null
                ? EdgeInsets.symmetric(horizontal: hor ?? 0, vertical: ver ?? 0)
                : top != null || bot != null || right != null || left != null
                    ? EdgeInsets.only(
                        bottom: bot ?? 0,
                        left: left ?? 0,
                        right: right ?? 0,
                        top: top ?? 0)
                    : pad != null
                        ? EdgeInsets.all(pad)
                        : EdgeInsets.zero,
            child: ch);
}

class Box extends SizedBox {
  const Box({super.key, Widget? ch, double? h, double? w})
      : super(child: ch, height: h, width: w);
}

class Con extends Container {
  Con(
      {Widget? ch,
      Key? key,
      BoxBorder? border,
      double? pad,
      double? padHor,
      double? padVer,
      double? padTop,
      double? padBot,
      double? padLeft,
      double? padRight,
      double? mar,
      double? marHor,
      double? marVer,
      double? marTop,
      double? marBot,
      double? marLeft,
      double? marRight,
      double? radius,
      double? radtopLeft,
      double? radtopRight,
      double? radbotLeft,
      double? radbotRight,
      List<BoxShadow>? shadow,
      Color? col,
      double? h,
      BoxConstraints? cons,
      double? w,
      BoxShape? shape,
      ImageProvider? img,
      BoxFit? imgFit,
      Clip? clip = Clip.hardEdge,
      AlignmentGeometry? align})
      : super(
          child: ch,
          margin: marHor != null || marVer != null
              ? EdgeInsets.symmetric(
                  horizontal: marHor ?? 0, vertical: marVer ?? 0)
              : marTop != null ||
                      marBot != null ||
                      marRight != null ||
                      marLeft != null
                  ? EdgeInsets.only(
                      bottom: marBot ?? 0,
                      left: marLeft ?? 0,
                      right: marRight ?? 0,
                      top: marTop ?? 0)
                  : mar != null
                      ? EdgeInsets.all(mar)
                      : EdgeInsets.zero,
          clipBehavior: clip!,
          padding: padHor != null || padVer != null
              ? EdgeInsets.symmetric(
                  horizontal: padHor ?? 0, vertical: padVer ?? 0)
              : padTop != null ||
                      padBot != null ||
                      padRight != null ||
                      padLeft != null
                  ? EdgeInsets.only(
                      bottom: padBot ?? 0,
                      left: padLeft ?? 0,
                      right: padRight ?? 0,
                      top: padTop ?? 0)
                  : pad != null
                      ? EdgeInsets.all(pad)
                      : EdgeInsets.zero,
          height: h,
          width: w,
          constraints: cons,
          key: key,
          alignment: align,
          decoration: BoxDecoration(
            border: border,
            borderRadius: radius != null
                ? BorderRadius.circular(radius)
                : (radbotLeft != null ||
                        radbotRight != null ||
                        radtopLeft != null ||
                        radtopRight != null)
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(radbotLeft ?? 0),
                        bottomRight: Radius.circular(radbotRight ?? 0),
                        topLeft: Radius.circular(radtopLeft ?? 0),
                        topRight: Radius.circular(radtopRight ?? 0))
                    : null,
            boxShadow: shadow,
            color: col,
            shape: shape ?? BoxShape.rectangle,
            image:
                img == null ? null : DecorationImage(image: img, fit: imgFit),
          ),
        );
}

class TexField extends TextFormField {
  TexField(
      {super.key,
      TextEditingController? cont,
      BuildContext? ctx,
      String? label,
      double? horPad,
      String? preTex,
      String? hint,
      TextInputType? keyboard,
      bool? suffix,
      Widget? suffixWid,
      String? Function(String? value)? validate,
      double? verPad,
      bool? obsc,
      bool showHint = true,
      double? letSpace,
      Widget? prefix,
      Color? filCol = Colors.white12,
      int? maxLine = 1,
      int? minLine,
      bool? enabled,
      String? initial,
      void Function(String str)? onChange,
      void Function()? onTap,
      void Function()? onSuffix,
      void Function(String?)? onSubmit,
      int? maxLen})
      : super(
          controller: cont,
          style: Theme.of(ctx!).textTheme.subtitle2!.copyWith(
                color: const Color(0xff333333),
                fontSize: 14,
                letterSpacing: letSpace,
              ),
          validator: validate,
          textInputAction: TextInputAction.next,
          keyboardType: keyboard,
          maxLength: maxLen,
          maxLines: maxLine,
          minLines: minLine,
          obscureText: obsc ?? false,
          obscuringCharacter: '*',
          onTap: onTap,
          onFieldSubmitted: onSubmit,
          enabled: enabled,
          initialValue: initial,
          onChanged: onChange,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: horPad ?? 16, vertical: verPad ?? 10),
            fillColor: filCol,
            filled: true,
            labelText: label ?? '',
            suffixIcon: suffixWid ??
                (suffix != null
                    ? (obsc != null)
                        ? GestureDetector(
                            onTap: onSuffix,
                            child: Padd(
                              right: 15,
                              ch: Svvg.asset(obsc ? 'all/hide' : 'all/hide',
                                  fit: BoxFit.cover),
                            ),
                          )
                        : const Box()
                    : null),
            suffixIconConstraints: suffixWid != null
                ? null
                : const BoxConstraints(maxHeight: 14, maxWidth: 34),
            errorStyle:
                const TextStyle(height: 0.7, fontWeight: FontWeight.normal),
            hintText: hint,
            floatingLabelBehavior: !showHint
                ? FloatingLabelBehavior.auto
                : FloatingLabelBehavior.always,
            hintStyle: Theme.of(ctx).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14 /* * ratio */,
                  color: Colors.black26,
                ),
            isDense: true,
            prefixIcon: prefix,
            prefixIconConstraints: preTex == null
                ? const BoxConstraints(minWidth: 0, minHeight: 0)
                : const BoxConstraints(maxHeight: 20, maxWidth: 45),
            prefixStyle: Theme.of(ctx)
                .textTheme
                .subtitle2!
                .copyWith(color: const Color(0xff333333), fontSize: 14),
            prefixText: preTex,
            labelStyle: Theme.of(ctx)
                .textTheme
                .bodyText2!
                .copyWith(color: const Color(0xff817F77)),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent, width: .5),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: .5),
              borderRadius: BorderRadius.circular(6),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        );
}

class TexFieldUnbordered extends TextFormField {
  TexFieldUnbordered(
      {super.key,
      TextEditingController? cont,
      BuildContext? ctx,
      String? label,
      double? horPad,
      String? preTex,
      String? hint,
      TextInputType? keyboard,
      bool? suffix,
      String? Function(String? value)? validate,
      double? verPad,
      bool? obsc,
      bool showHint = false,
      double? letSpace,
      Widget? prefix,
      Color? filCol = Colors.transparent,
      int? maxLine = 1,
      int? minLine,
      bool? enabled,
      void Function(String str)? onChange,
      int? maxLen})
      : super(
          controller: cont,
          style: Theme.of(ctx!).textTheme.subtitle2!.copyWith(
                color: const Color(0xff333333),
                fontSize: 14,
                letterSpacing: letSpace,
              ),
          validator: validate,
          textInputAction: TextInputAction.next,
          keyboardType: keyboard,
          maxLength: maxLen,
          maxLines: maxLine,
          minLines: minLine,
          obscureText: obsc ?? false,
          obscuringCharacter: '*',
          enabled: enabled,
          // inputFormatters: [
          //   FilteringTextInputFormatter.singleLineFormatter,
          // ],
          onChanged: onChange,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: horPad ?? 16, vertical: verPad ?? 10),
            fillColor: filCol,
            filled: true,
            labelText: label ?? '',
            suffixIcon: suffix != null
                ? Padd(right: 15
                    // ch: UiSvg.asset(suffix ? 'eye' : 'eyes', fit: BoxFit.cover),
                    )
                : null,
            suffixIconConstraints:
                const BoxConstraints(maxHeight: 14, maxWidth: 34),
            errorStyle:
                const TextStyle(height: 0.7, fontWeight: FontWeight.normal),
            hintText: hint,
            floatingLabelBehavior: !showHint
                ? FloatingLabelBehavior.auto
                : FloatingLabelBehavior.always,
            hintStyle: Theme.of(ctx).textTheme.subtitle2!.copyWith(
                color: Colors.black12.withOpacity(.3),
                fontSize: 14,
                fontWeight: FontWeight.normal),
            prefixIcon: prefix,
            prefixIconConstraints:
                const BoxConstraints(maxHeight: 20, maxWidth: 45),
            prefixStyle: Theme.of(ctx)
                .textTheme
                .subtitle2!
                .copyWith(color: const Color(0xff333333), fontSize: 14),
            prefixText: preTex,
            labelStyle: Theme.of(ctx).textTheme.bodyText2!.copyWith(
                  color: const Color(0xff817F77),
                ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 0),
              borderRadius: BorderRadius.circular(6),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Colors.transparent, width: .5),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Colors.transparent, width: .5),
              borderRadius: BorderRadius.circular(6),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 1),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        );
}

// ignore: must_be_immutable
class EBtn extends StatelessWidget {
  EBtn({
    Key? key,
    // required this.lg,
    this.onTap,
    this.col,
    this.text,
    this.h,
    this.w,
    this.radius,
    this.border,
    this.txcol,
    this.borCol,
    this.weight,
    this.elevation,
    this.ch,
    this.fSize,
    this.pad,
    this.padBot,
    this.padHor,
    this.padLeft,
    this.padRight,
    this.padTop,
    this.loadCol,
    this.padVer,
    this.padOut,
    this.padOutBot,
    this.padOutHor,
    this.padOutLeft,
    this.padOutRight,
    this.padOutTop,
    this.padOutVer,
  }) : super(key: key);
  final Function()? onTap;
  final Color? col;
  final double? fSize;

  final String? text;
  double? h = 40;
  double? w = 328;
  final double? radius;
  final bool? border;
  final Color? txcol;
  final Color? borCol;
  final Color? loadCol;
  final FontWeight? weight;
  final Widget? ch;
  final double? pad;
  final double? padHor;
  final double? padVer;
  final double? padTop;
  final double? padBot;
  final double? padLeft;
  final double? padRight;
  final double? padOut;
  final double? padOutHor;
  final double? padOutVer;
  final double? padOutTop;
  final double? padOutBot;
  final double? padOutLeft;
  final double? padOutRight;
  final double? elevation;
  // final AppLocalizations lg;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padOutHor != null || padOutVer != null
            ? EdgeInsets.symmetric(
                horizontal: padOutHor ?? 0, vertical: padOutVer ?? 0)
            : padOutTop != null ||
                    padOutBot != null ||
                    padOutRight != null ||
                    padOutLeft != null
                ? EdgeInsets.only(
                    bottom: padOutBot ?? 0,
                    left: padOutLeft ?? 0,
                    right: padOutRight ?? 0,
                    top: padOutTop ?? 0)
                : padOut != null
                    ? EdgeInsets.all(padOut ?? 0)
                    : EdgeInsets.zero,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              elevation: elevation ?? 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: borCol ?? Colors.transparent),
              ),
              backgroundColor: col ?? Colors.deepOrange),
          onPressed: onTap,
          child: Padding(
            padding: padHor != null || padVer != null
                ? EdgeInsets.symmetric(
                    horizontal: padHor ?? 0, vertical: padVer ?? 0)
                : padTop != null ||
                        padBot != null ||
                        padRight != null ||
                        padLeft != null
                    ? EdgeInsets.only(
                        bottom: padBot ?? 0,
                        left: padLeft ?? 0,
                        right: padRight ?? 0,
                        top: padTop ?? 0)
                    : pad != null
                        ? EdgeInsets.all(pad ?? 0)
                        : EdgeInsets.zero,
            child: Box(
              ch: Center(
                  child: ch ??
                      (text == ''
                          ? Loading(
                              color: loadCol ?? Colors.white,
                            )
                          : Text(
                              text ?? '',
                              style: TextStyle(
                                  fontSize: fSize,
                                  color: txcol ?? Colors.white),
                            ))),
              h: h,
              w: w,
            ),
          ),
        ));
  }
}

class Img extends Image {
  Img.asset(
    String name, {
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? w,
    double? h,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) : super.asset('assets/images/$name',
            key: key,
            bundle: bundle,
            frameBuilder: frameBuilder,
            errorBuilder: errorBuilder,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
            scale: scale,
            width: w,
            height: h,
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
            cacheHeight: cacheHeight,
            cacheWidth: cacheWidth);
  Img.network(
    String name, {
    Key? key,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) : super.network(name,
            key: key,
            frameBuilder: frameBuilder,
            errorBuilder: errorBuilder,
            semanticLabel: semanticLabel,
            excludeFromSemantics: excludeFromSemantics,
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
            filterQuality: filterQuality,
            cacheHeight: cacheHeight,
            cacheWidth: cacheWidth);
}

class CRRect extends SingleChildRenderObjectWidget {
  const CRRect({
    super.key,
    this.clipper,
    this.clipBehavior = Clip.antiAlias,
    this.radius,
    this.radbotLeft,
    this.radbotRight,
    this.radtopLeft,
    this.radtopRight,
    super.child,
  });
  final CustomClipper<RRect>? clipper;
  final double? radius;
  final double? radtopLeft;
  final double? radtopRight;
  final double? radbotLeft;
  final double? radbotRight;
  final Clip clipBehavior;

  @override
  RenderClipRRect createRenderObject(BuildContext context) {
    return RenderClipRRect(
      borderRadius: radius != null
          ? BorderRadius.circular(radius ?? 0)
          : (radbotLeft != null ||
                  radbotRight != null ||
                  radtopLeft != null ||
                  radtopRight != null)
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(radbotLeft ?? 0),
                  bottomRight: Radius.circular(radbotRight ?? 0),
                  topLeft: Radius.circular(radtopLeft ?? 0),
                  topRight: Radius.circular(radtopRight ?? 0))
              : const BorderRadius.all(Radius.circular(6)),
      clipper: clipper,
      clipBehavior: clipBehavior,
      textDirection: Directionality.maybeOf(context),
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderClipRRect renderObject) {
    renderObject
      ..borderRadius = radius != null
          ? BorderRadius.circular(radius ?? 0)
          : (radbotLeft != null ||
                  radbotRight != null ||
                  radtopLeft != null ||
                  radtopRight != null)
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(radbotLeft ?? 0),
                  bottomRight: Radius.circular(radbotRight ?? 0),
                  topLeft: Radius.circular(radtopLeft ?? 0),
                  topRight: Radius.circular(radtopRight ?? 0))
              : const BorderRadius.all(Radius.circular(6))
      ..clipBehavior = clipBehavior
      ..clipper = clipper
      ..textDirection = Directionality.maybeOf(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<BorderRadiusGeometry>(
        'borderRadius',
        radius != null
            ? BorderRadius.circular(radius ?? 0)
            : (radbotLeft != null ||
                    radbotRight != null ||
                    radtopLeft != null ||
                    radtopRight != null)
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(radbotLeft ?? 0),
                    bottomRight: Radius.circular(radbotRight ?? 0),
                    topLeft: Radius.circular(radtopLeft ?? 0),
                    topRight: Radius.circular(radtopRight ?? 0))
                : const BorderRadius.all(Radius.circular(6)),
        showName: false,
        defaultValue: null));
    properties.add(DiagnosticsProperty<CustomClipper<RRect>>('clipper', clipper,
        defaultValue: null));
  }
}
