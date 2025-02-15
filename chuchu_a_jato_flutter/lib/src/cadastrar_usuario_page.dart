import 'package:flutter/material.dart';

class CadastrarUsuarioPage extends StatelessWidget {
  const CadastrarUsuarioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CadstrarUsuarioStatefulPage();
  }
}

class CadstrarUsuarioStatefulPage extends StatefulWidget {
  const CadstrarUsuarioStatefulPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CadastrarUsuarioState();
  }
}

class CadastrarUsuarioState extends State<CadstrarUsuarioStatefulPage> {
  @override
  Widget build(BuildContext context) {
    TextStyle? ts = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: Color.fromARGB(255, 82, 39, 130),
      decorationStyle: TextDecorationStyle.solid,
    );

    TextStyle? appBarButtonTextStyle = Theme.of(context).textTheme.titleMedium;

    var iconCreateUser = Icon(
      Icons.account_box,
      color: Colors.blueGrey,
      size: 24.0,
    );

    var iconExit = Icon(
      Icons.logout,
      color: Colors.blueGrey,
      size: 24.0,
    );

    return Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            'Criar conta de usuário',
            style: ts,
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Container(
                    height: 50,
                    width: 700,
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 50,
                      width: 500,
                      child: TextFormField(
                        obscureText: false,
                        onTap: () {},
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Digite seu e-mail',
                          labelText: 'E-mail',
                          constraints: BoxConstraints.expand(
                            width: 500,
                            height: 50,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        validator: (String? value) {
                          return value != null && value.contains('@')
                              ? null
                              : 'Digite um e-mail válido';
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Container(
                    width: 400,
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: TextFormField(
                        onSaved: ,
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password),
                          hintText: 'Digite sua senha',
                          labelText: 'Senha',
                          constraints: BoxConstraints.expand(
                            width: 400,
                            height: 50,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        validator: (String? value) {
                          return value != null ? null : 'Digite sua senha';
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 90.0,
                  height: 70.0,
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.check),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 10,
                  ),
                  child: Container(
                    width: 400,
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.password),
                          hintText: 'Digite novamente a sua senha',
                          labelText: 'Repita a senha',
                          constraints: BoxConstraints.expand(
                            width: 400,
                            height: 50,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          ),
                        ),
                        validator: (String? value) {
                          return value != null ? null : 'Digite a sua senha de novo';
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 90.0,
                  height: 70.0,
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.error_outline),
                ),
              ],
            ),
            Container(
              width: 800,
              height: 400,
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 95, height: 60,),
                  SizedBox.fromSize(
                    size: Size(500, 70),
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Container(
                        width: 500,
                        height: 60,
                        alignment: Alignment.center,
                        child: FilledButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              alignment: Alignment.center,
                              fixedSize: Size(300.0, 60.0),
                              backgroundColor:
                              Color.fromARGB(200, 100, 0, 255),
                            ),
                            child: Text(
                              'Criar conta',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(
            //         left: 10,
            //         top: 10,
            //       ),
            //       child: SizedBox(
            //         height: 50,
            //         width: 400,
            //         child: TextFormField(
            //           obscureText: true,
            //           decoration: const InputDecoration(
            //             icon: Icon(Icons.password),
            //             hintText: 'Entre novamente com sua senha',
            //             // labelText: 'Repetir a senha',
            //             label: Text('Repetir a senha'),
            //           ),
            //           validator: (String? value) {
            //             return value != null
            //                 ? null
            //                 : 'Digite novamente a sua senha';
            //           },
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
