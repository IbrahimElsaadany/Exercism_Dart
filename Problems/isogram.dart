class Isogram {
  bool isIsogram(String word)
  {
    final List<String> wordSet = word.split('');
    wordSet.removeWhere((element) => element=='-'||element==' ');
    return wordSet.length==wordSet.toSet().length;
  }
}
