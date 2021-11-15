import 'package:arxiv_app/utils/constants.dart';
import 'package:arxiv_app/state/sidebar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bool enabled = Provider.of<SidebarState>(context).
    return Consumer<SidebarState>(builder: (context, sidebarState, child) {
      void _setScreenState(SidebarScreenState screen) {
        sidebarState.newScreenState = screen;
        sidebarState.slideOut();
      }

      return Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 30.0, bottom: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => _setScreenState(SidebarScreenState.search),
              child: SvgPicture.asset(
                'images/search.svg',
                width: Constants.svgWidth,
                color: Colors.white,
              ),
            ),
            SvgPicture.asset(
              'images/home.svg',
              width: Constants.svgWidth,
              color: Colors.white,
            ),
            SvgPicture.asset(
              'images/today.svg',
              width: Constants.svgWidth,
              color: Colors.white,
            ),
            SvgPicture.asset(
              'images/bookmarks.svg',
              width: Constants.svgWidth,
              color: Colors.white,
            ),
            GestureDetector(
              onTap: () => _setScreenState(SidebarScreenState.categories),
              child: SvgPicture.asset(
                'images/categories.svg',
                width: Constants.svgWidth,
                color: Colors.white,
              ),
            ),
            SvgPicture.asset(
              'images/recent.svg',
              width: Constants.svgWidth,
              color: Colors.white,
            ),
            SvgPicture.asset(
              'images/settings.svg',
              width: Constants.svgWidth,
              color: Colors.white,
            ),
          ],
        ),
      );
    });
  }
}
