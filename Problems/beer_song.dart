class BeerSong {
  List<String> recite(int s,int e)
  {
    List<String> outcome=[];
    while(e--!=0)
      outcome.addAll(["${statement(s)} of beer on the wall, ${statement(s)} of beer.",
      "${s!=0?"Take ${s!=1?"one":"it"} down and pass it around":"Go to the store and buy some more"}, ${statement(s!=0?--s:s=99)} of beer on the wall."]);
    return outcome;
  }
  static String statement(int number)=>
    number>=1? "$number bottle${number!=1?'s':''}":"No more bottles";
}
