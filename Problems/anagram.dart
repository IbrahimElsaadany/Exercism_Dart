class Anagram {
  Set findAnagrams(String target,List<String> candidates)
  {
    Set targetSet = target.toLowerCase().split('').toSet();
    return candidates.where((e) => e.toLowerCase()!=target.toLowerCase() && targetSet.union(e.toLowerCase().split('').toSet()).length==targetSet.length).toSet();
  }
}
