import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';
import '../provider/users.dart';
import '../routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.toString().isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarUrl.toString()),
          );

    return AnimatedCard(
      direction: AnimatedCardDirection.top,
      duration: Duration(seconds: 1),
      child: ListTile(
        leading: avatar,
        title: GestureDetector(
            onTap: () => {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.USER_DETAIL, arguments: user)
                },
            child: Text(user.name.toString())),
        subtitle: GestureDetector(
            onTap: () => {
                  Navigator.of(context)
                      .pushNamed(AppRoutes.USER_DETAIL, arguments: user)
                },
            child: Text(user.email.toString())),
        trailing: SizedBox(
          width: 100,
          child: Row(
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.edit),
                color: Colors.green,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                    arguments: user,
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.red,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text('Excluir usuário'),
                      content: const Text('Tem certeza???'),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('Não'),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        TextButton(
                          child: const Text('Sim'),
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ],
                    ),
                  ).then(
                    (confirmed) {
                      if (confirmed) {
                        Provider.of<Users>(context, listen: false).remove(user);
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
