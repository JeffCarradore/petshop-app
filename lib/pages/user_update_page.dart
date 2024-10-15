import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/constants/Color.dart';
import 'package:petshop/request.dart';

class UserUpdatePage extends StatefulWidget {
  const UserUpdatePage({super.key});

  @override
  State<UserUpdatePage> createState() => _UserUpdatePageState();
}

class _UserUpdatePageState extends State<UserUpdatePage> {
  final form = <String, dynamic>{};
  int userId = -1;

  // Controllers para os campos de texto
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();

  void updateUser() async {
    final userUpdate = UserUpdate.fromJson(form);
    await api.patchUserUsersIdPatch(userId, userUpdate!);
    form.clear();

    // Limpar os campos após a criação do usuário
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    addressController.clear();
    passwordController.clear();

    // Exibir popup de confirmação
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sucesso"),
          content: Text("Usuário atualizado com sucesso!"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Fechar o diálogo
              },
            ),
          ],
        );
      },
    );
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
                "Editar Usuário",
                style: TextStyle(color: CustomColor.Text4,),
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            )),
      ),

      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.0,
              child: TextField(
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                ),
                decoration: const InputDecoration(
                  labelText: "ID",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColor.Text1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                onChanged: (value) {
                  userId = int.tryParse(value) ?? -1;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Nome",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColor.Text1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onChanged: (value) {
                    form["name"] = value;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: emailController,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                ),
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColor.Text1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                onChanged: (value) {
                  form["email"] = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  controller: phoneController,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Telefone",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColor.Text1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onChanged: (value) {
                    form["phone"] = value;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: addressController,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                ),
                decoration: const InputDecoration(
                  labelText: "Endereço",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: CustomColor.Text1,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                onChanged: (value) {
                  form["address"] = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  controller: passwordController,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Senha",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomColor.Text1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onChanged: (value) {
                    form["password"] = value;
                  },
                ),
              ),
            ),

            //Botão
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: updateUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.Text2,
                ),
                child: const Text(
                  "Atualizar",
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
