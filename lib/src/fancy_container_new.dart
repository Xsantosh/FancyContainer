import 'package:flutter/material.dart';

class FancyContainer extends StatefulWidget {
  final double? width;
  final double height;
  final Color? color1;
  final Widget child;
  final Color? color2;
  final double? radius;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  const FancyContainer({
    Key? key,
    this.onPressed,
    this.width,
    this.height = 120.0,
    this.color1,
    this.color2,
    this.padding,
    this.radius,
    required this.child,
  }) : super(key: key);

  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(widget.radius ?? 20),
            ),
            gradient: LinearGradient(
              colors: [
                widget.color1 ?? const Color(0xFFCB1841),
                widget.color2 ?? const Color(0xFF2684DE),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 12,
                offset: Offset(0, 6),
              )
            ]),
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}
