import 'dart:io';

void main(){
  final Map<String, String> morse = {
  ' ' : ' ',
  'a' : '.-',
  'b' : '-...',
  'c' : '-.-.',
  'd' : '-..',
  'e' : '.',
  'f' : '..-.',
  'g' : '--.-',
  'h' : '....',
  'i' : '..',
  'j' : '.---',
  'k' : '-.-',
  'l' : '.-..',
  'm' : '--',
  'n' : '-.',
  'o' : '---',
  'p' : '.--.',
  'q' : '--.-',
  'r' : '.-,',
  's' : '...',
  't' : '-',
  'u' : '..-',
  'v' : '...-',
  'w' : '.--',
  'x' : '-..-',
  'y' : '-.--',
  'z' : '--..',
  '1' : '.----',
  '2' : '..---',
  '3' : '...--',
  '4' : '....-',
  '5' : '....',
  '6' : '-....',
  '7' : '--...',
  '8' : '---..',
  '9' : '----.',
  '0' : '-----',
  };


  print("enter your message:");

  String? message = stdin.readLineSync()!;
  List<String> result = [];
  int messagel = message.length;
  if(messagel >= 200){
    print("Your message is too long");
    return;
  }

  message.runes.forEach((int rune) {
    var char = new String.fromCharCode(rune);
    //print(morse[char]);
    result.add(morse[char.toLowerCase()]!);
   });
  print(result.join("  "));
  }
