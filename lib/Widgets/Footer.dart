import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      padding:
          const EdgeInsets.only(top: 15, bottom: 15, left: 100, right: 150),
      color: Color.fromARGB(255, 31, 31, 31),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/Logo02.png',
                    height: 100,
                  ),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Contato: contato@petcare.com',
                    style: TextStyle(fontSize: 16, color: Colors.white,),
                  ),
                  SizedBox(height: 05),
                  Text(
                    'Localização: Rua Antônio Dib Mussi, Florianópolis, SC',
                    style: TextStyle(fontSize: 16, color: Colors.white,),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '© 2024 Petcare. Todos os direitos reservados.',
            style: TextStyle(fontSize: 14, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
