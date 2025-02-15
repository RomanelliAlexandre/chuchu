import 'src/cadastrar_usuario_page.dart';
import 'src/efetuar_login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ChuchuAJatoRestauranteApp());
}

class ChuchuAJatoRestauranteApp extends StatelessWidget {
  const ChuchuAJatoRestauranteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChuchuHomeScreen();
  }
}

class ChuchuHomeScreen extends StatefulWidget {
  const ChuchuHomeScreen({super.key});

  ChuchuHomeScreenState createHomeScreen() {
    return ChuchuHomeScreenState();
  }

  @override
  State<ChuchuHomeScreen> createState() => ChuchuHomeScreenState();
}

class ChuchuHomeScreenState extends State<ChuchuHomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle? ts = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: Color.fromARGB(255, 82, 39, 130),
    );
    ts.apply(
      decorationStyle: TextDecorationStyle.solid,
    );

    TextStyle? titleTextStyle = Theme.of(context).textTheme.titleMedium;
    if (titleTextStyle != null) {
      titleTextStyle.apply(
        fontStyle: ts.fontStyle,
      );
      // titleTextStyle.apply(fontStyle: FontStyle.(
      //     fontWeight: FontWeight.bold));
    }
    TextStyle? appBarButtonTextStyle = Theme.of(context).textTheme.titleMedium;

    var iconLogin = Icon(
      Icons.login,
      color: Colors.blueGrey,
      size: 24.0,
    );

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

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //navigatorKey: NavigationService.navigatorKey,
        // a construção a seguir, com Builder no topo, foi usada
        // para ter um BuildContext que contenha um Navigator.
        initialRoute: '/',
        routes: {
          '/cadastrarusuario': (context) => Builder(
                builder: (context) => const CadastrarUsuarioPage(),
              ),
        },
        home: Builder(
          builder: (context) => Center(
            child: Scaffold(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(
                  'Chuchu-a-Jato App',
                  style: ts,
                  textDirection: TextDirection.ltr,
                ),
              ),
              body: Container(
                width: 1140,
                height: 680,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Image.asset(
                      'assets/image/chuchuajato.png',
                      scale: 0.7,
                      width: 613,
                      height: 300,
                      // alignment: AlignmentDirectional.center,
                    ),
                    Container(
                      width: 1100,
                      height: 90,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: SizedBox(
                        width: 1000,
                        height: 90,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 900,
                                height: 70,
                                padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                                child: TextField(
                                  expands: false,
                                  minLines: 1,
                                  maxLines: 1,
                                  obscureText: false,
                                  decoration: const InputDecoration(
                                    labelText: 'E-mail',
                                    hintText: 'Digite seu endereço de e-mail',
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
                                    icon: Icon(Icons.email_rounded),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1100,
                      height: 70,
                      alignment: Alignment.topCenter,
                      //padding: EdgeInsets.all(20.0),
                      child: SizedBox(
                        width: 1000,
                        height: 70,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 900,
                                height: 70,
                                padding: EdgeInsets.fromLTRB(50, 8, 50, 8),
                                child: TextField(
                                  expands: false,
                                  minLines: 1,
                                  maxLines: 1,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    labelText: 'Senha',
                                    hintText: 'Digite sua senha de acesso',
                                    hintStyle: TextStyle(color: Color.fromARGB(255, 150, 150, 150)),
                                    icon: Icon(Icons.password),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 1100.0,
                      height: 60.0,
                      alignment: Alignment.center,
                      //padding: EdgeInsets.fromLTRB(0, 0, 0, 0)5
                      child: SizedBox(
                        width: 1000.0,
                        height: 50.0,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 90.0,
                              height: 50.0,
                            ),
                            //Expanded(
                            Container(
                              width: 300,
                              height: 50.0,
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  alignment: Alignment.center,
                                  fixedSize: Size(300.0, 50),
                                  backgroundColor:
                                      Color.fromARGB(200, 100, 0, 255),
                                ),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Não tem uma conta de acesso?',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/cadastrarusuario');
                              },
                              child: Text(
                                'Crie sua conta!',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 255),
                                  fontSize: 18.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 200,
                //   width: 1000,
                //   child: Row(
                //     children: [
                //       Spacer(),
                //       TextField(
                //         decoration: const InputDecoration(
                //           labelText: 'Senha',
                //           hintText: 'Digite a sua senha',
                //           icon: Icon(Icons.email_outlined),
                //           border: OutlineInputBorder(
                //               borderRadius:
                //                   BorderRadius.all(Radius.circular(5.0)),
                //               gapPadding: 15),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // Container(
                //   height: 30,
                //   width: 300,
                //   padding: EdgeInsets.only(top: 5),
                //   child: Center(
                //     child: Row(
                //       children: [
                //         Spacer(),
                //         Text(
                //           'Não tem uma conta? ',
                //         ),
                //         InkWell(
                //           onTap: () {
                //             Navigator.pushNamed(context, '/cadastrarusuario');
                //           },
                //           child: Text(
                //             'Crie sua conta',
                //             style: TextStyle(
                //                 color: Color.fromARGB(255, 0, 0, 255)),
                //           ),
                //         ),
                //         Spacer(),
                //       ],
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
        ));
  }

  void _abrirEfetuarLoginPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EfetuarLoginPage()),
    );
  }

  void _abrirCadastrarUsuario(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CadastrarUsuarioPage()),
    );
  }
}

class RouteToCadastrarUsuario {}
