import 'package:arxiv_app/sidebar_screens/search_tab.dart';
import 'package:arxiv_app/utils/constants.dart';
import 'package:arxiv_app/state/sidebar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    Key? key,
    required this.animationValue,
  }) : super(key: key);
  final double animationValue;
  Widget _screenSet(SidebarScreenState screenState) {
    switch (screenState) {
      case SidebarScreenState.search:
        return const SearchTab();
      default:
        return Text('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(-250 + animationValue, 0, 0),
      child: Container(
        width: 260,
        color: Colors.red.shade900,
        padding: const EdgeInsets.only(
            left: 20.0, top: 20.0, bottom: 20.0, right: 15.0),
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Provider.of<SidebarState>(context, listen: false).slideIn();
                },
                child: Container(
                  padding:
                      const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    'images/back.svg',
                    width: Constants.svgWidth,
                    color: Colors.white,
                  ),
                ),
              ),
              AnimatedSwitcher(
                //Fade Transition
                duration: const Duration(milliseconds: 100),
                layoutBuilder:
                    (Widget? currentChild, List<Widget> previousChildren) {
                  return Stack(
                    children: <Widget>[
                      ...previousChildren,
                      if (currentChild != null) currentChild,
                    ],
                    alignment: Alignment.topCenter,
                  );
                },
                child: _screenSet(Provider.of<SidebarState>(context).screen),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
