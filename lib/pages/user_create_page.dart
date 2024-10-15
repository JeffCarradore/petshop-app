import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/constants/Color.dart';
import 'package:petshop/request.dart';

class UserCreatePage extends StatefulWidget {
  const UserCreatePage({super.key});

  @override
  State<UserCreatePage> createState() => _UserCreatePageState();
}

class _UserCreatePageState extends State<UserCreatePage> {
  final form = <String, dynamic>{};

  // Controllers para os campos de texto
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();

  void createUser() async {
    final userCreate = UserCreate.fromJson(form);
    await api.postUserUsersPost(userCreate!);
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
          content: Text("Usuário cadastrado com sucesso!"),
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
            decoration: const BoxDecoration(color: CustomColor.Background, boxShadow: [
              BoxShadow(
                color: CustomColor.Shadow,
                blurRadius: 15,
                spreadRadius: 10,
                offset: Offset(0, 10),
              )
            ]),
            child: AppBar(
              title: const Text(
                "Cadastrar Usuário",
                style: TextStyle(color: CustomColor.Text4),
              ),
              backgroundColor: CustomColor.Background,
              elevation: 0,
            )),
      ),

      //Conteúdo
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                onPressed: createUser,
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.Text2,
                ),
                child: const Text(
                  "Cadastrar",
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
