MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.'    => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..'   => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--'  => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE[char].upcase
end

def decode_word(string)
  text = []
  word = string.split

  word.each do |char|
    decoded_char = decode_char(char)
    text << decoded_char if decoded_char
  end

  text.join
end

def morse_code(string)
  decoded_text = []
  words = string.split('   ')

  words.each do |word|
    decoded_word = decode_word(word)
    decoded_text << decoded_word if decoded_word
    decoded_text << ' '
  end

  puts decoded_text.join
end

decode_char('-.')

morse_code('-- -.--   -. .- -- .   .. ...   -.. .- -. .. . .-..')

decode_word('-.. .- -. .. . .-..')

morse_code('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
