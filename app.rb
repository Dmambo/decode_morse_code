$morse_code =  { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
                  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                  '--' => 'M', '-.' => 'N', '---' => 'O',
                  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z',
                  '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
                  '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0' }


def decode_morse(morse_code)
    return $morse_code[morse_code]
end

def decode_word(word)
    return word.split(' ').map { |morse_code| decode_morse(morse_code) }.join('')
end

def decode_sentence(sentence)
    return sentence.split('   ').map { |word| decode_word(word) }.join(' ')
end
