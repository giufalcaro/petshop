class Loja {
  final String nome;
  final String descricao;
  final String imagem;
  final String? imagemBanner;

  const Loja(
      {required this.nome,
      required this.descricao,
      required this.imagem,
      this.imagemBanner});
}
