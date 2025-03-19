enum ECategoryType {
  I(label: "Introvert"),
  S(label: "Sensing"),
  T(label: "Thinking"),
  J(label: "Judging"),
  E(label: "Extrovert"),
  N(label: "Intuition"),
  F(label: "Feeling"),
  P(label: "Perceiving");

  final String label;
  const ECategoryType({required this.label});
}