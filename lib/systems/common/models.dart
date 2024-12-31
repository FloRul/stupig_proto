enum Rarity {
  common(0, 'common'),
  uncommon(1, 'uncommon'),
  rare(2, 'rare'),
  epic(3, 'epic'),
  legendary(4, 'legendary');

  final int number;
  final String name;

  const Rarity(this.number, this.name);

  static Rarity fromString(String name) {
    return Rarity.values.firstWhere((e) => e.name == name);
  }
}
