//dynamic
void soma(a, b) {
  print(a + b);
}

int soma2(int a, int b) {
  return a + b;
}

int exec(int a, int b, int Function(int, int) fn) {
  return fn(a,b);
}

class Produto {
  String ?nome;
  double ?preco;
}

class Produto2 {
  String ?nome;
  double ?preco;

  Produto2(String nome, double preco) {
    this.nome = nome;
    this.preco = preco;
  }
}

class Produto3 {
  String ?nome;
  double ?preco;

  Produto3(this.nome, this.preco);
}

class Produto4 {
  String ?nome;
  double ?preco;

  Produto4({this.nome, this.preco});
}

imprimirProduto({String ?nome, double ?preco = 0.00}) {
  print("O produto ${nome} tem preço R\$${preco}");
}

main() {

  soma(2,3);

  print('O valor da soma é: ${soma2(3,5)}');

  final result = exec(2, 7, (a, b) {
    return a-b;
  });

  print('Resultado é $result');

  final r = exec(3, 5, (a, b) => a*b);

  print('Resultado é $r');

  var p1 = new Produto();
  p1.nome = 'Caderno';
  p1.preco = 15.98;

  print("O produto ${p1.nome} tem preço R\$${p1.preco}");

  var p2 = Produto2('Borracha', 4.50);

  print("O produto ${p2.nome} tem preço R\$${p2.preco}");

  var p3 = Produto3('Tessoura', 7.50);

  print("O produto ${p3.nome} tem preço R\$${p3.preco}");

  var p4 = Produto4(nome: 'Livro', preco: 31.85);

  print("O produto ${p4.nome} tem preço R\$${p4.preco}");

  imprimirProduto(nome: p4.nome, preco: p4.preco);
}