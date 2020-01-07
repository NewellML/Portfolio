
import java.util.Arrays;
void setup(){
  String s="Hello, I am nine syllables long. And it is great!";
  String st=s.toLowerCase();
  String[] a=st.split("\\W+");
  println(Arrays.toString(a));
  println(countWords(a));
  println(countVowels(a));
}
int countWords(String[] arr){
  return arr.length;
}
int countVowels(String[] arr){
  int count =0;
  for(int i=0;i<arr.length;i++){
    String [] extra=arr[i].split("[^aeiouy]");
    println(Arrays.toString(extra));
    count+=extra.length;
  }
  return count;
}
