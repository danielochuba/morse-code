MORSE_CODE = {
  '.-'   => 'A',   '-...' => 'B',   '-.-.' => 'C',
  '-..'  => 'D',   '.'    => 'E',   '..-.' => 'F',
  '--.'  => 'G',   '....' => 'H',   '..'   => 'I',
  '.---' => 'J',   '-.-'  => 'K',   '.-..' => 'L',
  '--'   => 'M',   '-.'   => 'N',   '---'  => 'O',
  '.--.' => 'P',   '--.-' => 'Q',   '.-.'  => 'R',
  '...'  => 'S',   '-'    => 'T',   '..-'  => 'U',
  '...-' => 'V',   '.--'  => 'W',   '-..-' => 'X',
  '-.--' => 'Y',   '--..' => 'Z'
}.freeze

def decode_char(char)
  puts MORSE_CODE[char].upcase
end

def morse_code(string)
  decoded_text = []
  words = string.split('   ')
  
  words.each do |word|
    new_word = word.split
    new_word.each do |single_word|
      value = MORSE_CODE[single_word]
      decoded_text << value if value
    end
    decoded_text << ' '
  end
  
  puts decoded_text.join
end

def decode_word(string)
  text = []
  word = string.split
  
  word.each do |char|
    MORSE_CODE.each do |key, value|
      text << value if key == char
    end
  end
  
  puts text.join
end

decode_char('-.')

morse_code('-- -.--   -. .- -- .   .. ...   -.. .- -. .. . .-..')

decode_word('-.. .- -. .. . .-..')

morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

