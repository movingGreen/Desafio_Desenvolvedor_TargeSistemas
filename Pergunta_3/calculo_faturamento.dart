List<int> exemploFaturamento = [
  125050,
  132000,
  110075,
  145020,
  160000,
  138055,
  127030,
  150080,
  142000,
  160545,
  170030,
  155090,
  165000,
  172060,
  180020,
  134575,
  129090,
  140035,
  158070,
  175000
];
String formatarFaturamento(int valor) {
  return (valor / 100).toStringAsFixed(2);
}

void main(List<String> args) {
  /* 
    Função recebera uma lista de faturamentos por dia no formato int onde as 
    duas primeiras casas decimais são os centavos.
    Retorno definidp como [menorFaturamento, maiorFaturamento, numeroDeDiasMaiorQueMedia].
  */
  List<int> calcularFaturamento(List<int> faturamentoDiario) {
    int _menorFaturamento = faturamentoDiario.first,
        _maiorFaturamento = 0,
        _countDias = 0,
        _diasMaiorQueMedia = 0,
        _total = 0;

    double _media = 0;

    for (int faturamento in faturamentoDiario) {
      if (faturamento != 0) {
        _countDias++;
        _total += faturamento;

        if (faturamento < _menorFaturamento) {
          _menorFaturamento = faturamento;
        }
        if (faturamento > _maiorFaturamento) {
          _maiorFaturamento = faturamento;
        }
      }
    }

    _media = _countDias > 0 ? _total / _countDias : 0.0;

    for (int faturamento in faturamentoDiario) {
      if (faturamento > _media) _diasMaiorQueMedia++;
    }

    return [
      _menorFaturamento,
      _maiorFaturamento,
      _diasMaiorQueMedia,
    ];
  }
}
