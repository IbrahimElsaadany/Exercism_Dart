Map complement = {"G":"C","C":"G","T":"A","A":"U"};
class RnaTranscription {
  String toRna(String DNA) => DNA.split('').map((e)=>complement[e]).join('');
}
