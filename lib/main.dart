import 'package:flutter/material.dart';
import 'package:petshop/Widgets/Banner.dart';
import 'package:petshop/Widgets/Footer.dart';
import 'package:petshop/Widgets/Header.dart';
import 'package:petshop/Widgets/PetBanner.dart';
import 'package:petshop/Widgets/UserBanner.dart';
import 'package:petshop/pages/pet_delete_page.dart';
import 'package:petshop/pages/user_delete_page.dart';
import 'package:petshop/pages/user_info_page.dart';
import 'package:petshop/pages/user_create_page.dart';
import 'package:petshop/pages/pet_info_page.dart';
import 'package:petshop/pages/pet_create_page.dart';
import 'package:petshop/pages/user_update_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'PetCare App',
      home: const MyHomePage(title: 'PetCare App'),
      routes: {
        "/user-info": (context) => const UserInfoPage(),
        "/user-create": (context) => const UserCreatePage(),
        "/pet-info": (context) => const PetInfoPage(),
        "/pet-create": (context) => const PetCreatePage(),
        "/user-delete": (context) => const UserDeletePage(),
        "/pet-delete": (context) => const PetDeletePage(),
        "/user-update": (context) => const UserUpdatePage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      //ListView
      body: ListView(
        scrollDirection: Axis.vertical,

        //Divisões
        children: const [
          //HEADER
          Header(),

          //BANNER
          BannerA3(),

          //USER
          Userbanner(),

          //PET
          PetBanner(),

          //FOOTER
          Footer(),
        ],
      ),
    );
  }
}
