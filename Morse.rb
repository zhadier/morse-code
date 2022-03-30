#!user/bin/ruby

def decode_char(str)
  comparables = {
    ".-"=> "A",
    "-..."=> "B",
    "-.-."=> "C",
    "-.."=> "D",
    "."=> "E",
    "..-."=> "F",
    "--."=> "G",
    "...."=> "H",
    ".."=> "I",
    ".---"=> "J",
    '-.-'=> 'K',
    '.-..'=> 'L',
    '--'=> 'M',
    '-.'=> 'N',
    '---'=> 'O',
    '.--.'=> 'P',
    '--.-'=> 'Q',
    '.-.'=> 'R',
    '...'=> 'S',
    '-'=> 'T',
    '..-'=> 'U',
    '...-'=> 'V',
    '.--'=> 'W',
    '-..-'=> 'X',
    '-.--'=> 'Y',
    '--..'=> 'Z'
  }
  comparables[str]
end

def decode_word (str)
  morse_array = str.split
  str_array = []
  morse_array.each {|n|
    str_array.push (decode_char n)
  }
  return str_array.join
end

puts decode_word "-- -.--"

