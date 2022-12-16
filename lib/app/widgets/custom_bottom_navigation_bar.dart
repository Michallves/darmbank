import 'package:flutter/material.dart';

class CustomNavBarItem {
  final Widget icon;
  final String label;
  final TextStyle? labelStyle;
  final Widget activeIcon;
  final Color bubbleColor;

  const CustomNavBarItem({
    required this.icon,
    required this.label,
    this.labelStyle,
    Widget? activeIcon,
    this.bubbleColor = Colors.black,
  }) : activeIcon = activeIcon ?? icon;
}

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final void Function(int) onTap;
  final List<CustomNavBarItem> items;
  final bool showSelectedLabel;
  final bool showUnSelectedLabel;

  ///Whether show animation while switching pages
  final bool animatedSwitch;
  final Duration? animationDuration;
  final Curve switchCurve;
  final Color? backgroundColor;

  ///Bar upper shadow
  final BoxShadow? topShadow;

  /// A brand new customized Bottom Navigation Bar
  const CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.showSelectedLabel = false,
    this.showUnSelectedLabel = true,
    this.animatedSwitch = true,
    this.switchCurve = Curves.linear,
    this.animationDuration,
    this.backgroundColor = Colors.white,
    this.topShadow,
    super.key,
  }) : assert(items.length >= 2 && items.length <= 5,
            "Not in range! You must add from 2 to 5 CustomNavBarItems");

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        //alignment: AlignmentDirectional.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: [
                widget.topShadow ??
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            //padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.items.map((item) {
                int itemIndex = widget.items.indexOf(item);
                bool isSelected = widget.currentIndex == itemIndex;
                bool showSelectedLabel = isSelected && widget.showSelectedLabel;
                bool showUnselectedLabel =
                    !isSelected && widget.showUnSelectedLabel;
                bool animatedSwitchOn = isSelected && widget.animatedSwitch;

                var centralIcon = Padding(
                  key: const ValueKey(1),
                  padding: const EdgeInsets.only(top: 20),
                  child: isSelected
                      ? CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.blue,
                          child: item.activeIcon,
                        )
                      : MaterialButton(
                          minWidth: 78,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          onPressed: () {
                            widget.onTap.call(itemIndex);
                          },
                          child: Column(
                            // ALINHAMENTO DOS ICONES DA BARRA
                            mainAxisAlignment: MainAxisAlignment.center,
                            //TODO: Deixar o código mais legível
                            children: [
                              isSelected ? item.activeIcon : item.icon,
                              if (showSelectedLabel || showUnselectedLabel)
                                Text(
                                  item.label,
                                  style: item.labelStyle ??
                                      const TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Montserrat",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                            ],
                          ),
                        ),
                );

                var topIcon = Padding(
                  key: const ValueKey(2),
                  padding: const EdgeInsets.only(bottom: 30),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: item.bubbleColor,
                    child: item.activeIcon,
                  ),
                );

                return AnimatedSwitcher(
                  duration: widget.animationDuration ??
                      const Duration(milliseconds: 500),
                  reverseDuration: const Duration(seconds: 0),
                  switchInCurve: widget.switchCurve,
                  child: animatedSwitchOn ? topIcon : centralIcon,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
