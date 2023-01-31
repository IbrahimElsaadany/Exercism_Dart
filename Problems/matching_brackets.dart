class MatchingBrackets {
  bool isPaired(String string)
  {
    string = string.replaceAll(RegExp(r"[^\{\}\[\]\(\)]"), '');
    final RegExp regex = RegExp(r"\{\}|\[\]|\(\)");
    while(string.contains(regex))
      string = string.replaceAll(regex,'');
    return string.isEmpty;
  }
}
