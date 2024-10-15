import 'package:flutter/material.dart';
import 'package:petshop/constants/Color.dart';

class BannerA3 extends StatelessWidget {
  const BannerA3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      width: screenWidth,
      color: CustomColor.Banner,
      constraints: const BoxConstraints(
        minHeight: 150,
        maxHeight: 250,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.05,
              child: Image.asset(
                "assets/Pattern02.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Bem vindo ao PetCare App",
                  style: TextStyle(
                    fontSize: 42,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.Text4,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Nosso projeto para a A3!",
                  style: TextStyle(
                    fontSize: 52,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.Text2,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
