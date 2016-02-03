public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String werd = new String("");
  String werd2 = new String("");
  String werd3 = new String("");

//reverser
  for(int i = word.length()-1; i > -1; i--){
    werd = werd + word.charAt(i);
  }

  for(int i = 0; i <werd.length(); i++){

    if(! werd.substring(i, i+1).equals(" ") && Character.isLetter(werd.charAt(i)) == true){
    werd2 = werd2 + werd.substring(i, i+1);
    }
  }

//regular
  for(int i = 0; i <word.length(); i++){

    if(! word.substring(i, i+1).equals(" ") && Character.isLetter(word.charAt(i)) == true){
    werd3 = werd3 + word.substring(i, i+1);
    }
  }

if(werd2.toLowerCase().equals(werd3.toLowerCase())){
  return true;
}
  return false;
}

