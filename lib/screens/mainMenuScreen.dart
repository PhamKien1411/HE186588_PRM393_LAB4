import 'package:flutter/material.dart';
import 'package:lab4/button/coreWidgetsDemo.dart';
import 'package:lab4/button/inputControlsDemo.dart';
import 'package:lab4/button/layoutDemo.dart';
import 'package:lab4/button/appStructureScreen.dart';
import 'package:lab4/button/commonUiFixesScreen.dart';

class MainMenuScreen extends StatelessWidget{
  final bool isDark;
  final Function(bool) onThemeChanged;


  const MainMenuScreen({
    super.key,
    required this.isDark,
    required this.onThemeChanged,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LAB 4 - Flutter UI Fundamentals'),
      ),


      body: ListView(
        padding: const EdgeInsets.all(16.0),

        children: [
          menuCard(context, 'Exercise 1 – Core Widgets Demo',
              const CoreWidgetsDemo()),
          menuCard(context, 'Exercise 2 – Input Controls Demo',
              const InputControlsDemo()),
          menuCard(
              context, 'Exercise 3 – Layout Demo', const LayoutDemoScreen()),
          menuCard(context, 'Exercise 4 – App Structure & Theme',
              AppStructureScreen(
                  onThemeChanged: onThemeChanged)),
          menuCard(context, 'Exercise 5 – Common UI Fixes',
              const CommonUIFixesScreen()),
        ],
      ),
    );
  }
    Widget menuCard(BuildContext context, String title, Widget screen){
       return Card(
        margin: const EdgeInsets.only(bottom: 12.0),
         child: ListTile(
           title: Text(title),
           trailing: const Icon(Icons.chevron_right),
           onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
           },
         ),

       );
    }

  }
