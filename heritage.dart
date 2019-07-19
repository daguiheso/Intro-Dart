main(List<String> arguments) {
  Developer developer = Developer();
  developer.id = 3;
  developer.name = 'Daniel';
  developer.ide = 'VsCode';
  developer.money = 6;

  developer.calculeMoney();
  developer.showIde();
}

class Employed {
  var id;
  var name;
  double money;

  void calculeMoney() {
    print('Have salary of ${money * 5.5}');
  }
}

class Developer extends Employed {
  String ide;

  void showIde() {
    print('Favorite IDE $name is $ide');
  }
}

class Admin {
  String idLocation;

  void manage() {
    print('admin location');
  }
}
