main(List<String> arguments) {
  Developer developer = Developer();
  developer.id = 1;
  developer.ide = 'Atom';
  developer.name = 'Daniel Sotelo';
  developer.salary = 5;

  developer.calculeSalary();
  developer.showIde();
  developer.activity();

  Admin admin = Admin();
  admin.id = 3;
  admin.name = 'Lorena H';
  admin.idLocation = 'North';
  admin.salary = 5;

  admin.manage();
  admin.activity();
  admin.calculeSalary();
}

abstract class Employed {
  var id;
  var name;
  var salary;

  void calculeSalary() {
    print('Salary is $salary');
  }

  void activity();
}

class Developer extends Employed {
  String ide;

  void showIde() {
    print('Favorite IDE $name is $ide');
  }

  @override
  void activity() {
    print('Programming');
  }
}

class Admin extends Employed {
  String idLocation;

  void manage() {
    print('admin location $idLocation');
  }

  @override
  void activity() {
    print('Manage and andmin locations');
  }

  // sobreescribir metodo de la clase padre
  @override
  void calculeSalary() {
    print('Salary is ${salary + 1000}');
  }
}
