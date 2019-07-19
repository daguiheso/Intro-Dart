main(List<String> arguments) {
  Employed emp = new Employed();
  emp.id = 1;
  emp.name = 'Daniel H';

  if (emp.fulfilledSchedule()) {
    emp.work();
  }

  Employed emp2 = Employed()
    ..id = 4
    ..name = 'Lorena H';

  emp2.fulfilledSchedule() ? emp2.work() : print('Not worked');
}

class Employed {
  var id;
  var name;

  Employed() {
    print('Executed');
  }

  bool fulfilledSchedule() {
    return true;
  }

  void work() {
    print('Employed $name worked');
  }
}
