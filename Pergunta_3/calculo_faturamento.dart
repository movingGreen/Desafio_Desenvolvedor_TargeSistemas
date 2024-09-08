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
