require 'pry-byebug'

def caesar_cipher(input_string = '', key = 0)
  string = input_string.split('')

  alphabet_lower = 'abcdefghijklmnopqrstuvwxyz'.split("")
  alphabet_upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split("")

  encrypted_string = []

  string.each do |char|
    if alphabet_upper.include?(char)
      alphabet_upper.each_with_index do |upper_char, index|
        if char == upper_char
          new_index = (index + key) % alphabet_upper.length
          encrypted_string.push(alphabet_upper[new_index])
          break
        end
      end
    elsif alphabet_lower.include?(char)
      alphabet_lower.each_with_index do |lower_char, index|
        if char == lower_char
          new_index = (index + key) % alphabet_lower.length
          encrypted_string.push(alphabet_lower[new_index])
          break
        end
      end
    elsif char == " "
      encrypted_string.push(" ")
    end
  end


  p encrypted_string.join
end

caesar_cipher('Zabc m', 2)
