
import java.util.Arrays;
 String s="Hello, I am nine syllables long. And it is great!";
 String st=s.toLowerCase();
 String[] a;
 String vowels= "AaEeIiOoUuYy";
void setup(){
 
  String st=s.toLowerCase();
  a=st.split("\\W+");
  println(Arrays.toString(a));
  println(countWords(a));
  println(countVowels(st));
  println(countSentences(st));
  println(countSyllablesHelper());
}
int countWords(String[] arr){
  return arr.length;
}
int countVowels(String s){
  int count =0;
  for(int i=0;i<s.length();i++){
    if(s.charAt(i)=='a'||s.charAt(i)=='e'||s.charAt(i)=='i'||s.charAt(i)=='o'||s.charAt(i)=='u'||s.charAt(i)=='y'){
    count++;
    }
  }
  return count;
}
int countSentences(String s){
  int count=0;
  for(int i=0;i<s.length();i++){
    if(s.charAt(i)=='.'||s.charAt(i)=='!'||s.charAt(i)=='?'){
      count++;
    }
  }
  return count;
}

public int countSyllablesHelper() {
    String text= s.toLowerCase();
    int countSyll=0;
    String [] words = text.split("[\\,!\\s.]+");
    for (String s : words) {
      countSyll+=countSyllables(s);
    }
    return countSyll;
  }
  private int countSyllables(String word) {
    int numSyll = 0;
    boolean newSyll = true;
    char[] charArray = word.toCharArray();//each word into an array

    for (int i = 0; i < charArray.length; i++) {
      if ((i == charArray.length-1 && charArray[i] == 'e') && (newSyll) && (numSyll > 0)) {
        numSyll--;//for words like the, make, etc.
      } 

      if (newSyll && vowels.indexOf(charArray[i]) >= 0) {//look for vowels
        newSyll = false;
        numSyll++;
      } else if (vowels.indexOf(charArray[i]) < 0) {//if no vowels, count as one syll
        newSyll = true;
      }
    }
    return numSyll;
  }
