import 'package:flutter/material.dart';

import '../helper/helper.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {



  final _signupFormKey = GlobalKey<FormState>();
  String? name;
  String? lName;
  String? mail;
  String? telNo;
  String? department;
  String? committee;
  String? psw;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff00609c),
        body: SingleChildScrollView(
          child: Form(
            key: _signupFormKey,
            child: Column(
              children: [
                const PageHeader(),
                Container(
                  decoration: const BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20),),
                  ),
                  child: Column(
                    children: [
                      const PageHeading(title: 'Kayıt Ol',),
                      SizedBox(
                        width: 130,
                        height: 130,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade200,

                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 5,
                                right: 5,
                                child: GestureDetector(
                                  onTap:(){},
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.shade400,
                                      border: Border.all(color: Colors.white, width: 3),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Icon(
                                      Icons.camera_alt_sharp,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16,),
                      CustomInputField(
                          labelText: 'İsim',
                          hintText: 'İsminizi Giriniz',
                          isDense: true,
                          onSaved: (textValue){
                            name = textValue!;
                          },
                          validator: (textValue) {
                            if(textValue == null || textValue.isEmpty) {
                              return 'İsim Girmek Zorunludur!';
                            }
                            return null;
                          }
                      ),
                      const SizedBox(height: 16,),
                      CustomInputField(
                          labelText: 'Email',
                          hintText: 'Email Giriniz',
                          isDense: true,
                          onSaved: (textValue){
                            mail = textValue!;
                          },
                          validator: (textValue) {
                            if(textValue == null || textValue.isEmpty) {
                              return 'Email Girmek Zorunludur!';
                            }
                            return null;
                          }
                      ),
                      const SizedBox(height: 16,),
                      CustomInputField(
                          labelText: 'Telefon Numarası',
                          hintText: 'Telefon Numaranızı Giriniz',
                          isDense: true,
                          onSaved: (textValue){
                            telNo = textValue!;
                          },
                          validator: (textValue) {
                            if(textValue == null || textValue.isEmpty) {
                              return 'Telefon Numarası Girmek Zorunludur!';
                            }
                            return null;
                          }
                      ),
                      const SizedBox(height: 16,),
                      CustomInputField(
                        labelText: 'Şifre',
                        hintText: 'Belirlediğiniz Şifreyi Giriniz',
                        isDense: true,
                        obscureText: true,
                        onSaved: (textValue){
                          psw = textValue!;
                        },
                        validator: (textValue) {
                          if(textValue == null || textValue.isEmpty) {
                            return 'Şifre Zorunludur';
                          }
                          return null;
                        },
                        suffixIcon: true,
                      ),
                      const SizedBox(height: 16,),
                      CustomInputField(
                          labelText: 'Bölüm',
                          hintText: 'Bölümünüzü Giriniz',
                          isDense: true,
                          onSaved: (textValue){
                            department = textValue!;
                          },
                          validator: (textValue) {
                            if(textValue == null || textValue.isEmpty) {
                              return 'Bölüm Bilgisi Girmek Zorunludur!';
                            }
                            return null;
                          }
                      ),
                      const SizedBox(height: 16,),
                      CustomInputField(
                          labelText: 'Komite',
                          hintText: 'Kayıt Olduğunuz Komiteyi Giriniz',
                          isDense: true,
                          onSaved: (textValue){
                            committee = textValue!;
                          },
                          validator: (textValue) {
                            if(textValue == null || textValue.isEmpty) {
                              return 'Komite Bilgisi Girmek Zorunludur!';
                            }
                            return null;
                          }
                      ),
                      const SizedBox(height: 22,),
                      CustomFormButton(innerText: 'Kayıt Ol', onPressed: _handleSignupUser,),
                      const SizedBox(height: 18,),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Zaten Hesabınız Var Mı? ', style: TextStyle(fontSize: 13, color: Color(0xff939393), fontWeight: FontWeight.bold),),
                            GestureDetector(
                              onTap: () => {

                              },
                              child: const Text('Giriş Yapın', style: TextStyle(fontSize: 15, color: Color(0xff748288), fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleSignupUser() async {
    // signup user
    if (_signupFormKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Submitting data..')),
      );

      _signupFormKey.currentState!.save();

      // !!!!soy ad ve sınıf eklenmeli
      await Helper.register( name, " surname ", mail, telNo, " class", department, committee, psw);

    }
  }
}


class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [

        SizedBox(
          width: double.infinity,
          height: size.height * 0.1,
          child: Image.asset('lib/assets/images/ieee_white.png'),
        ),
        SizedBox(
          width: double.infinity,
          height: size.height * 0.3,
          child: Image.asset('lib/assets/images/cocuklar.png'),
        ),
      ],
    );
  }
}

class CustomFormButton extends StatelessWidget {
  final String innerText;
  final void Function()? onPressed;
  const CustomFormButton({Key? key, required this.innerText, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.yellow[700],
        borderRadius: BorderRadius.circular(26),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(innerText, style: const TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.normal),),
      ),
    );
  }
}

class PageHeading extends StatelessWidget {
  final String title;
  const PageHeading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 25),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,

        ),
      ),
    );
  }
}

class CustomInputField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? Function(String?) validator;
  final String? Function(String?) onSaved;
  final bool suffixIcon;
  final bool? isDense;
  final bool obscureText;

  const CustomInputField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.validator,
    required this.onSaved,
    this.suffixIcon = false,
    this.isDense,
    this.obscureText = false
  }) : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  //
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(widget.labelText, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          ),
          TextFormField(
            obscureText: (widget.obscureText && _obscureText),
            decoration: InputDecoration(
              isDense: (widget.isDense != null) ? widget.isDense : false,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.remove_red_eye : Icons.visibility_off_outlined,
                  color: Colors.black54,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ): null,
              suffixIconConstraints: (widget.isDense != null) ? const BoxConstraints(
                  maxHeight: 33
              ): null,
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
            onSaved: widget.onSaved,
          ),
        ],
      ),
    );
  }
}