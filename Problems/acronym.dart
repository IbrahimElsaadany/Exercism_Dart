class Acronym {
  String abbreviate(String word) => RegExp(r"(?<=[- ]|^)\w").allMatches(word).map((e)
                                =>e.group(0)!.toUpperCase()).join('');
}
