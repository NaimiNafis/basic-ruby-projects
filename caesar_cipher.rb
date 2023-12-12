require 'pry-byebug'

def caesar_cipher(input_string = '', key = 0)
  string = input_string.split('')

  binding.pry

  alphabet_lower = ' abcdefghijklmnopqrstuvwxyz'
  alphabet_upper = ' ABCDEFGHIJKLMNOPQRSTUVWXYZ'

  alphabet_indices = []
  shifted_string = []

  string.each do |character|
    alphabet_lower.each_with_index do |alphabet_char, index|
      if character == alphabet_char
        alphabet_indices.push(index)
        break
      end
    end
    alphabet_upper.each_with_index do |alphabet_char, index|
      if character == alphabet_char
        alphabet_indices.push(index)
        break
      end
    end
  end

  binding.pry

  shifted_indices = alphabet_indices.map do |index|
    (index + key) % alphabet_lower.length
  end

  binding.pry

  shifted_indices.each do |index|
    shifted_string.push(alphabet_array[index])
  end

  p shifted_string.join
end

caesar_cipher('Zabc m', 2)
