import 'package:arxiv_app/screens/home_screen.dart';
import 'package:arxiv_app/state/sidebar_state.dart';
import 'package:arxiv_app/utils/constants.dart';
import 'package:arxiv_app/state/query_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SidebarState>(
          create: (context) => SidebarState(
            screen: SidebarScreenState.search,
            slide: false,
          ),
        ),
        ChangeNotifierProvider<QueryState>(
          create: (context) => QueryState('electron'),
        ),
      ],
      child: MaterialApp(
        title: 'Arxiv Reader',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          errorColor: Colors.white,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
