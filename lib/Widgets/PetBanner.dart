import 'package:flutter/material.dart';
import 'package:petshop/constants/Color.dart';

class PetBanner extends StatelessWidget {
  const PetBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.only(top: 80, left: 100,),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 250,
        maxHeight: 400,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Botões
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Título
              const Text(
                "Gerenciamento de pets",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.Text4,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //Botão Get
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/pet-info");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Buscar Pet",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.Text3,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              //Botão Create
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/pet-create");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Cadastrar Pet",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.Text3,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              //Botão Edit
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Editar Pet",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.Text3,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              //Botão Delete
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/pet-delete");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Deletar Pet",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.Text3,
                    ),
                  ),
                ),
              ),
            ],
          ),

          //Logo
          Image.asset(
            "assets/Pet_Image.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
