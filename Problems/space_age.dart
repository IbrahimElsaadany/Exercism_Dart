class SpaceAge {
  double age({String? planet,int? seconds})
  {
    double ageEarth = seconds!/31557600;
    Function returnFunc = (double input)=> double.parse(input.toStringAsFixed(2));
    switch(planet)
    {
      case "Earth" :
        return returnFunc(ageEarth);
      case "Mercury" :
        return returnFunc(ageEarth*0.2408467);
      case "Venus" :
        return returnFunc(ageEarth*0.61519726);
      case "Mars" :
        return returnFunc(ageEarth*1.8808158);
      case "Jupiter" :
        return returnFunc(ageEarth*11.862615);
      case "Saturn" :
        return returnFunc(ageEarth*29.447498);
      case "Uranus" :
        return returnFunc(ageEarth*84.016846);
      case "Neptune" :
        return returnFunc(ageEarth*164.79132);
    }
    return 0;
  }
}
