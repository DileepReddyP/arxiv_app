import 'package:arxiv_app/components/article_list.dart';
import 'package:arxiv_app/components/background.dart';
import 'package:arxiv_app/screens/side_drawer.dart';
import 'package:arxiv_app/components/sidebar.dart';
import 'package:arxiv_app/state/sidebar_state.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;
  late bool slide;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    animation = Tween<double>(begin: 0, end: 250).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SidebarState>(
      builder: (context, sidebarState, child) {
        slide = sidebarState.slide;
        slide ? _controller.forward() : _controller.reverse();
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            /*
            double stack because gestures will not be detected if an element is out of bounds when a stack
            is first drawn, and the drawer is out of bounds
            */
            children: [
              //Drawer
              SideDrawer(
                animationValue: animation.value,
              ),
              //Background
              Transform.translate(
                offset: Offset(animation.value, 0.0),
                child: Stack(
                  children: [
                    const BackgroundColors(),
                    //Layer above
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        Expanded(
                          flex: 1,
                          child: CustomSidebar(),
                        ),
                        Expanded(
                          flex: 4,
                          child: ArticleList(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
