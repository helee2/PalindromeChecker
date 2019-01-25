public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (onlyLetters(noSpaces((word))).toLowerCase().equals(onlyLetters(noSpaces((reverse(word)))).toLowerCase()))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = 0; i < str.length(); i++)
    {
      sNew = sNew + str.substring(str.length() - i - 1, str.length() - i);
    }
    return sNew;
}

public String noSpaces(String sWord)
{
  String str = "";
  for (int i = 0; i < sWord.length(); i++)
  {
    if (Character.isLetter(sWord.charAt(i)) == true)
      str = str + sWord.substring(i,i+1);
  }
  return str;
}

public String onlyLetters(String sString)
{
  String str = "";
  for (int i = 0; i < sString.length(); i++)
  {
    if (Character.isLetter(sString.charAt(i)) == true)
      str = str + sString.charAt(i);
  }
  return str;
}
