import 'package:flutter/material.dart';
import 'package:authentication/main.dart';
import 'package:authentication/signup_page.dart';
import 'package:authentication/welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AppMixin{
  double sideMargin = 20;
  bool isPhone = true;

  void alterPage(){
    setState(() {
      isPhone = !isPhone;
      print('$isPhone');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomePage()));
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: sideMargin, right: sideMargin, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masuk Menggunakan Email atau Nomor Telepon',
              style: TextStyle(
                fontSize: 20,
                fontWeight: semi,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5 - sideMargin,
                    height: 35,
                    child: TextButton(
                      onPressed: () {
                        if(!isPhone){
                          alterPage();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          )
                        )
                      ),
                      child: Text(
                        'Nomor Telepon',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: semi,
                          color: isPhone ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5 - sideMargin,
                    height: 35,
                    child: TextButton(
                      onPressed: () {
                        if(isPhone){
                          alterPage();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.circular(5.0),
                          )
                        )
                      ),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: semi,
                          color: !isPhone ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 6,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: isPhone ? 4.0 : 2.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100.0),
                        bottomLeft: Radius.circular(100.0),
                      ),
                      color: isPhone ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: !isPhone ? 4.0 : 2.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0),
                      ),
                      color: !isPhone ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text(
              isPhone ? 'Nomor Telepon *' : 'Email *',
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 7,),
            Container(
              height: 35.0,
              width: MediaQuery.of(context).size.width - 2*sideMargin,
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                // color: Theme.of(context).colorScheme.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  isPhone ? 'Masukkan nomor telepon' : 'Masukkan email',
                  style: TextStyle(
                    fontSize: 11,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              'Masukkan Password *',
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            SizedBox(height: 7,),
            Container(
              height: 35.0,
              width: MediaQuery.of(context).size.width - 2*sideMargin,
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).colorScheme.tertiary),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Masukkan password',
                        style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/eye_icon_unlocked.png'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Lupa password?',
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).colorScheme.primary,
                fontWeight: bold,  
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: Container(
                width: 150,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: semi,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum memiliki akun? ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
