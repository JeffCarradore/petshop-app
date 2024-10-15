import 'package:flutter/material.dart';
import 'package:petshop/constants/Color.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.maxFinite,
      //margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),

      decoration: const BoxDecoration(
        color: CustomColor.Background,
        //Header Shadow
        boxShadow: [
          BoxShadow(
            color: CustomColor.Shadow,
            blurRadius: 15,
            spreadRadius: 10,
            offset: Offset(0, 10),
          )
        ],
      ),

      //Header
      child: Row(
        children: [
          //Logo
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset(
              "assets/LogoHeader.png",
              width: 50,
              height: 50,
            ),
          ),

          const Spacer(),

          //Botões
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              children: [
                //Botão User
                Container(
                  width: 120,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: CustomColor.Text2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/user-create");
                    },
                    child: const Text(
                      "NEW USER",
                      style: TextStyle(
                        color: CustomColor.Text3,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                //Botão Pet
                Container(
                  width: 120,
                  height: 40,
                  decoration: ShapeDecoration(
                      color: CustomColor.Text2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/pet-create");
                    },
                    child: const Text(
                      "NEW PET",
                      style: TextStyle(
                        color: CustomColor.Text3,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
