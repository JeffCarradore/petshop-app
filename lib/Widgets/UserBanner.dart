import 'package:flutter/material.dart';
import 'package:petshop/constants/Color.dart';

class Userbanner extends StatelessWidget {
  const Userbanner({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.only(top: 80, right: 100,),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 250,
        maxHeight: 400,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Imagem
          Image.asset(
            "assets/User_Image.png",
            width: screenWidth / 2,
          ),

          //const Spacer(),

          //Botões
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Título
              const Text(
                "Gerenciamento de usuários",
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
                    Navigator.of(context).pushNamed("/user-info");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Buscar Usuário",
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
                    Navigator.of(context).pushNamed("/user-create");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Cadastrar Usuário",
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
                  onPressed: () {
                    Navigator.of(context).pushNamed("/user-update");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Editar Usuário",
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
                    Navigator.of(context).pushNamed("/user-delete");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CustomColor.Text2,
                  ),
                  child: const Text(
                    "Deletar Usuário",
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
        ],
      ),
    );
  }
}
