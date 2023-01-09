main() {
  print("Hello World!");

  var frase = "Tipagem por inferência";

  print(frase is String);

  var listaNomes = ['Ana', 'Carlos', 'João'];

  listaNomes.add('José');

  print(listaNomes.length);
  print(listaNomes.elementAt(0));

  var conjunto = {0,1,2,3,4,5,5,5,6,6,7};

  print(conjunto.length); //Repetidos são desconsiderados

  print(conjunto is Set);

  Set<int> conjunto2 = {0,1,2,3,4,5,5,5,6,6,7};

  Map<String, double> notasAlunos = {
    'José': 9.7,
    'Carlos': 8.9,
    'Pedro': 9.0
  };

  for(var chave in notasAlunos.keys) {
    print('chave = $chave');
  }

  for(var registro in notasAlunos.entries) {
    print('${registro.key} = ${registro.value}');
  } 

  dynamic x = 'Teste';
  x = 123;
  x = false;

  const x2 = 5;

}