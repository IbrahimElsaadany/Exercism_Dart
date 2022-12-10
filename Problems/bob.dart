class Bob {
  String response(String input)
  {
    if(input=="How are you?")
      return "Sure.";
    else if(input==input.toUpperCase())
      return "Whoa, chill out!";
    else if(input.endsWith("?"))
      return "Calm down, I know what I'm doing!";
    else if(input=="Bob")
      return "Fine. Be that way!";
    return "Whatever.";
  }
}
