main(List<String> arguments) {
  Employed emp = Employed(4, 'Lorena H');
  Employed emp2 = Employed.worked(4, 'Lorena H', false);

  emp.work();

  emp2.fulfilledSchedule() ? print('worked') : print('Not worked');

}

class Employed {
  var id;
  var name;
  var worked;

  // Employed(int id, String name) { // constructor forma larga
  //   this.id = id;
  //   this.name = name;
  //   print('Executed');
  // }

  Employed(this.id, this.name); // contructor forma corta

  Employed.worked(this.id, this.name, this.worked);

  bool fulfilledSchedule() {
    return worked;
  }

  void work() {
    print('Employed $name $worked');
  }
}
