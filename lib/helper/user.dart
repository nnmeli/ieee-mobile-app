class User{
  late int _id;
  late String _name;
  late String _surname;
  late String _mail;
  late String _telNum;
  late String _sClass;
  late String _department;
  late String _committee;
  late String _school;
  late int _getAuth;
  static bool isLogin = false;


  User(this._name, this._surname, this._mail, this._telNum, this._sClass,
      this._department, this._committee, this._school);

  static void register(){

  }

  static void login(mail, password){
    if (true){
      isLogin = true;
    }else{
      isLogin = false;
    }
  }

  static void logout(){
    isLogin = false;
  }

  static bool isLog(){
    return isLogin;
  }

  int get id => _id;
  set id(int value) {
    _id = value;
  }

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String get surname => _surname;
  set surname(String value) {
    _surname = value;
  }

  String get mail => _mail;
  set mail(String value) {
    _mail = value;
  }

  String get telNum => _telNum;
  set telNum(String value) {
    _telNum = value;
  }

  String get sClass => _sClass;
  set sClass(String value) {
    _sClass = value;
  }

  String get department => _department;
  set department(String value) {
    _department = value;
  }

  String get committee => _committee;
  set committee(String value) {
    _committee = value;
  }

  String get school => _school;
  set school(String value) {
    _school = value;
  }

  int get getAuth => _getAuth;
  set getAuth(int value) {
    _getAuth = value;
  }

}