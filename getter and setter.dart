import 'employed.dart';

main(List<String> arguments) {
  Employed emp = Employed();
  emp.name = 'Pedro';
  emp.hours = 35;

  print('worked ${emp.hours} days');
}
