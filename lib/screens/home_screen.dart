import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool lightMode = true;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> names = ["Mohamed", "Ahmed", "Hassan", "Mai"];
  List<Color> colors = [Colors.red, Colors.amber, Colors.blue, Colors.green];
  bool isHidden = true;
  TextEditingController passwordController = TextEditingController();
  Color passColor = Colors.black;
  String? password;
  String? email;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: lightMode ? Colors.white : Colors.grey[900],
        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/dw-burnett-pcoty22-8260-1671143390.jpg?crop=0.668xw:1.00xh;0.184xw,0&resize=640:*'),
                  ),
                  accountName: Text("Abdelrahman"), 
                  accountEmail: Text("abdo@gmail.com"),
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),             
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Mens"),
                  leading: Icon(Icons.person),             
                  onTap: (){},
                ),
                ListTile(
                  title: Text("Ladies"),
                  leading: Icon(Icons.shopping_bag),             
                  onTap: (){},
                ),
                Spacer(),
                ListTile(
                  title: Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.red
                    ),
                  ),
                  leading: Icon(Icons.logout, color: Colors.red,),             
                  onTap: (){},
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Facebook', style: TextStyle(),),
          //leading: Icon(Icons.home),
          backgroundColor: Colors.green[700],
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    onSaved: (value){
                      email = value;
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter your email";
                      }
                      else if(!value.contains("@")){
                        return "Invalid email format";
                      }
                      else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      //hintText: 'email',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: passColor
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: passColor
                        )
                      ),
                      errorBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.red
                        )
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.red
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    onChanged: (value){},
                    onSaved: (value){
                      password = value;
                    },
                    validator: (value){
                      if(value!.isEmpty){
                        return "Enter your password";
                      }
                      else if(value.length < 8){
                        return "Weak password";
                      }
                      else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.text,
                    obscureText: isHidden,
                    decoration: InputDecoration(
                      //hintText: 'email',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(isHidden? Icons.visibility_off : Icons.visibility),
                      ),
                      enabledBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: passColor
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: passColor
                        )
                      ),
                      errorBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.red
                        )
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        //borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.red
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        bool valid = formKey.currentState!.validate();
                        if(valid){
                          formKey.currentState!.save();
                          print(email);
                          print(password);
                        }
                      }, 
                      child: Text("Login"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          onPressed: (){
            print(passwordController.text);
            passwordController.clear();
          },
          label: Text("Add"),
          icon: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40)
          ),
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      );
  }
}