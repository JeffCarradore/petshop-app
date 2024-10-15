import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/request.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  UserRead? _user;

  void loadUser(int userId) async {
    try {
      final user = await api.getUserUsersIdGet(userId);

      setState(() {
        _user = user;
      });
    } catch (e) {
      setState(() {
        _user = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

        //AppBar
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(20, 0, 0, 0),
                  blurRadius: 15,
                  spreadRadius: 10,
                  offset: Offset(0, 10),
                )
              ]),
              child: AppBar(
                title: const Text(
                  "Buscar Usuário",
                  style: TextStyle(color: Color.fromARGB(255, 15, 52, 61),),
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
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
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
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: "Digite um Id de um usuário para buscar...",
                        ),
                        onChanged: (value) {
                          final userId = int.tryParse(value);
                          if (userId != null) {
                            loadUser(userId);
                          } else {
                            loadUser(0);
                          }
                        },
                      ))),
              if (_user != null) ...[
                Text("Nome do usuário: ${_user!.name}"),
                Text("Endereço do usuário: ${_user?.address}"),
                Text("Email do usuário: ${_user?.email}"),
                Text("Telefone do usuário: ${_user?.phone}"),
              ] else ...[
                const Text("Usuário não encontrado"),
              ],
            ],
          ),
        ));
  }
}
