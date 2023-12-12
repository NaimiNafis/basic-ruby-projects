def caesar_cipher(input_string = '', key = 0)
  lowercase_string = input_string.downcase.split('')
  # [‘z’, ‘a’, ‘b’, ‘c’]

  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  alphabet_array = alphabet.split('')

  alphabet_indices = []
  shifted_string = []

  lowercase_string.each do |character|
    alphabet_array.each_with_index do |alphabet_char, index|
      if character == alphabet_char
        alphabet_indices.push(index)
        break
      end
    end
  end
  # [25, 0, 1, 2]

  shifted_indices = alphabet_indices.map do |index|
    (index + key) % alphabet.length
  end
  # [1, 2, 3, 4]

  shifted_indices.each do |index|
    shifted_string.push(alphabet_array[index])
  end
  # [‘b’, ‘c’, ‘d, ‘e’]

  p shifted_string.join
end

caesar_cipher('zabc', 2)
