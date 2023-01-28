class ResistorColorDuo {
  final List<String> colors = ["black","brown","red","orange","yellow"
                                ,"green","blue","violet","grey","white"];
  int value(List<String> inp) => int.parse("${colors.indexOf(inp[0])}${colors.indexOf(inp[1])}");
}
