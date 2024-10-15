import 'package:flutter/material.dart';
import 'package:petshop/constants/Color.dart';
import 'package:petshop/request.dart';

class UserDeletePage extends StatefulWidget {
  const UserDeletePage({Key? key}) : super(key: key);

  @override
  State<UserDeletePage> createState() => _UserDeletePageState();
}

class _UserDeletePageState extends State<UserDeletePage> {
  int userId = -1;

  void deleteUser(int userId) async {
    try {
      await api.deleteUserUsersIdDelete(userId);

      // Exibindo o pop-up se o usuário for deletado com sucesso
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Usuário Deletado"),
            content: Text("O usuário foi deletado com sucesso."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );

      // Limpar o campo ID após a exclusão bem-sucedida
      setState(() {
        userId = -1;
      });
    } catch (e) {
      // Exibindo o pop-up se o usuário não for encontrado
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Usuário não encontrado"),
            content: const Text("O ID do usuário não foi encontrado."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.Background,

      //AppBar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
            decoration:
                const BoxDecoration(color: CustomColor.Background, boxShadow: [
              BoxShadow(
                color: CustomColor.Shadow,
                blurRadius: 15,
                spreadRadius: 10,
                offset: Offset(0, 10),
              )
            ]),
            child: AppBar(
              title: const Text(
                "Deletar Usuário",
                style: TextStyle(color: CustomColor.Text4),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            )),
      ),

      //Conteúdo
      body: Container(
        margin: EdgeInsets.only(top: 150),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 350.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: CustomColor.Text1,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColor.Text1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: "Digite um Id de um usuário para deletar...",
                  ),
                  onChanged: (value) {
                    userId = int.tryParse(value) ?? -1;
                  },
                ),
              ),
            ),

            //Botão
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  if (userId != -1) {
                    deleteUser(userId);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.Text2,
                ),
                child: const Text(
                  "Deletar",
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
      ),
    );
  }
}
