import 'package:flutter/material.dart';
import 'package:vets_uo_flutter_app/src/user.dart';
class UserView extends StatelessWidget {
  final User user;
  const UserView({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ver información del usuario"),
        ),
        body: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                enabled:false,
                controller: TextEditingController(text: user.name),
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                 enabled:false,
                controller: TextEditingController(text: user.surname),
                decoration: const InputDecoration(
                  labelText: 'Apellidos',
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                 enabled:false,
                controller: TextEditingController(text: user.email),
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                 enabled:false,
                controller:TextEditingController(text: user.phone),
                decoration: const InputDecoration(
                  labelText: 'Telefóno',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          
        ),
        );
  }
  
}
