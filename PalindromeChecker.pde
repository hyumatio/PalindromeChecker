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
 String banana = new String();
 banana= noSpaces(word);
 banana = noCapitals(banana);
 
  
  if(reverse(word).equals(word))
  return true;
  
  return false;
}
public String reverse(String str)
{
    String s = "";
  int last = str.length() - 1;
   for(int i = last; i >=0; i--)
    s = s+ str.substring(i,i+1);
    
  return s;
}

public String noSpaces(String sWord){
  String hola = new String();
  for(int i =0; i <sWord.length(); i++){
  if(Character.isLetter(sWord.charAt(i))){
   hola=hola+sWord.charAt(i);
  }
  }
  
  return hola;

}
public String noCapitals(String sWord){
  String hola2= new String();
  hola2= sWord.toLowerCase();
  return hola2;
}
