main(List<String> arguments) {
  Developer developer = Developer();
  developer.id = 1;
  developer.ide = 'Atom';
  developer.name = 'Daniel Sotelo';
  developer.salary = 5;

  developer.calculeSalary();
  developer.showIde();
  developer.perfectConduct();
}

class Employed {
  var id;
  var name;
  var salary;

  void calculeSalary() {
    print('Salary employed is $salary');
  }
}

class Conduct {
  void perfectConduct() {
    print('Employed perfect conduct');
  }
}

class Developer implements Employed, Conduct {
  var id = 1;
  var name = 'Pepe Jhons';
  var salary = 4;
  String ide;

  @override
  void calculeSalary() {
    print('Salary is ${salary + 1000}');
  }

  @override
  void perfectConduct() {
    print('Employed negative conduct');
  }

  void showIde() {
    print('Favorite IDE $name is $ide');
  }
}

class Admin {
  String idLocation;

  void manage() {
    print('admin location $idLocation');
  }
}
