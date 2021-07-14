import 'package:flutter/material.dart';
import 'package:brypse_animations/screens/home_screen.dart';
import 'package:brypse_animations/settings/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLight = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Brypse Animations',
      debugShowCheckedModeBanner: false,
      theme: _isLight ? ThemeData(
        backgroundColor: AppColors.lightBackgroundColor,
        primaryColor: AppColors.lightPrimaryColor,
        hintColor: AppColors.lightHintColor,
        highlightColor: AppColors.lightHintColor,
        accentColor: AppColors.lightAccentColor,
      ) : ThemeData(
        backgroundColor: AppColors.darkBackgroundColor,
        primaryColor: AppColors.darkPrimaryColor,
        hintColor: AppColors.darkHintColor,
        highlightColor: AppColors.darkHintColor,
        accentColor: AppColors.darkAccentColor,
      ),
      home: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text("Brypse tuts",
            style: TextStyle(
              color: _isLight ? AppColors.lightPrimaryColor : AppColors.darkPrimaryColor
            ),
          ),
          backgroundColor: _isLight ? AppColors.lightBackgroundColor : AppColors.darkBackgroundColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart,
                color: _isLight ? AppColors.lightPrimaryColor : AppColors.darkPrimaryColor,
              ),
              onPressed: (){
                print("Carrinho");
              },
            ),
            IconButton(
              icon: Icon(Icons.color_lens,
                color: _isLight ? AppColors.lightPrimaryColor : AppColors.darkPrimaryColor,
              ),
              onPressed: (){
                setState((){
                  _isLight = !_isLight;
                });
              },
            ),
          ],
        ),
        body: HomeScreen(),
      ),
    );
  }
}