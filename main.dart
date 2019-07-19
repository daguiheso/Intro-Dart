main(List<String> arguments) {
  var valInt = 0;
  double valDouble = 2.2356;
  String valString = 'hola mundo';
  bool valBool = true;

  print(valInt);
  print(valDouble);
  print(valString);
  print(valBool);

  List<String> list;
  list = ['rosas', 'docs'];

  print(list);

  list.add('que');
  print(list);

  // list.removeLast();
  print(list);

  List<String> listAux = ['1', 'dos'];
  list.addAll(listAux);
  print(list);

  Set<String> set;

  set = {'lorena', 'daniel', 'david'};
  print(set);

  set.add('pepe');
  print(set);

  set.remove('lorena');
  print(set);
  set.add('lorena');
  print(set);

  Map<int, dynamic> map;
  map = {1: 'Rojo', 2: 'Verde'};

  print(map);
  map[3] = 'Azul';
  map[4] = 'Rosa';
  print(map);

  map.remove(1);
  print(map);

  final String name = 'Daniel H';
  print(name);

  functionArrow(3, 9);
  int result = functionArrowReturn(3, 13);
  print(result);

  list.forEach((vale) {
    print(vale);
  });

  void requerido(int a, int b, int c) => print('Requerido: ${a + b + c}');
  void opcional(int a, int b, [int c]) => print('Opcional: ${a + b} $c');
  void nombrados(int a, int b, {int tercero}) =>
      print('Nombrado: ${a + b + tercero}');
  void defecto(int a, int b, [int c = 100]) => print('Defecto: ${a + b} $c');

  requerido(1, 2, 3);
  opcional(1, 2);
  nombrados(1, 2, tercero: 3);
  defecto(1, 2);

  paramRequired(2, 8);
  paramsOptionalsPositioned(3);
  paramsOptionalsNamed(param2: 666, param1: 5678);

  forExterno: for (int i = 1; i <= 3; i++) {
    forInterno: for (int j = 1; j <= 3; j++) {
      // print('$i $j');
      if (i == 2 && j == 1) break forExterno;
    }
  }

  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (i == 2 && j == 1) continue;
      print('$i $j');
    }
  }
}

void functionArrow(int a, int b) => print('result is : ${a + b}');
int functionArrowReturn(int a, int b) => a + b;

void paramRequired(int a, int b) {
  print('Param 1: $a');
  print('Param 2: $b');
}

// Parametros opcionales posicionados
void paramsOptionalsPositioned(int a, [int b]) {
  print('Param 1: $a');
  print('Param 2: $b');
}

// Parametros opcionales nombrados para cuando el numero de params es muy largo
void paramsOptionalsNamed({int param1, int param2 = 5}) {
  print('Param 1: $param1');
  print('Param 2: $param2');
}
