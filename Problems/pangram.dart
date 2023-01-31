class Pangram {
  bool isPangram(String text) => RegExp("[a-z]").allMatches(text).toList().map((e)=>e.group(0)??''.toLowerCase()).toSet().length==27;
}
